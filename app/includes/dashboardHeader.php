<header>
    <a class="logo" href="<?php echo BASE_URL . '/espace_membre.php'; ?>">
        <h1 class="logo-text"><span>Pole</span>IT</h1>
    </a>
    <i class="fa fa-bars menu-toggle"></i>
    <ul class="nav">
            <li >
                <a href="<?php echo BASE_URL . '/espace_membre.php'; ?>" class="logout">Accueil</a>
            </li>
        <?php if (isset($_SESSION['username'])): ?>
            <li>
            <a href="#">
            <i class="fa fa-user"></i>
            <?php echo $_SESSION['username']; ?>
            <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          </a>
                <ul>
                    <li><a href="<?php echo BASE_URL . '/logout.php'; ?>" class="logout">deconnexion</a></li>
                </ul>
            </li>
        <?php endif; ?>
    </ul>
</header>