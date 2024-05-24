<?php

include(ROOT_PATH . "/app/database/db.php");
include(ROOT_PATH . "/app/helpers/middleware.php");
include(ROOT_PATH . "/app/helpers/validateUser.php");

// Nom de la table dans la base de données
$table = 'messages';
// Sélection de tous les utilisateurs pour la gestion des administrateurs
$admin_m = selectAll($table);
// $user_account = selectMe($table);

// Initialisation des variables
$errors = array();
$id = '';
$pseudo = '';
$email = '';
$message = '';

// Récupération des données d'un utilisateur pour la modification
if (isset($_GET['edit_id'])) {
    $sel = selectOne($table, ['id' => $_GET['edit_id']]);
    $id = $sel['id'];
    $pseudo = $sel['pseudo'];
    $email = $sel['email'];
    $message = $sel['message'];
}


// Gestion de la suppression d'un utilisateur (administrateur uniquement)
if (isset($_GET['delete_id'])) {
     adminOnly();
    $count = delete($table, $_GET['delete_id']);
    $_SESSION['message'] = 'message supprimé';
    $_SESSION['type'] = 'success';
    header('location: ' . BASE_URL . '/admin/messages/index.php');
    
}

if (isset($_POST['submit'])) {
            if (!empty($_POST['pseudo']) && !empty($_POST['email']) && !empty($_POST['message'])){
            createMessage($table, ['pseudo' => $_POST['pseudo'], 'email' => $_POST['email'], 'message' => $_POST['message']]);
            $_SESSION['message'] = 'message envoyé';
            $_SESSION['type'] = 'success';
        }else{
            $_SESSION['message'] = 'vous avez oublier de renseigner des informations de contact';
            $_SESSION['type'] = 'error';
        }
}
