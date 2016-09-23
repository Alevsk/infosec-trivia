<?php
	ini_set('file_uploads', 'On');
	ini_set('post_max_size', '64M');
	ini_set('upload_max_filesize', '64M');

	require 'lib/rb.php';
	R::setup('mysql:host=127.0.0.1;dbname=hacking_club','root','');

	define("DOMAIN","http://localhost/happy-hacking/");
	define("DS","/");

	$handle = fopen("trivia.tsv", "r");
	if ($handle) {
	    while (($line = fgets($handle)) !== false) {
	        echo $line;
	        $q = explode("\t", $line);
	       	
	        $qu = R::dispense( 'questions' );
    		$qu->question = $q[0];
	        $id = R::store( $qu );

	        for($i = 1; $i <= 4; $i++) {
	        	$a = R::dispense( 'answers' );
    			$a->question_id = $id;
    			$a->answer = ucfirst($q[$i]);
    			$a->correct = ($i == 1) ? 1 : 0;	
	        	$aid = R::store( $a );
	        }

	        print_r($q);
	    }

	    fclose($handle);
	} else {
	    // error opening the file.
	} 