// Substitua esta parte com a inicialização do mapa usando Leaflet e a busca por estádios próximos ao usuário.
// Inicializar o mapa
var map = L.map('map').setView([-23.5505, -46.6333], 13); // Ajuste as coordenadas e o zoom conforme necessário

// Adicionar camada do mapa
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
  attribution: '© OpenStreetMap contributors'
}).addTo(map);

// Adicionar marcador ao centro do mapa (opcional)
L.marker([-23.5505, -46.6333]).addTo(map)
  .bindPopup('Seu Marcador Aqui')
  .openPopup();



// Substitua a seção de marcadores no seu_script.js com o seguinte código

// Adicionar marcadores dinâmicos do servidor
/*fetch('dados_do_mapa.php')
    .then(response => response.json())
    .then(data => {
        data.forEach(marker => {
            L.marker([marker.lat, marker.lng]).addTo(map)
                .bindPopup(marker.popup);
        });
    })
    .catch(error => console.error('Erro ao obter dados do servidor:', error));*/


// Exemplo de função para buscar estádios por liga
function searchByLeague(league) {
  // Lógica para buscar estádios por liga e atualizar o mapa
  console.log(`Buscando estádios na liga: ${league}`);
}
