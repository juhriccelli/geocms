<?php
//include("config.php");

if (isset($_GET["competicao"])) {
	$competicao = $_GET["competicao"];
}

?>

<!DOCTYPE html>
<html>
<script>
var lat = "<?php print $lat; ?>"
var long = "<?php print $long; ?>"
</script>
<body>
	<div id='mapa' style="width: 100%; height: 100%;">
		<script src="assets/js/main.js">
			L.marker(lat, long);
		</script>
	</div>
</body>

</html>
