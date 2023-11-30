<?php
// Configurações do banco de dados (substitua pelos seus próprios dados)
$host = 'seu_host';
$db = 'sua_base_de_dados';
$user = 'seu_usuario';
$pass = 'sua_senha';

// Conecta ao banco de dados
try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Erro na conexão com o banco de dados: " . $e->getMessage());
}

// Consulta os dados dos clubes
$query = "SELECT id, nome, latitude, longitude FROM clubes";
$stmt = $pdo->prepare($query);
$stmt->execute();
$clubes = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Envia os dados como JSON para o JavaScript
header('Content-Type: application/json');
echo json_encode($clubes);
?>
