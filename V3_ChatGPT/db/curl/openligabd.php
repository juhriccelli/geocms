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

// Conecte-se ao seu banco de dados (substitua pelos seus detalhes de conexão)
$pdo = new PDO('mysql:host=seu_host;dbname=sua_base_de_dados', 'seu_usuario', 'sua_senha');

// Chave da API OpenLigaDB (substitua pela sua chave)
$openLigaDBApiKey = 'sua_chave_da_api_openligadb';

try {
    // Obter dados de clubes da OpenLigaDB API
    $clubesUrl = "https://www.openligadb.de/api/v2/clubs?apiKey={$openLigaDBApiKey}";
    $clubesData = makeRequest($clubesUrl);

    // Inserir dados na tabela de clubes
    foreach ($clubesData['data'] as $clube) {
        $sql = 'INSERT INTO clubes (id, nome, cidade_id, estadio_id) VALUES (:id, :nome, :cidade_id, :estadio_id)';
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $clube['ClubId']);
        $stmt->bindParam(':nome', $clube['ClubName']);
        $stmt->bindParam(':cidade_id', $clube['CityId']);
        $stmt->bindParam(':estadio_id', $clube['StadiumId']);
        $stmt->execute();
    }

    // Obter dados de estádios da OpenLigaDB API
    $estadiosUrl = "https://www.openligadb.de/api/v2/stadiums?apiKey={$openLigaDBApiKey}";
    $estadiosData = makeRequest($estadiosUrl);

    // Inserir dados na tabela de estádios
    foreach ($estadiosData['data'] as $estadio) {
        $sql = 'INSERT INTO estadios (id, nome, cidade_id, endereco) VALUES (:id, :nome, :cidade_id, :endereco)';
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':id', $estadio['StadiumId']);
        $stmt->bindParam(':nome', $estadio['StadiumName']);
        $stmt->bindParam(':cidade_id', $estadio['CityId']);
        $stmt->bindParam(':endereco', $estadio['Address']);
        $stmt->execute();
    }

    echo 'Dados de clubes e estádios inseridos com sucesso!';
} catch (PDOException $e) {
    echo 'Erro no banco de dados: ' . $e->getMessage();
} catch (Exception $e) {
    echo 'Erro: ' . $e->getMessage();
}
?>
