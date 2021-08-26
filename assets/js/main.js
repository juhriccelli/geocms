var map = L.map('mapa').setView([0, 0], 2);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

var icone = L.icon({
    iconUrl: 'assets/img/paises/ad.png',
    iconSize: [40, 40]
});

L.marker([34.0430175, -118.2694428], {icon: icone}).addTo(map);
