<?php

$dsn = 'mysql:dbname=camagru;host=camagru-mysql';
$user = 'root';
$password = '123456';

try {
    $dbh = new PDO($dsn, $user, $password);
    echo "Connecté à la base de donnée <b>" . $dsn . "</b>, bravo !";
} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
}

?>