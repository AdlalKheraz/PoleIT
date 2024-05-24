<?php include("../path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/posts.php");
usersOnly();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    
    <link rel="stylesheet" href="../assets/css/admin.css">

    <title>user Section - Dashboard</title>
</head>

<body>

    <?php include(ROOT_PATH . "/app/includes/dashboardHeader.php"); ?>

    <div class="admin-wrapper">
        <?php include(ROOT_PATH . "/app/includes/userSidebar.php"); ?>


        <div class="admin-content">

            <div class="content">

                <h2 class="page-title">accout</h2>

                <?php include(ROOT_PATH . '/app/includes/messages.php'); ?>


            </div>

        </div>

    </div>

    <script src="../assets/js/scripts.js"></script>

</body>

</html>