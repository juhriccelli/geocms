document.addEventListener('DOMContentLoaded', function() {

  var hortolandia = [-22.8577, -47.2203];
  //var coordenada = [-47.062928299999996, -22.902798];


  navigator.geolocation.getCurrentPosition(function(position) {
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    var coordenada = [latitude, + longitude]
    console.log(coordenada);
    console.log(hortolandia);
  });

  var map = L.map('map').setView(coordenada, 15);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

});
