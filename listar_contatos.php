<?php

$con = new PDO("mysql:host=localhost;dbname=estetica_beleza_simples;charset=utf8", 
"root", ""); 

$sql = "select * from contatos order by id desc";
$qry = $con->prepare($sql);
$qry->execute();

$registros = $qry->fetchAll(PDO::FETCH_OBJ);
echo json_encode($registros);
