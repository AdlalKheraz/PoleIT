<?php

// $host = 'mysql';
// $user = 'root';
// $pass = 'root';
// $db_name = 'blog';

$host = getenv('DB_HOST');
$user = getenv('DB_USER');
$pass = getenv('DB_PASSWORD');
$db_name = getenv('DB_NAME');

$conn = new mysqli($host, $user, $pass, $db_name);


if ($conn->connect_error) {
    die('Database connection error: ' . $conn->connect_error);
}


