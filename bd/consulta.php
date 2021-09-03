<?php
include_once("conectarBD.php");

if (isset($_GET["competicao"])) {
    $competicao = $_GET["competicao"];
}

echo $competicao;

foreach ($conexao->query("SELECT * FROM nba") as $linha) {
  $resultado[] = $linha;
  file_put_contents('locais.json', json_encode($resultado));
}
?>
