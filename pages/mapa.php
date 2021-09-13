<?php
include_once("../bd/conectarBD.php");

if (isset($_GET["competicao"])) {
    $competicao = $_GET["competicao"];
}

//echo $competicao;

foreach ($conexao->query("SELECT * FROM nba") as $linha) {
  $resultado[] = $linha;
  file_put_contents('../assets/js/locais.json', json_encode($resultado));
}

?>

<!DOCTYPE html>
<html>


<body>
  <div id='mapa' style="width: 100%; height: 100%;">
  </div>

</body>

</html>
