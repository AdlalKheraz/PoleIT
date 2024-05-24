<?php

include(ROOT_PATH . "/app/database/db.php");
include(ROOT_PATH . "/app/helpers/middleware.php");
include(ROOT_PATH . "/app/helpers/validatePost.php");
require(ROOT_PATH . "/app/includes/emojisPorvider.php");

// Nom de la table dans la base de données
$table = 'posts';

// Récupération de tous les sujets et de tous les articles
$topics = selectAll('topics');
$posts = selectAll($table);

// Initialisation des variables
$errors = array();
$id = "";
$title = "";
$body = "";
$topic_id = "";
$published = "";

// Récupération des données d'un article pour la modification
if (isset($_GET['id'])) {
    $post = selectOne($table, ['id' => $_GET['id']]);

    $id = $post['id'];
    $title = $post['title'];
    $body = $post['body'];
    $topic_id = $post['topic_id'];
    $published = $post['published'];
}

// Gestion de la suppression d'un article
if (isset($_GET['delete_id'])) {
    $count = delete($table, $_GET['delete_id']);
    $_SESSION['message'] = "Article supprimé avec succès";
    $_SESSION['type'] = "success";
    header("location: " . BASE_URL . "/user/posts/index.php");
    exit();
}

// Gestion du changement d'état de publication d'un article
if (isset($_GET['published']) && isset($_GET['p_id'])) {

    $published = $_GET['published'];
    $p_id = $_GET['p_id'];
    $count = update($table, $p_id, ['published' => $published]);
    $_SESSION['message'] = "État de publication de l'article modifié avec succès !";
    $_SESSION['type'] = "success";
    header("location: " . BASE_URL . "/user/posts/index.php");
    exit();
}

// Gestion de l'ajout d'un article
if (isset($_POST['add-post'])) {
    $errors = validatePost($_POST);
    // Traitement de l'image associée à l'article
    if (!empty($_FILES['image']['name'])) {
        $image_name = time() . '_' . $_FILES['image']['name'];
        $destination = ROOT_PATH . "/assets/images/" . $image_name;

        $result = move_uploaded_file($_FILES['image']['tmp_name'], $destination);

        if ($result) {
            $_POST['image'] = $image_name;
        } else {
            array_push($errors, "Échec du téléchargement de l'image");
        }
    } else {
        array_push($errors, "Image de l'article requise");
    }

    // Ajout de l'article dans la base de données
    if (count($errors) == 0) {
        unset($_POST['add-post']);
        $_POST['user_id'] = $_SESSION['id'];
        $_POST['published'] = isset($_POST['published']) ? 1 : 0;
        $_POST['body'] = htmlentities($_POST['body']);
        //speciale imoji
        $_POST['body'] = str_replace($code_imo, $imo, $_POST['body']);

        $post_id = create($table, $_POST);
        $_SESSION['message'] = "Article créé avec succès";
        $_SESSION['type'] = "success";
        header("location: " . BASE_URL . "/user/posts/index.php");
        exit();
    } else {
        $title = $_POST['title'];
        $body = $_POST['body'];
        $topic_id = $_POST['topic_id'];
        $published = isset($_POST['published']) ? 1 : 0;
    }
}

// Gestion de la mise à jour d'un article
if (isset($_POST['update-post'])) {
    $errors = validatePost($_POST);
    // Traitement de l'image associée à l'article
    if (!empty($_FILES['image']['name'])) {
        $image_name = time() . '_' . $_FILES['image']['name'];
        $destination = ROOT_PATH . "/assets/images/" . $image_name;

        $result = move_uploaded_file($_FILES['image']['tmp_name'], $destination);

        if ($result) {
            $_POST['image'] = $image_name;
        } else {
            array_push($errors, "Échec du téléchargement de l'image");
        }
    } else {
        array_push($errors, "Image de l'article requise");
    }

    // Mise à jour de l'article dans la base de données
    if (count($errors) == 0) {
        $id = $_POST['id'];
        unset($_POST['update-post'], $_POST['id']);
        $_POST['user_id'] = $_SESSION['id'];
        $_POST['published'] = isset($_POST['published']) ? 1 : 0;
        $_POST['body'] = htmlentities($_POST['body']);

        $post_id = update($table, $id, $_POST);
        $_SESSION['message'] = "Article mis à jour avec succès";
        $_SESSION['type'] = "success";
        header("location: " . BASE_URL . "/user/posts/index.php");
    } else {
        $title = $_POST['title'];
        $body = $_POST['body'];
        $topic_id = $_POST['topic_id'];
        $published = isset($_POST['published']) ? 1 : 0;
    }
}
