<?php
include_once("../bd/conectarBD.php");

if (isset($_GET["competicao"])) {
    $competicao = $_GET["competicao"];
}

//echo $competicao;

foreach ($conexao->query("SELECT * FROM nba") as $linha) {
  $resultado[] = $linha;
  //file_put_contents('../assets/js/locais.json', json_encode($resultado));
}

?>
