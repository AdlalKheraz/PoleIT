<?php include('path.php'); ?>
<?php include(ROOT_PATH . "/app/controllers/users.php");
guestsOnly();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <link rel="stylesheet" href="assets/css/style.css">


  <title>Login</title>
</head>

<body>

  <?php include(ROOT_PATH . "/app/includes/logHeader.php"); ?>
  <div class="auth-content">
    <form action="login.php" method="post">
      <h2 class="form-title">Authentification</h2>

      <?php include(ROOT_PATH . "/app/helpers/formErrors.php"); ?>

      <div>
        <label>nom d'utilisateur</label>
        <input type="text" name="username" value="<?php echo $username; ?>" class="text-input">
      </div>
      <div>
        <label>Mot de passe</label>
        <input type="password" name="password" value="<?php echo $password; ?>" class="text-input">
      </div>
      <div>
        <button type="submit" name="login-btn" class="btn btn-big">Connexion</button>
      </div>
      <p>Ou <a href="<?php echo BASE_URL . '/register.php' ?>">Inscription</a></p>
    </form>
  </div>

  <script src="assets/js/scripts.js"></script>

</body>
</html>