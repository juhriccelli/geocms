<?php

  //Conectar o banco de dados
  $servername = "localhost";
  $username = "root";
  $password = "";
  $database = "geocms";


  $conexao = mysqli_connect($servername, $username, $password, $database);
  $conexao->set_charset("utf8");


 ?>
