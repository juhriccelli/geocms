<?php
//include("config.php");

if (isset($_GET["competicao"])) {
	$competicao = $_GET["competicao"];
}

/*$brk = [40.6826465, -73.9754156];
$lks = [34.0430175, -118.2694428];*/

$lat = 40.6826465;
$long = -73.9754156;

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
