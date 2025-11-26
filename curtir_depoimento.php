<?php

$id = $_GET['id'];

$con = new PDO("mysql:host=localhost;dbname=estetica_beleza_simples;charset=utf8", 
"root", ""); 

$sql = "update depoimentos set curtidas = curtidas + 1 where id = :id";
$qry = $con->prepare($sql);
$qry->bindParam(":id", $id, PDO::PARAM_INT);
$qry->execute();
