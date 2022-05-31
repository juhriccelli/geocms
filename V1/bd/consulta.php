<?php
header('Content-Type: application/json');
include_once("conectarBD.php");


if (isset($_GET["competicao"])) {
    $competicao = $_GET["competicao"];
}

$sql = "SELECT * FROM ".$competicao;


foreach ($conexao->query($sql) as $linha) {
  $resultado[] = $linha;
}

echo json_encode($resultado, JSON_PRETTY_PRINT);

?>
