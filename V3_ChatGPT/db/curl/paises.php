<?php
// Função para fazer solicitações HTTP usando cURL
function makeRequest($url) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    curl_close($ch);
    return json_decode($response, true);
}

// Função para inserir dados na tabela de países
function insertCountries($countries, $pdo) {
    foreach ($countries as $country) {
        $sql = 'INSERT INTO paises (id, nome) VALUES (:id, :nome)';
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $country['geonameid']);
        $stmt->bindParam(':nome', $country['display_name']);
        $stmt->execute();
    }
}

// Função para inserir dados na tabela de estados
function insertStates($states, $pdo) {
    foreach ($states as $state) {
        $sql = 'INSERT INTO estados (id, nome, pais_id) VALUES (:id, :nome, :pais_id)';
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $state['geonameid']);
        $stmt->bindParam(':nome', $state['display_name']);
        $stmt->bindParam(':pais_id', $state['country']);
        $stmt->execute();
    }
}

// Função para inserir dados na tabela de cidades
function insertCities($cities, $pdo) {
    foreach ($cities as $city) {
        $sql = 'INSERT INTO cidades (id, nome, pais_id, estado_id) VALUES (:id, :nome, :pais_id, :estado_id)';
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $city['geonameid']);
        $stmt->bindParam(':nome', $city['display_name']);
        $stmt->bindParam(':pais_id', $city['country']);
        $stmt->bindParam(':estado_id', $city['state']);
        $stmt->execute();
    }
}

try {
    // Conecte-se ao seu banco de dados (substitua pelos seus detalhes de conexão)
    $pdo = new PDO('mysql:host=localhost;dbname=geoarena', 'root', ' ');

    // Obter dados de países
    $countriesUrl = "https://nominatim.openstreetmap.org/search?countrycodes=&format=json&limit=1000";
    $countriesData = makeRequest($countriesUrl);
    insertCountries($countriesData, $pdo);

    // Obter dados de estados (por exemplo, do Brasil - substitua pelo país desejado)
    $statesUrl = "https://nominatim.openstreetmap.org/search?country=Brazil&format=json&limit=1000&feature=administrative";
    $statesData = makeRequest($statesUrl);
    insertStates($statesData, $pdo);

    // Obter dados de cidades (por exemplo, do Brasil - substitua pelo país desejado)
    $citiesUrl = "https://nominatim.openstreetmap.org/search?country=Brazil&format=json&limit=1000";
    $citiesData = makeRequest($citiesUrl);
    insertCities($citiesData, $pdo);

    echo 'Dados dos países, estados e cidades inseridos com sucesso!';
} catch (PDOException $e) {
    echo 'Erro no banco de dados: ' . $e->getMessage();
} catch (Exception $e) {
    echo 'Erro: ' . $e->getMessage();
}
?>
