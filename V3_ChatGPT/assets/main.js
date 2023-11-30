$(document).ready(function() {
    // Função para inicializar o mapa e exibir os clubes
    function initMap(clubes, userLocation) {
        // Verifica se a localização do usuário está disponível
        if (userLocation) {
            // Inicializa o mapa centrado na localização do usuário
            var map = L.map('map').setView([userLocation.latitude, userLocation.longitude], 10);
        } else {
            // Caso a localização do usuário não esteja disponível, usa uma localização padrão
            var map = L.map('map').setView([0, 0], 10);
        }

        // Use um provedor de mapas como OpenStreetMap
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);

        // Adicione marcadores para os clubes
        clubes.forEach(function(clube) {
            L.marker([clube.latitude, clube.longitude]).addTo(map)
                .bindPopup(clube.nome);
        }
        );
    }

    // Exemplo de requisição AJAX usando jQuery para buscar dados dos clubes e a localização do usuário
    $.when(
        $.ajax({
            url: 'get_clubs.php',
            method: 'GET',
            dataType: 'json'
        }),
        getUserLocation()
    ).done(function (clubes, userLocation) {
        // Chama a função para inicializar o mapa
        initMap(clubes[0], userLocation);
    }).fail(function (error) {
        console.error('Erro ao obter dados dos clubes ou a localização do usuário:', error);
    });

    // Função para obter a localização do usuário
    function getUserLocation() {
        return new Promise(function(resolve, reject) {
            if ("geolocation" in navigator) {
                navigator.geolocation.getCurrentPosition(
                    function(position) {
                        // Retorna as coordenadas do usuário
                        resolve({
                            latitude: position.coords.latitude,
                            longitude: position.coords.longitude
                        });
                    },
                    function(error) {
                        // Em caso de erro, retorna null
                        resolve(null);
                    }
                );
            } else {
                // Retorna null se a geolocalização não for suportada
                resolve(null);
            }
        });
    }
});
