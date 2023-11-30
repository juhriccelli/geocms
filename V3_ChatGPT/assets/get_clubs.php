<?php
class Club {
    public $nome;
    public $latitude;
    public $longitude;

    public function __construct($nome, $latitude, $longitude) {
        $this->nome = $nome;
        $this->latitude = $latitude;
        $this->longitude = $longitude;
    }
}

// Função para retornar dados fictícios de clubes
function getClubesTeste() {
    return [
        new Club('Estádio do Morumbi', -23.563128, -46.652246),
        // Adicione mais clubes de teste conforme necessário
    ];
}

// Verifica se a requisição é uma chamada AJAX
if ($_SERVER['HTTP_X_REQUESTED_WITH'] === 'XMLHttpRequest') {
    // Simula um pequeno atraso para simular uma chamada assíncrona
    sleep(1);

    // Obtém a localização do usuário (para simulação)
    $userLocation = isset($_COOKIE['userLocation'])
        ? json_decode($_COOKIE['userLocation'], true)
        : null;

    // Obtém dados de clubes (utiliza a classe de teste)
    $clubes = getClubesTeste();

    // Retorna os dados como JSON
    header('Content-Type: application/json');
    echo json_encode(['clubes' => $clubes, 'userLocation' => $userLocation]);
} else {
    // Página acessada diretamente, redireciona para o index.html
    header('Location: index.html');
}
?>
