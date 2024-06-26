<?php
include("path.php");
include(ROOT_PATH . "/app/controllers/messages.php");
$posts = getPublishedPosts();
?>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <link rel="stylesheet" href="assets/css/style.css">

  <title>PoleIT de Valenciennes</title>
</head>
<body>
    
    <!-- Navigation -->

    <?php include(ROOT_PATH . "/app/includes/indexHeader.php"); ?>

    <!-- Accueil -->
    
    <div class="accueil" id="home">
      
        <h1>Découvrez le PoleIT de Valenciennes</h1>

        <a href="#activite" class="btn-accueil">En savoir plus</a>
    </div>
    <!-- Section Asymétrique -->

    <section class="section-asymetrique" id="activite">

        <h2>Quelle  sont nos activites ?</h2>

        <div class="bloc bloc-left bloc-1">
            <div class="bloc-txt-left">
                <h3>Visitez notre observatoire</h3>
                <p> POLE-IT a un observatoire technologique  est situé  à environ 20 km de universite de Valenciennes a pour but d'observer les événements terrestres ou de les prévoir comme les événements climatiques ou météréologiques, Nous proposons  des observations publiques régulières  gratuites toute au long de anneé  et des animations pédagogiques </p>
                <button class="btn-bloc-left">En savoir plus</button>
            </div>
        </div>
        <img src="ressources/observatoire.jpg" alt="enfant avec telescopes" class="img-grid img-grid-1">

        <div class="bloc bloc-right bloc-2">
            <div class="bloc-txt-right">
                <h3>Visitez notre plannearium</h3>
                <p> Situé au cœur de Valenciennes, le Planétarium de POLE-IT vous invite à un voyage extraordinaire à travers les étoiles. 
                    Sous la voûte céleste de notre dôme numérique, vous découvrirez les secrets de l'univers et serez émerveillés par la beauté cosmique 
                    qui nous entoure.Nos spectacles immersifs et captivants, réalisés avec des technologies de pointe, vous transporteront dans les confins 
                    de l'univers. Vous voyagerez à travers les galaxies lointaines </p>
                <button>En savoir plus</button>
            </div>
        </div>
        <img src="ressources/planetarium.jpg" alt="spherique-du-planetarium" class="img-grid img-grid-2">

        <div class="bloc bloc-left bloc-3">
            <div class="bloc-txt-left">
                <h3>Des revues et des animations</h3>
                <p> Que vous soyez un astronome amateur passionné ou que vous découvriez l'astronomie pour la première fois, notre équipe pédagogique vous propose des  revue et des animations adaptées à tous les âges. Ateliers, 
                    conférences et observations célestes vous permettront d'approfondir vos connaissances et de développer votre curiosité pour l'univers.</p>
                <button class="btn-bloc-left">En savoir plus</button>
            </div>
        </div>
        <img src="ressources/animations-planet.png" alt="revu et autre publication" class="img-grid img-grid-3">


    </section>


    <!-- Section parallax -->

    <section class="parallax">
        <p>🚀</p>
        <span>Partez à l'aventure</span>
    </section>

    

    <section class="section-description" id="qsn">
    <h2>Qui sommes-nous ?</h2>
    <div class="content-section">
        <div class="text-container">
            <p>POLE-IT est une entreprise spécialisée dans l'astronomie. Nous possédons un observatoire à la pointe de la technologie et un planétarium.</p>
            <h3>Nos services</h3>
            <ul>
                <li><strong>Observations publiques</strong>: Nous proposons des observations publiques régulières et gratuites à des dates précises, permettant au public de découvrir l'univers fascinant de l'observation terrestre.</li>
                <li><strong>Animations pédagogiques</strong>: Nous organisons des animations pédagogiques pour tous les âges, afin de sensibiliser aux enjeux de la surveillance et de la prévision des événements terrestres.</li>
                <li><strong>Prestations sur mesure</strong>: Nous proposons également des prestations sur mesure aux entreprises et aux organisations qui souhaitent bénéficier de notre expertise en observation et en prévision terrestre.</li>
            </ul>
            <h3>Nos atouts</h3>
            <ul>
                <li><strong>Technologie de pointe</strong>: Nous disposons d'une technologie de pointe pour collecter et analyser les données avec précision.</li>
                <li><strong>Expertise scientifique</strong>: Notre équipe est composée de scientifiques et d'ingénieurs expérimentés dans le domaine de l'observation terrestre.</li>
                <li><strong>Engagement pédagogique</strong>: Nous sommes passionnés par la transmission de nos connaissances et par la sensibilisation aux enjeux environnementaux.</li>
            </ul>
        </div>
        <div class="image-container">
            <img src="ressources/POLE-IT.png" alt="Description de l'image">
        </div>
    </div>
</section>

    <!-- Section articles  -->

    <section class="section-articles" id="ma">
    <div class="post-slider">
      <h1 class="slider-title">Trending Posts</h1>
      <i class="fas fa-chevron-left prev"></i>
      <i class="fas fa-chevron-right next"></i>

      <div class="post-wrapper">

        <?php foreach ($posts as $post): ?>
          <div class="post">
            <img src="<?php echo BASE_URL . '/assets/images/' . $post['image']; ?>" alt="" class="slider-image">
            <div class="post-info">
                <?php if (isset($_SESSION['id'])) { ?>
                    <h4><a href="single.php?id=<?php echo $post['id']; ?>"><?php echo $post['title']; ?></a></h4>
              <?php } else { ?>
                <h4><?php echo $post['title']; ?></h4>
              <?php } ?>
              <i class="far fa-user"> <?php echo $post['username']; ?></i>
              &nbsp;
              <i class="far fa-calendar"> <?php echo date('F j, Y', strtotime($post['created_at'])); ?></i>
            </div>
          </div>
        <?php endforeach; ?>


      </div>

    </div>


    </section> 



    <!-- Section Contact -->

    <section class="section-contact" id="contact">

        <h2><strong>Rentrons</strong> en contact 👽</h2>

        <div class="container-form">
            <?php include(ROOT_PATH . "/app/includes/messages.php"); ?>
            <form action="index.php" method="POST" class="form-bloc">
                
                <div class="form-groupe">
                    <label for="pseudo">Entrez votre pseudo</label>
                    <input type="text" name="pseudo" placeholder="pseudo" required id="pseudo">
                </div>

                <div class="form-groupe">
                    <label for="email">Entrez votre e-mail</label>
                    <input type="email"  name="email"  placeholder="email" required id="email">
                </div>

                <div class="form-groupe">
                    <textarea  id="txt" name="message" placeholder="Votre message" required></textarea>
                </div>

                <div class="form-groupe">
                    <input type="submit" name="submit" value="ENVOYER" class="button-sub">
                </div>

            </form>
        </div>

    </section>

    <footer>
        Tous Droits Réservés par PoleIT de Valecniennes  &copy;
    </footer>


  <!-- JQuery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- Slick Carousel -->
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

  <!-- Custom Script -->
  <script src="assets/js/scripts.js"></script>
</body>
</html>
