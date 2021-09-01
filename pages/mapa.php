<?php
include_once("../bd/conectarBD.php");

if (isset($_GET["competicao"])) {
	$competicao = $_GET["competicao"];
}

?>

<!DOCTYPE html>
<html>

<body>
	<div id='mapa' style="width: 100%; height: 100%;">
		<?php
				foreach ($conexao->query("SELECT * FROM nba") as $linha) {
					echo "<tr>";
					echo "<td>{$linha['clube']}</td>";
					echo "<td>{$linha['arena']}</td>";
					echo "<td>{$linha['latitude']}</td>";
					echo "<td>{$linha['longitude']}</td>";
					echo "</tr>";
					echo "<br />";
				}
			?>
	</div>
</body>

</html>
