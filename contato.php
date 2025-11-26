<?php

$nome = $_GET['nome'];
$telefone = $_GET['telefone'];
$email = $_GET['email'];
$mensagem = $_GET['mensagem'];

$con = new PDO("mysql:host=localhost;dbname=estetica_beleza_simples;charset=utf8", 
"root", ""); 

$sql = "insert into contatos (nome, telefone, email, mensagem) 
        values (:nome, :telefone, :email, :mensagem)";
$qry = $con->prepare($sql);
$qry->bindParam(":nome", $nome, PDO::PARAM_STR);
$qry->bindParam(":telefone", $telefone, PDO::PARAM_STR);
$qry->bindParam(":email", $email, PDO::PARAM_STR);
$qry->bindParam(":mensagem", $mensagem, PDO::PARAM_STR);
$qry->execute();
