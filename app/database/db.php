<?php


session_start();

require('connect.php');



// Fonction pour exécuter une requête avec des déclarations préparées
function executeQuery($sql, $data)
{
    global $conn;

    // Préparation de la requête
    $stmt = $conn->prepare($sql);

    // Obtention des valeurs et types à lier à la requête
    $values = array_values($data);
    $types = str_repeat('s', count($values));

    // Liaison des valeurs à la requête
    $stmt->bind_param($types, ...$values);

    // Exécution de la requête
    $stmt->execute();

    // Retourne l'objet de requête
    return $stmt;
}

// Fonction pour sélectionner tous les enregistrements d'une table avec des conditions optionnelles
function selectAll($table, $conditions = [])
{
    global $conn;

    // Construction de la requête SELECT de base
    $sql = "SELECT * FROM $table";

    // Vérification des conditions
    if (empty($conditions)) {
        // Aucune condition, exécution de la requête sans déclaration préparée
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        // Récupération des résultats sous forme de tableau associatif
        $records = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);

        // Retourne les enregistrements
        return $records;
    } else {
        // Conditions spécifiées, construction de la partie WHERE de la requête
        $i = 0;
        foreach ($conditions as $key => $value) {
            $sql .= ($i === 0) ? " WHERE $key=?" : " AND $key=?";
            $i++;
        }

        // Exécution de la requête avec déclaration préparée
        $stmt = executeQuery($sql, $conditions);

        // Récupération des résultats sous forme de tableau associatif
        $records = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);

        // Retourne les enregistrements
        return $records;
    }
}

// Fonction pour sélectionner un enregistrement d'une table avec des conditions
function selectOne($table, $conditions)
{
    global $conn;

    // Construction de la requête SELECT de base
    $sql = "SELECT * FROM $table";

    // Construction de la partie WHERE de la requête
    $i = 0;
    foreach ($conditions as $key => $value) {
        $sql .= ($i === 0) ? " WHERE $key=?" : " AND $key=?";
        $i++;
    }

    // Limitation à un seul résultat
    $sql .= " LIMIT 1";

    // Exécution de la requête avec déclaration préparée
    $stmt = executeQuery($sql, $conditions);

    // Récupération du résultat sous forme de tableau associatif
    $records = $stmt->get_result()->fetch_assoc();

    // Retourne l'enregistrement
    return $records;
}

// Fonction pour créer un nouvel enregistrement dans une table
function create($table, $data)
{
    global $conn;

    // Construction de la requête INSERT INTO
    $sql = "INSERT INTO $table SET ";

    // Construction de la partie SET de la requête
    $i = 0;
    foreach ($data as $key => $value) {
        $sql .= ($i === 0) ? " $key=?" : ", $key=?";
        $i++;
    }

    // Exécution de la requête avec déclaration préparée
    $stmt = executeQuery($sql, $data);

    // Récupération de l'ID du nouvel enregistrement inséré
    $id = $stmt->insert_id;

    // Retourne l'ID
    return $id;
}
function createMessage($table, $data)
{
    global $conn;

    // Construction de la requête INSERT INTO
    $sql = "INSERT INTO $table SET ";

    // Construction de la partie SET de la requête
    $i = 0;
    foreach ($data as $key => $value) {
        $sql .= ($i === 0) ? " $key=?" : ", $key=?";
        $i++;
    }

    // Exécution de la requête avec déclaration préparée
    $stmt = executeQuery($sql, $data);
}

// Fonction pour mettre à jour un enregistrement dans une table
function update($table, $id, $data)
{
    global $conn;

    // Construction de la requête UPDATE
    $sql = "UPDATE $table SET ";

    // Construction de la partie SET de la requête
    $i = 0;
    foreach ($data as $key => $value) {
        $sql .= ($i === 0) ? " $key=?" : ", $key=?";
        $i++;
    }

    // Ajout de la condition WHERE pour l'ID
    $sql .= " WHERE id=?";

    // Ajout de l'ID aux données pour la déclaration préparée
    $data['id'] = $id;

    // Exécution de la requête avec déclaration préparée
    $stmt = executeQuery($sql, $data);

    // Retourne le nombre d'enregistrements affectés
    return $stmt->affected_rows;
}

// Fonction pour supprimer un enregistrement d'une table
function delete($table, $id)
{
    global $conn;

    // Construction de la requête DELETE
    $sql = "DELETE FROM $table WHERE id=?";

    // Exécution de la requête avec déclaration préparée
    $stmt = executeQuery($sql, ['id' => $id]);

    // Retourne le nombre d'enregistrements affectés
    return $stmt->affected_rows;
}
// suppression de message


// Fonction pour obtenir les articles publiés avec les informations utilisateur associées
function getPublishedPosts()
{
    global $conn;

    // Construction de la requête SELECT avec une jointure
    $sql = "SELECT p.*, u.username FROM posts AS p JOIN users AS u ON p.user_id=u.id WHERE p.published=?";

    // Exécution de la requête avec déclaration préparée
    $stmt = executeQuery($sql, ['published' => 1]);

    // Récupération des résultats sous forme de tableau associatif
    $records = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);

    // Retourne les enregistrements
    return $records;
}

// Fonction pour obtenir les articles par ID de sujet avec les informations utilisateur associées
function getPostsByTopicId($topic_id)
{
    global $conn;

    // Construction de la requête SELECT avec une jointure et une condition supplémentaire
    $sql = "SELECT p.*, u.username FROM posts AS p JOIN users AS u ON p.user_id=u.id WHERE p.published=? AND topic_id=?";

    // Exécution de la requête avec déclaration préparée
    $stmt = executeQuery($sql, ['published' => 1, 'topic_id' => $topic_id]);

    // Récupération des résultats sous forme de tableau associatif
    $records = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);

    // Retourne les enregistrements
    return $records;
}

// Fonction pour rechercher des articles en fonction d'un terme de recherche
function searchPosts($term)
{
    // Préparation du terme pour la recherche
    $match = '%' . $term . '%';

    global $conn;

    // Construction de la requête SELECT avec une jointure et des conditions de recherche
    $sql = "SELECT p.*, u.username FROM posts AS p JOIN users AS u ON p.user_id=u.id WHERE p.published=? AND (p.title LIKE ? OR p.body LIKE ?)";

    // Exécution de la requête avec déclaration préparée
    $stmt = executeQuery($sql, ['published' => 1, 'title' => $match, 'body' => $match]);

    // Récupération des résultats sous forme de tableau associatif
    $records = $stmt->get_result()->fetch_all(MYSQLI_ASSOC);

    return $records;
}
