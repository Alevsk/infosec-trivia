<?php 

  include_once "app.php";

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>Happy hacking MDC Club</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo DOMAIN; ?>css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<?php echo DOMAIN; ?>assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?php echo DOMAIN; ?>jumbotron.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<?php echo DOMAIN; ?>assets/js/ie-emulation-modes-warning.js"></script>
    <link rel="stylesheet" type="text/css" href="<?php echo DOMAIN; ?>css/datatables.min.css"/>
    <script src="<?php echo DOMAIN; ?>js/ab60f87b2b.js"></script>
    <link rel="stylesheet" href="<?php echo DOMAIN; ?>js/player/mediaelementplayer.min.css" />
    <link rel="stylesheet" href="<?php echo DOMAIN; ?>js/player/progression-player.css" />
    <link rel="stylesheet" href="<?php echo DOMAIN; ?>js/player/skin-fancy.css" />

 


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>


    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a id="pts" class="navbar-brand" href="javascript:void(0)"></a>
          <img src="<?php echo DOMAIN; ?>img/giphy.gif" width="60px"/>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><div class='timer' data-seconds-left=60></div></li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container" id="qHolder">
      </div>
    </div>




<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">¿Que tanto sabes de seguridad?</h4>
      </div>
      <div class="modal-body">
        <p style="font-size:20px;text-align:center;"><img src="<?php echo DOMAIN; ?>img/hh.PNG" /></p>
        <p style="font-size:20px;text-align:center;">Bienvenido a la trivia de conceptos de seguridad informatica, compite contra otras personas y gana algunos dulces</p>
      </div>
      <div class="modal-footer">
        <button type="button" id="startGameButton" class="btn btn-lg btn-primary">Clic para comenzar</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div id="finalModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Gracias por participar en la trivia</h4>
      </div>
      <div class="modal-body">
        <p style="font-size:20px;text-align:center;"><img src="<?php echo DOMAIN; ?>img/hh.PNG" /></p>
        <p id="finalScore" style="font-size:20px;text-align:center;">Tu puntiación fue de 0 pts</p>
      </div>
      <div class="modal-footer">
        <a type="button" href="index.php" class="btn btn-lg btn-primary">Empezar de nuevo</a>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

<div class="lmodal"><!-- Place at bottom of page --></div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<?php echo DOMAIN; ?>js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="<?php echo DOMAIN; ?>js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<?php echo DOMAIN; ?>assets/js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript" src="<?php echo DOMAIN; ?>js/datatables.min.js"></script>
    <script src="<?php echo DOMAIN; ?>js/player/mediaelement-and-player.min.js"></script>
    <script src="<?php echo DOMAIN; ?>js/jquery.simple.timer.js"></script>
    <script src="<?php echo DOMAIN; ?>js/app.js"></script>

  </body>
</html>
