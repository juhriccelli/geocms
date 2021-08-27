var map = L.map('mapa').setView([0, 0], 5);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

var icone = L.icon({
    iconUrl: 'assets/img/clubes/nba/nets.png',
    iconSize: [40, 40]
});

L.marker([lat, long], {icon: icone}).addTo(map);
