var map = L.map('mapa').setView([38, -98], 5);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
  attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

$.getJSON("bd/consulta.php?buscar=" + buscar, function(data) {
  zoom_lat = item.zoom_lat;
  zoom_long = item.zoom_long;
  zoom = item.zoom;


  //var map = L.map('mapa').setView([zoom_lat, zoom_long], zoom);
  var map = L.map('mapa').setView([-38, -98], 5);

  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);



  itens = data;
  itens.forEach(function(item) {
    lat = item.latitude;
    long = item.longitude;
    imagem = item.imagem;


    var icone = L.icon({
      iconUrl: 'assets/img/clubes/nba/' + imagem + '.png',
      iconSize: [60, 60]
    });

    L.marker([lat, long], {
      icon: icone
    }).addTo(map);



  });
});
