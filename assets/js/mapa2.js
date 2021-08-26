document.addEventListener('DOMContentLoaded', function() {

  /*navigator.geolocation.getCurrentPosition(function(position) {
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    var coordenada = [latitude, +longitude]
    console.log(coordenada);
    console.log(hortolandia);
  });*/

  var hortolandia = [-22.8577, -47.2203];
  //var coordenada = [-47.062928299999996, -22.902798];

  var map = L.map('map').setView(hortolandia, 15);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  

  var clube = L.icon({
    iconUrl: 'assets/img/paises/br.png',
    iconSize: [30, 30],
  });


  L.marker(hortolandia, {
    icon: clube
  }).addTo(map);

});
