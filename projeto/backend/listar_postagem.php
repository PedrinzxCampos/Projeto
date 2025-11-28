<?php
	include 'cors.php';
	include 'conexao.php';

if ($_SERVER["REQUEST_METHOD"] == "GET") {

	$sql = "SELECT * FROM postagem";

    $result = $connection->query($sql);

    if ($result->num_rows > 0) {
        $postagem = [];
        while ($row = $result->fetch_assoc()) {
            array_push($postagem, $row);
        }

        $response = [
            'postagem' => $postagem
        ];

    } else {
        $response = [
            'postagem' => 'Nenhum registro encontrado!'
        ];
    }

    echo json_encode($response);
	} // Fim If
?>