<?php
header('Content-Type: application/json');
include_once("conectarBD.php");

if (isset($_POST["competicao"])) {
    $competicao = (string) $_POST["competicao"];
}

$sql = "SELECT * FROM ".$competicao;


foreach ($conexao->query($sql) as $linha) {
  $resultado[] = $linha;
  echo json_encode($resultado);
}

?>
