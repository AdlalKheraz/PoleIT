<?php

// $host = getenv('DB_HOST');
// $user = getenv('DB_USER');
// $pass = getenv('DB_PASSWORD');
// $db_name = getenv('DB_NAME');

$host = 'localhost';
$user = 'root';
$pass = '';
$db_name = 'blog';

$conn = new mysqli($host, $user, $pass, $db_name);


if ($conn->connect_error) {
    die('Database connection error: ' . $conn->connect_error);
}

?>