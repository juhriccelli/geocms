document.addEventListener('DOMContentLoaded', function() {

  var hortolandia = [-47.2203, -22.8577];
  var coordenada = [-47.062928299999996, -22.902798];


  navigator.geolocation.getCurrentPosition(function(position) {
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    console.log(coordenada);
    console.log(hortolandia);
  });

  var map = new ol.Map({
    target: 'mapa',
    layers: [
      new ol.layer.Tile({
        source: new ol.source.OSM()
      })
    ],
    view: new ol.View({
      center: ol.proj.fromLonLat(hortolandia),
      zoom: 14
    })
  });

});
