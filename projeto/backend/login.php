<?php
	include 'cors.php';
	include 'conexao.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $email = $_POST["email"];
    $senha = $_POST["senha"];

	$sql = "SELECT * FROM  usuarios WHERE email = '$email' AND senha ='$senha'";

    $result = $connection->query($sql);

    if ($result->num_rows > 0) {
        $response = ['funcionarios' => 'ok'];
    } else {
        $response = ['funcionarios' => 'usuario nao encontrado'];
    }
    
    echo json_encode($response);
    exit;
}    

?>


