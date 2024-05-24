<?php

include(ROOT_PATH . "/app/database/db.php");
include(ROOT_PATH . "/app/helpers/middleware.php");
include(ROOT_PATH . "/app/helpers/validateUser.php");

// Nom de la table dans la base de données
$table = 'users';
// Sélection de tous les utilisateurs pour la gestion des administrateurs
$admin_users = selectAll($table);
// $user_account = selectMe($table);

// Initialisation des variables
$errors = array();
$id = '';
$username = '';
$admin = '';
$email = '';
$password = '';
$passwordConf = '';

// Fonction pour connecter un utilisateur et rediriger en fonction de son statut
function loginUser($user)
{
    $_SESSION['id'] = $user['id'];
    $_SESSION['username'] = $user['username'];
    $_SESSION['admin'] = $user['admin'];
    $_SESSION['message'] = 'Vous êtes maintenant connecté';
    $_SESSION['type'] = 'success';

    if (!$_SESSION['admin']) {
        header('location: ' . BASE_URL . '/user/dashboardUser.php');
    } else {
        header('location: ' . BASE_URL . '/index.php');
    }
    exit();
}



// Gestion de la mise à jour de  l'utilisateur
if (isset($_POST['update-user'])) {
    $errors = validateUser($_POST);

    if (count($errors) === 0) {
        $id = $_POST['id'];
        unset($_POST['passwordConf'], $_POST['update-user'], $_POST['id']);
        $_POST['password'] = password_hash($_POST['password'], PASSWORD_DEFAULT);

        $_POST['admin'] = isset($_POST['admin']) ? 1 : 0;
        $count = update($table, $id, $_POST);
        $_SESSION['message'] = 'utilisateur mis à jour';
        $_SESSION['type'] = 'success';
        header('location: ' . BASE_URL . '/user/users/index.php');
        exit();
    } else {
        $username = $_POST['username'];
        $admin = isset($_POST['admin']) ? 1 : 0;
        $email = $_POST['email'];
        $password = $_POST['password'];
        $passwordConf = $_POST['passwordConf'];
    }
}

// Récupération des données d'un utilisateur pour la modification
if (isset($_GET['id'])) {
    $user = selectOne($table, ['id' => $_GET['id']]);
    $id = $user['id'];
    $username = $user['username'];
    $admin = $user['admin'];
    $email = $user['email'];
}

// Gestion de la connexion d'un utilisateur
if (isset($_POST['login-btn'])) {
    $errors = validateLogin($_POST);

    if (count($errors) === 0) {
        $user = selectOne($table, ['username' => $_POST['username']]);

        if ($user && password_verify($_POST['password'], $user['password'])) {
            loginUser($user);
        } else {
            array_push($errors, 'Identifiants incorrects');
        }
    }

    $username = $_POST['username'];
    $password = $_POST['password'];
}

// Gestion de la suppression d'un utilisateur 
if (isset($_GET['delete_id'])) {
    $count = delete($table, $_GET['delete_id']);
    $_SESSION['message'] = 'utilisateur supprimé';
    $_SESSION['type'] = 'success';
    header('location: ' . BASE_URL . '/logout.php');
    exit();
}
