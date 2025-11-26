<?php

$nome = $_GET['nome_depoimento'];
$avaliacao = $_GET['avaliacao'];
$mensagem = $_GET['mensagem_depoimento'];

$con = new PDO("mysql:host=localhost;dbname=estetica_beleza_simples;charset=utf8", 
"root", ""); 

$sql = "insert into depoimentos (nome, avaliacao, mensagem) 
        values (:nome, :avaliacao, :mensagem)";
$qry = $con->prepare($sql);
$qry->bindParam(":nome", $nome, PDO::PARAM_STR);
$qry->bindParam(":avaliacao", $avaliacao, PDO::PARAM_INT);
$qry->bindParam(":mensagem", $mensagem, PDO::PARAM_STR);
$qry->execute();
