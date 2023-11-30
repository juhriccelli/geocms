<?php
// Exemplo de dados dinâmicos (substitua por seus próprios dados)
$dados_do_mapa = array(
    array('lat' => -23.5505, 'lng' => -46.6333, 'popup' => 'Marcador Dinâmico 1'),
    array('lat' => -23.555, 'lng' => -46.64, 'popup' => 'Marcador Dinâmico 2'),
    // Adicione mais marcadores conforme necessário
);

// Saída em formato JSON
echo json_encode($dados_do_mapa);
?>
