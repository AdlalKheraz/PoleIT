<?php include("../../path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/messages.php");
adminOnly();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <!-- Custom Styling -->
    <link rel="stylesheet" href="../../assets/css/style.css">

    <!-- Admin Styling -->
    <link rel="stylesheet" href="../../assets/css/admin.css">

    <title>Admin Section -  Messages</title>
</head>

<body>

<?php include(ROOT_PATH . "/app/includes/dashboardHeader.php"); ?>

    <!-- Admin Page Wrapper -->
    <div class="admin-wrapper">

        <?php include(ROOT_PATH . "/app/includes/adminSidebar.php"); ?>


        <!-- Admin Content -->
        <div class="admin-content">
            <div class="button-group">
                <a href="index.php" class="btn btn-big">Manage Messages</a>
            </div>


            <div class="content">

                <h2 class="page-title">Messages</h2>
                    <div>
                        <label>pseudo</label>
                        <input type="text" name="pseudo" value="<?php echo $pseudo; ?>" class="text-input">
                    </div>
                    <div>
                        <label>Email</label>
                        <input type="email" name="email" value="<?php echo $email; ?>" class="text-input">
                    </div>
                    <div>
                        <label>message</label>
                        <textarea  name="message"   class="text-input"><?php echo $message; ?></textarea>
                    </div>
                    <div>
                    </div>

            </div>

        </div>
        <!-- // Admin Content -->

    </div>
    <!-- // Page Wrapper -->


    <!-- Custom Script -->
    <script src="../../assets/js/scripts.js"></script>

</body>

</html>