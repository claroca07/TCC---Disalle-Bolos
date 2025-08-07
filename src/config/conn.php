<?php
const DBDRIVE = "mysql";
const DBHOST = "localhost";
const DBNAME = "disalle";
const DBUSER = "root";
const DBPASS = "";

try {
    $conn = new PDO(DBDRIVE . ":host=" . DBHOST . ";dbname=" . DBNAME, DBUSER, DBPASS);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Conexão falhou: " . $e->getMessage();
}
?>
