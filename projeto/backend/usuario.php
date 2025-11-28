<?php
	include 'cors.php';
	include 'conexao.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    

    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $senha = $_POST["senha"];
    $confirmar_senha = $_POST["confirmar_senha"];

	$sql = "INSERT INTO usuarios (nome, email, senha) VALUES ('$nome', '$email','$senha')";

    $result = $connection->query($sql);

    
 

    $response = ['funcionarios' => 'inserido com sucesso'];
echo json_encode($response);
exit;

	} 
 

?>


