<?php
//Inserir o CSS e o Javascript
include_once('assets/nav.php');
?>

<div id="map" class="map"></div>
<script type="text/javascript">
  var map = new ol.Map({
    target: 'map',
    layers: [
      new ol.layer.Tile({
        source: new ol.source.OSM()
      })
    ],
    view: new ol.View({
      center: ol.proj.fromLonLat([37.41, 8.82]),
      zoom: 4
    })
  });
</script>
