<?php
	ini_set('file_uploads', 'On');
	ini_set('post_max_size', '64M');
	ini_set('upload_max_filesize', '64M');

	require 'lib/rb.php';
	R::setup('mysql:host=127.0.0.1;
        dbname=hacking_club','root','');

	define("DOMAIN","http://localhost/happy-hacking/");
	define("DS","/");

	function getQuestionWithAnswers() {
		$q = R::getRow( 'SELECT * FROM questions ORDER BY rand() LIMIT 1', array());		
		$a = R::getAll( 'SELECT id,answer FROM answers WHERE question_id = :id ORDER BY rand()', array(':id' => $q['id']));

		$response['Question'] = $q['question'];
		$response['Answers'] = $a;

		return $response;
	}

	function checkAnswer($id) {
		$a = R::findOne( 'answers','id = ?', array($id));
		$response['Answer'] = "";
		
		if($a['correct'])
			$response['Answer'] = "yes";
		else
			$response['Answer'] = "no";


		return $response;
	}


	if(isset($_GET['cmd'])) {

		header('Content-Type: application/json');
		
		switch($_GET['cmd']) {
			case 'getQuestion':
				echo json_encode(getQuestionWithAnswers());
			break;

			case 'checkAnswer':
				echo (isset($_GET['id'])) ? json_encode(checkAnswer($_GET['id'])) : json_encode(array('Answer' => 'no'));
			break;

			default:
		}
	}

?>