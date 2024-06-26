<header>
    <a href="<?php echo BASE_URL . '/index.php' ?>" class="logo">
      <h1 class="logo-text"><span>Pole</span>IT</h1>
    </a>
    <i class="fa fa-bars menu-toggle"></i>
    <ul class="nav" id="nav">
                      <li><a href="#home">Accueil</a></li>
                      <li><a href="#activite">Activite</a></li>
                      <li><a href="#qsn">A propos</a></li>
                      <li><a href="#ma">Articles</a></li>
                      <li><a href="#contact">Contact</a></li>

      <?php if (isset($_SESSION['id'])) { ?>
        <li>
              <a href="<?php echo BASE_URL . '/espace_membre.php' ?>">Blog</a>
            </li>
            <li>
          <a href="#">
            <i class="fa fa-user"></i>
            <?php echo $_SESSION['username']; ?>
            <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          </a>
          <ul>

            <?php if($_SESSION['admin']){ ?>

              <li><a href="<?php echo BASE_URL . '/admin/dashboard.php' ?>">Dashboard</a></li>

            <?php } elseif (!$_SESSION['admin']) { ?>

              <li><a href="<?php echo BASE_URL . '/user/dashboardUser.php' ?>">gestion des posts</a></li>

              <?php } ?>

            <li><a href="<?php echo BASE_URL . '/logout.php' ?>" class="logout">Logout</a></li>
          </ul>
        </li>
        </li>
        <?php } else { ?>
            <li ><a href="<?php echo BASE_URL . '/login.php' ?>">Connexion</a></li>
        <?php } ?>
    </ul>
</header>