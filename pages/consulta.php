<?php
header('Content-Type: application/json');
include_once("../bd/conectarBD.php");

if (isset($_GET["competicao"])) {
    $competicao = $_GET["competicao"];
}

$sql = "SELECT * FROM ".$competicao;

foreach ($conexao->query($sql) as $linha) {
  $resultado[] = $linha;
  //file_put_contents('../assets/js/locais.json', json_encode($resultado));
}

echo json_encode($resultado);


?>
