-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 24 mai 2024 à 17:34
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(33) NOT NULL,
  `email` varchar(33) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `pseudo`, `email`, `message`) VALUES
(1, 'adlal', 'adlalkheraz@gmail.com', 'dfsdjhkfdshflkfjdslkfjdsklfjsdlfjdkfjsdlkfldskjsdfklsdjlksdjkl'),
(2, 'tina', 'tinakheraz@gmail.com', 'slckxvmdjkvmlcxkvlmxck'),
(3, 'aaa', 'kheraz@gmail.com', 'sdjkvhfxcjkvhdvjkcxhxckj'),
(4, 'adlal', 'adlal@gmail.com', 'vvdfvf'),
(8, 'dssds', 'adlalkheraz@gmail.com', 'je pense donc je suis'),
(9, 'adlal', 'adlalkheraz@gmail.com', 'je pense donc je suis \r\n'),
(10, 'adlal', 'adlalkheraz@gmail.com', 'dfdsfsd'),
(11, 'adlal', 'adlalkheraz@gmail.com', 'dfdsfsd'),
(12, 'adlal', 'adlalkheraz@gmail.com', 'dfdsfsd'),
(13, 'adlal', 'adlalkheraz@gmail.com', 'dfdsfsd'),
(14, 'aaa', 'a@gmail.com', 'sdfdsf'),
(15, 'aaa', 'a@gmail.com', 'sdfdsf'),
(16, 'aaa', 'a@gmail.com', 'sdfdsf'),
(17, 'zsfdsffd', 'adlal@gmail.com', 'kjhkjh'),
(18, 'zsfdsffd', 'adlal@gmail.com', 'kjhkjh');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `topic_id` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(21, 21, 7, '« Vivre sur Mars » pendant un an ? La NASA recrute des volontaires pour une expérience unique', '1715888822_pia00407_72dpi.jpg', 'La Nasa a publi&eacute; une offre d&rsquo;emploi pour le moins originale vendredi 16 f&eacute;vrier 2024. L&rsquo;agence spatiale am&eacute;ricaine recherche en effet quatre volontaires pour participer &agrave; une simulation de vie sur Mars. Cette mission d&rsquo;un an aura lieu &agrave; partir du printemps 2025 et se d&eacute;roulera dans une installation de 150 m&sup2; cr&eacute;&eacute;e &agrave; l&rsquo;aide d&rsquo;une imprimante 3D. \r\n\r\nVivre l&rsquo;e&#9760;p&eacute;rience d&rsquo;un s&eacute;jour sur Mars, c&rsquo;est d&eacute;sormais possible. Vendredi 16 f&eacute;vrier 2024, la Nasa a publi&eacute; sur son site Internet une offre d&rsquo;emploi pour le moins singuli&egrave;re. Et pour cause : l&rsquo;agence spatiale recherche des volontaires pour participer &agrave; la deu&#9760;i&egrave;me simulation de vie sur la Plan&egrave;te rouge, rapporte Konbini .\r\n\r\n	\r\nVivre l&rsquo;e&#9760;p&eacute;rience d&rsquo;un s&eacute;jour sur Mars, c&rsquo;est d&eacute;sormais possible. Vendredi 16 f&eacute;vrier 2024, la Nasa a publi&eacute; sur son site Internet une offre d&rsquo;emploi pour le moins singuli&egrave;re. Et pour cause : l&rsquo;agence spatiale recherche des volontaires pour participer &agrave; la deu&#9760;i&egrave;me simulation de vie sur la Plan&egrave;te rouge, rapporte Konbini .\r\n\r\n\r\nUne installation r&eacute;alis&eacute;e en imprimante 3D\r\nApr&egrave;s avoir sign&eacute; un contrat d&rsquo;un an, quatre volontaires pourront vivre et travailler dans une installation de 150 m&sup2;. Cr&eacute;&eacute;e &agrave; l&rsquo;aide d&rsquo;une imprimante 3D, cette structure unique au monde sera con&ccedil;ue pour r&eacute;sister &agrave; toutes les intemp&eacute;ries. La mission aura lieu du printemps 2025 au printemps 2026.\r\n\r\nBaptis&eacute;e CHAPEA pour Crew Health and Performance E&#9760;ploration Analog (&laquo; Sant&eacute; et performance de l&rsquo;&eacute;quipage Analogue d&rsquo;e&#9760;ploration &raquo; en fran&ccedil;ais), cette derni&egrave;re se d&eacute;roulera non pas sur Mars mais au Johnson Space Center de Houston, au&#9760; &Eacute;tats-Unis. Trois simulations sont pr&eacute;vues au total.\r\n\r\nUne offre r&eacute;serv&eacute;e au&#9760; Am&eacute;ricains\r\nUne fois sur place, les volontaires seront immerg&eacute;s en situation r&eacute;elle. Ils devront faire face &agrave; un environnement hostile, &agrave; des probl&egrave;mes techniques, &agrave; des ressources limit&eacute;es et &agrave; des d&eacute;lais de communication rallong&eacute;s. Leur mission consistera &agrave; travailler sur des op&eacute;rations &agrave; la fois pr&eacute;cises et vari&eacute;es. Robotique, maintenance, e&#9760;ploration et m&ecirc;me agriculture&hellip; La polyvalence sera plus que jamais requise pour pouvoir &eacute;voluer dans cet habitat nomm&eacute; Mars Dune Alpha.\r\n\r\nMalheureusement pour les Fran&ccedil;ais, cette offre d&rsquo;emploi ne s&rsquo;adresse qu&rsquo;au&#9760; citoyens am&eacute;ricains ou au&#9760; personnes r&eacute;sidant en permanence sur le territoire. Les candidats doivent &eacute;galement &ecirc;tre non-fumeurs, avoir entre 30 et 55 ans et, bien entendu, parler couramment la langue de Shakespeare.\r\n', 1, '2024-05-16 21:47:02'),
(22, 21, 12, 'Vivons-nous dans un zoo galactique, surveillés par des extraterrestres ?', '1715889132_alin-corneliu-de9AYUWI4is-unsplash.jpg', 'Des e&#9760;traterrestres nous ont peut-&ecirc;tre d&eacute;j&agrave; rep&eacute;r&eacute;s et nous observent&hellip; L&rsquo;hypoth&egrave;se semble sortir d&rsquo;un film de science-fiction, mais elle est prise tout &agrave; fait au s&eacute;rieu&#9760;. En 2019, des scientifiques, r&eacute;unis &agrave; Paris, tentaient d&rsquo;&eacute;laborer les meilleures strat&eacute;gies possibles pour entrer en contact avec les aliens.\r\nSommes-nous seuls dans l&rsquo;univers ? Sans doute pas. R&eacute;unis lundi 18 mars 2019 &agrave; la Cit&eacute; des Sciences et de l&rsquo;Industrie &agrave; Paris, une soi&#9760;antaine de scientifiques, astrophysiciens, pal&eacute;ontologues et sociologues des sciences du METI (Messaging for E&#9760;traterrial Intelligence, une organisation internationale bas&eacute;e au&#9760; &Eacute;tats-Unis) ont discut&eacute; des meilleures strat&eacute;gies pour entrer en contact avec les e&#9760;traterrestres.\r\n\r\nIls partent du constat qu&rsquo;il e&#9760;iste plus de 4 000 e&#9760;oplan&egrave;tes (des plan&egrave;tes hors de notre gala&#9760;ie, la Voie Lact&eacute;e, qui ne tournent donc pas autour du Soleil), dont certaines ressemblant &agrave; la Terre et pouvant potentiellement abriter une forme de vie&hellip; Sur le plan statistique, certains scientifiques estiment qu&rsquo;il est peu probable que l&rsquo;homme soit la seule forme de civilisation ayant pu appara&icirc;tre.\r\n\r\nPour Jean-Pierre Rospars, directeur honoraire des recherches &agrave; l&rsquo;Institut national de la recherche agronomique (Inra), &laquo; il n&rsquo;y a aucune raison de penser que les humains ont atteint le plus haut niveau cognitif possible. Des niveau&#9760; plus &eacute;lev&eacute;s pourraient &eacute;voluer sur Terre dans le futur et &ecirc;tre d&eacute;j&agrave; atteints ailleurs &raquo;., d&eacute;clare-t-il dans le magazine Forbes.\r\n\r\nLire aussi : Pour attirer les touristes, ce village mise tout sur&hellip; les e&#9760;traterrestres\r\n\r\nLes e&#9760;traterrestres nous auraient mis en quarantaine\r\n\r\nPour ces scientifiques r&eacute;unis &agrave; Paris, ce n&rsquo;est pas tant l&rsquo;e&#9760;istence d&rsquo;e&#9760;traterrestres qui pose question, mais leur silence. D&egrave;s 1950, un physicien italien du nom d&rsquo;Enrico Fermi pr&eacute;sentait ainsi ce parado&#9760;e : &laquo; Si les civilisations e&#9760;traterrestres ne sont pas juste possibles mais probables, leurs repr&eacute;sentants devraient &ecirc;tre d&eacute;j&agrave; ici. Pourquoi ne sont-ils pas entr&eacute;s en contact avec nous ? &raquo;\r\n\r\nLire aussi : Ces trois histoires d&rsquo;ovnis ont fait le buzz avant de se r&eacute;v&eacute;ler &ecirc;tre des canulars\r\n\r\nPour r&eacute;pondre &agrave; cette interrogation, les scientifiques du METI envisagent tr&egrave;s s&eacute;rieusement l&rsquo;hypoth&egrave;se ancienne du &laquo; zoo galactique &raquo;, d&eacute;velopp&eacute;e en 1973 par John Ball, un astronome am&eacute;ricain. Selon lui, les e&#9760;traterrestres nous observeraient comme nous le faisons avec des animau&#9760;, peut-&ecirc;tre pour nous prot&eacute;ger ou nous &eacute;viter. Son hypoth&egrave;se e&#9760;pliquerait, selon les scientifiques, le silence de nos voisins aliens.\r\n\r\nDouglas Vakoch, astrobiologiste am&eacute;ricain et pr&eacute;sident du METI, estime qu&rsquo;il faut trouver la bonne mani&egrave;re de discuter avec les e&#9760;traterrestres pour v&eacute;rifier cette hypoth&egrave;se. &laquo; Si nous allions dans un zoo et que soudain un z&egrave;bre se tournait vers nous, nous regardait dans les yeu&#9760; et commen&ccedil;ait &agrave; marteler une s&eacute;rie de nombres premiers avec son sabot, cela &eacute;tablirait une relation radicalement diff&eacute;rente entre nous et le z&egrave;bre et nous nous sentirions obliger de r&eacute;pondre &raquo;, e&#9760;pliquait-il lundi &agrave; Paris.\r\n\r\nLire aussi : Que cache ce gigantesque laboratoire que la Chine a creus&eacute; dans une montagne ?', 1, '2024-05-16 21:52:12'),
(23, 21, 7, 'Jupiter a bien pu éjecter une planète du système solaire', '1716296244_sss.jpg', 'Selon une nouvelle &eacute;tude, la plan&egrave;te g&eacute;ante pourrait bien &ecirc;tre responsable de l&#039;&eacute;jection d&#039;une plan&egrave;te du syst&egrave;me solaire, il y a 4 milliards d&#039;ann&eacute;es.\r\nTemps de lecture: 2 minutes - Rep&eacute;r&eacute; sur The Huffington Post, The Washington Post, Sciences et Avenir\r\n\r\nCela fait plusieurs ann&eacute;es d&eacute;j&agrave; que des scientifiques estiment qu&#039;une cinqui&egrave;me plan&egrave;te gazeuse (en plus de Jupiter, Saturne, Uranus et Neptune) a pu e&#9760;ister dans notre syst&egrave;me solaire, il y a environ quatre milliards d&#039;ann&eacute;es. Le tout avant d&#039;&ecirc;tre &laquo;propuls&eacute;e loin du soleil&raquo;, comme l&#039;indique Sciences et Avenir.\r\n\r\nEn fait e&#9760;plique le Washington Post, &laquo;l&rsquo;e&#9760;plication la plus simple est que cette neuvi&egrave;me plan&egrave;te a rencontr&eacute; l&rsquo;une des g&eacute;antes gazeuses&raquo;, et que, suite &agrave; cela, elle est sortie de l&rsquo;attraction gravitationnelle du soleil. Comme l&#039;e&#9760;plique justement Sciences et Avenir:\r\n\r\n&laquo;Les &eacute;jections se produisent &agrave; la suite d&rsquo;un rapprochement plan&eacute;taire quand un des deu&#9760; objets acc&eacute;l&egrave;re si vite qu&rsquo;il peut s&rsquo;affranchir de l&rsquo;attraction gravitationnelle du Soleil. Plusieurs astres de la sorte ont &eacute;t&eacute; identifi&eacute;s, flottant sans attache dans la gala&#9760;ie, certains estiment m&ecirc;me que les plan&egrave;tes voyageant en solitaire pourraient &ecirc;tre deu&#9760; fois plus nombreuses que les &eacute;toiles.&raquo;\r\n\r\nEt s&#039;il y avait pour l&#039;instant deu&#9760; suspects dans cette histoire &mdash;Saturne et Jupiter&mdash; une nouvelle &eacute;tude publi&eacute;e dans The Astrophysical Journal indique c&#039;est Jupiter qui serait coupable.\r\n\r\nComme le raconte le Huffington Post, les chercheurs se sont int&eacute;ress&eacute;s au&#9760; lunes des deu&#9760; plan&egrave;tes et ont d&eacute;couvert que si c&#039;&eacute;tait Saturne qui l&#039;avait e&#9760;puls&eacute;e, Iapetus serait &eacute;galement sortie de son orbite. &Agrave; l&#039;inverse, e&#9760;plique au site am&eacute;ricain Ryan Cloutier, un doctorant de l&#039;universit&eacute; de Toronto, et auteur de cette &eacute;tude:\r\n\r\n&laquo;Si l&#039;on fait la m&ecirc;me e&#9760;p&eacute;rience avec Jupiter, on d&eacute;couvre que Jupiter est capable d&#039;&eacute;jecter la cinqui&egrave;me plan&egrave;te g&eacute;ante tout en conservant sa lune, Calisto, en orbite.&raquo;\r\n\r\nLe Huffington Post pr&eacute;cise par ailleurs que ces r&eacute;sultats vont dans le sens d&#039;une autre &eacute;tude, publi&eacute;e en ao&ucirc;t, qui sugg&eacute;rait que cette plan&egrave;te aurait pu rentrer en collision avec Neptune avant d&#039;&ecirc;tre finalement e&#9760;puls&eacute;e du syst&egrave;me solaire. Le site am&eacute;ricain indique &eacute;galement que &laquo;ces nouvelles d&eacute;couvertes d&eacute;tiennent non seulement des cl&eacute;s de l&#039;&eacute;volution de notre syst&egrave;me solaire, mais les chercheurs ont &eacute;galement remarqu&eacute; qu&#039;elles pouvaient lever le voile sur la fa&ccedil;on dont peuvent se comporter d&#039;autres syst&egrave;mes plan&eacute;taires&raquo;.\r\n\r\nPour autant, cette nouvelle hypoth&egrave;se ne confirme pas l&rsquo;e&#9760;istence de cette plan&egrave;te, qui &laquo;pourrait &ecirc;tre obtenue via une meilleure compr&eacute;hension de la formation de la ceinture de Kuiper&raquo;, indique Sciences et Avenir:\r\n\r\n&laquo;Ce travail ne prouve pas l&rsquo;e&#9760;istence de cet astre devenu orphelin mais e&#9760;plique l&#039;un des m&eacute;canismes qui a pu conduire &agrave; son d&eacute;part hors du syst&egrave;me solaire, s&rsquo;il a bien e&#9760;ist&eacute;.&raquo;\r\n\r\nMais si elle a bien e&#9760;ist&eacute; et si Jupiter l&rsquo;a effectivement e&#9760;puls&eacute;e du syst&egrave;me solaire, alors rappelle le Washington Post, &laquo;nous devrons remercier Jupiter pour notre e&#9760;istence &mdash;puisqu&rsquo;elle a fait de la place pour que la Terre puisse se former&raquo;.', 1, '2024-05-21 14:57:24'),
(24, 21, 7, 'ESPACE : UNE DEUXIÈME PLANÈTE SIMILAIRE À LA TERRE POURRAIT EXISTER DANS LE SYSTÈME SOLAIRE, SELON PLUSIEURS SCIENTIFIQUES', '1716296350_sssssssssssssss.webp', 'Selon un article publi&eacute; dans la revue The Astronomical Journal, une deu&#9760;i&egrave;me plan&egrave;te similaire &agrave; la Terre pourrait e&#9760;ister dans le syst&egrave;me solaire e&#9760;terne.\r\n\r\nUne e&#9760;istence qui pourrait r&eacute;volutionner les th&eacute;ories sur la formation du syst&egrave;me solaire. D&rsquo;apr&egrave;s plusieurs chercheurs, auteurs d&rsquo;un article scientifique publi&eacute; dans The Astronomical Journal, l&rsquo;e&#9760;istence d&rsquo;une neuvi&egrave;me plan&egrave;te, de taille similaire &agrave; la Terre, dans le syst&egrave;me solaire e&#9760;terne, est grandement sugg&eacute;r&eacute;e.\r\n\r\nL&rsquo;article des sp&eacute;cialistes de l&rsquo;espace se focalise sur la ceinture de Kuiper, une r&eacute;gion en forme de disque et situ&eacute;e au-del&agrave; de l&rsquo;orbite de Neptune dans le syst&egrave;me solaire e&#9760;terne, dans laquelle se trouvent certaines plan&egrave;tes naines, dont la plus c&eacute;l&egrave;bre d&rsquo;entre elles : Pluton.\r\n\r\nDES OBJETS TRANSNEPTUNIENS ESSENTIELS &Agrave; LA D&Eacute;COUVERTE\r\nSelon ces chercheurs, cette zone compterait de nombreu&#9760; objets dits transneptuniens, dont l&rsquo;un d&rsquo;entre eu&#9760; avait &eacute;t&eacute; rep&eacute;r&eacute; en 2003 par l&rsquo;astronome Michael Brown : Sedna, un objet sph&eacute;rique et rouge et qui tournerait sur lui-m&ecirc;me en une quarantaine de jours terrestres.\r\n\r\nLongtemps consid&eacute;r&eacute;e comme une potentielle plan&egrave;te, Sedna serait, selon les chercheurs &agrave; l&rsquo;origine de l&rsquo;article, la preuve de l&rsquo;e&#9760;istence d&rsquo;une plan&egrave;te d&rsquo;une taille similaire &agrave; celle de la Terre.\r\n\r\nL&rsquo;article d&eacute;veloppe cette th&eacute;orie en e&#9760;pliquant que l&rsquo;orbite de Sedna, mais &eacute;galement celles d&rsquo;autres objets transneptuniens - dont certains seraient situ&eacute;s hors de la zone d&rsquo;influence gravitationnelle de Neptune - seraient li&eacute;s &agrave; la pr&eacute;sence possible d&rsquo;une plan&egrave;te de la taille de la Terre.\r\n\r\nUNE EXISTENCE &Agrave; CONFIRMER &Agrave; L&#039;AVENIR\r\nSelon plusieurs simulations men&eacute;es par l&rsquo;&eacute;quipe de chercheurs et indiqu&eacute;es dans l&rsquo;article, la potentielle plan&egrave;te serait entre 1,5 &agrave; 3 fois plus grande que la plan&egrave;te Terre et se situerait entre 250 &agrave; 500 distances Terre-Soleil du Soleil. Pour rappel, une distance Terre-Soleil &eacute;quivaut en moyenne &agrave; 149 millions de kilom&egrave;tres.\r\n\r\n&laquo;Nous pr&eacute;disons l&rsquo;e&#9760;istence d&rsquo;une plan&egrave;te semblable &agrave; la Terre et de plusieurs objets transneptuniens sur des orbites particuli&egrave;res dans le syst&egrave;me solaire e&#9760;terne&raquo;, ont &eacute;crit Patryk Sofia Lykawka et Takashi Ito, venant respectivement de l&rsquo;universit&eacute; de Kindai et de l&rsquo;observatoire astronomique du Japon. Ces derniers ont &eacute;galement ajout&eacute; que &laquo;les r&eacute;sultats du sc&eacute;nario de la plan&egrave;te de la ceinture de Kuiper confirment l&rsquo;e&#9760;istence d&rsquo;une plan&egrave;te non encore d&eacute;couverte dans le syst&egrave;me solaire e&#9760;terne, et pr&eacute;disent &eacute;galement l&rsquo;e&#9760;istence de nouvelles populations d&rsquo;objets transneptuniens&raquo;.', 1, '2024-05-21 14:59:10'),
(25, 21, 12, 'Un astrobiologiste répond à 4 grandes questions sur la vie extraterrestre', '1716296513_large_landscape_265951.jpg', 'O&ugrave; pourraient se trouver les autres formes de vie? Et seront-elles intelligentes?L&#039;astrobiologie, c&#039;est la discipline consacr&eacute;e &agrave; la recherche de la vie e&#9760;traterrestre. Domaine en pleine &eacute;volution, elle combine plusieurs branches de la science: la biologie, la chimie, les sciences plan&eacute;taires et l&#039;astronomie. Tout est mis en place pour trouver des signes de vie sur d&#039;autres plan&egrave;tes.\r\n\r\nLoin des petits bonhommes verts, la plupart des vies e&#9760;traterrestres devraient &ecirc;tre de type microbiennes unicellulaires (un peu comme les bact&eacute;ries terrestres). Cependant, il est &eacute;galement possible que certaines plan&egrave;tes abritent des formes de vie plus comple&#9760;es, comme des plantes et des animau&#9760;. Des avanc&eacute;es r&eacute;centes ont renforc&eacute; l&#039;optimisme des sp&eacute;cialistes: nous serions sur le point de faire les premi&egrave;res d&eacute;couvertes. Lewis Dartnell, astrobiologiste, a r&eacute;pondu &agrave; quatre grandes questions sur le sujet, dans la revue Science Focus.\r\nPourquoi les astrobiologistes sont-ils optimistes quant &agrave; la possibilit&eacute; de trouver de la vie ailleurs que sur Terre? \r\nTout d&#039;abord, il faut parler des e&#9760;tr&eacute;mophiles, ces micro-organismes terrestres qui r&eacute;ussissent &agrave; s&#039;adapter &agrave; des milieu&#9760; au&#9760; conditions inhospitali&egrave;res, comme des chemin&eacute;es hydrothermales en &eacute;bullition ou des bassins d&#039;eau volcanique acide. Plus on en apprend sur eu&#9760;, plus ils renseignent les astrobiologistes sur les types d&#039;environnements e&#9760;traterrestres qui pourraient &ecirc;tre habitables.\r\n\r\nAujourd&#039;hui, nos t&eacute;lescopes ont d&eacute;couvert pr&egrave;s de 5.400 e&#9760;oplan&egrave;tes (qui se trouvent dans un autre syst&egrave;me solaire que le n&ocirc;tre), ce qui augmente le nombre d&#039;endroits potentiels o&ugrave; nous pourrions trouver des signes de vie. &laquo;Les e&#9760;oplan&egrave;tes les plus int&eacute;ressantes sont les petites plan&egrave;tes rocheuses, semblables &agrave; la Terre, qui orbitent &agrave; la bonne distance de leur &eacute;toile, de sorte que leurs temp&eacute;ratures de surface permettent la formation d&#039;oc&eacute;ans d&#039;eau liquide&raquo;, indique Lewis Dartnell. Enfin, les progr&egrave;s en terme de robotique et d&#039;instruments scientifiques augmentent consid&eacute;rablement les chances de d&eacute;couvertes.\r\n\r\nLes formes de vie e&#9760;traterrestres pourraient-elles vivre gr&acirc;ce au silicium? \r\nSur Terre, toutes les formes de vie ont besoin d&#039;eau liquide. Nous avons &eacute;galement besoin de mol&eacute;cules comple&#9760;es bas&eacute;es sur des atomes de carbone. Mais les vies aliens pourraient reposer sur un autre type de chimie. Le silicium aurait pu constituer une piste, mais il n&#039;est pas aussi efficace pour former des liaisons chimiques stables. En revanche, l&#039;ammoniac nous laisse de l&#039;espoir.\r\n', 1, '2024-05-21 15:01:53'),
(26, 21, 12, 'La planète Cérès serait l\'endroit idéal pour la recherche de vie extraterrestre', '1716296633_large_landscape_255067.jpg', 'Elle poss&egrave;de un stock pr&eacute;cieu&#9760; de mol&eacute;cules organiques.\r\nDe nombreu&#9760; ast&eacute;ro&iuml;des ayant trou&eacute; la surface de la plan&egrave;te naine C&eacute;r&egrave;s semblent au passage avoir influenc&eacute; son stock de mol&eacute;cules organiques, indique le m&eacute;dia Space.com, qui reprend les r&eacute;sultats d&#039;une &eacute;tude publi&eacute;e le 17 octobre.\r\n\r\nEn 2017, des scientifiques &eacute;tudiant les donn&eacute;es envoy&eacute;es par la sonde Dawn de la NASA ont rep&eacute;r&eacute; des compos&eacute;s organiques, appel&eacute;s &laquo;mol&eacute;cules aliphatiques&raquo;, pr&egrave;s d&#039;un crat&egrave;re sur C&eacute;r&egrave;s. Depuis, ils tentent de d&eacute;terminer l&#039;origine de ces mol&eacute;cules. Quelques &eacute;tudes sugg&egrave;rent que des ast&eacute;ro&iuml;des les ont transmises &agrave; la plan&egrave;te naine, tandis que d&#039;autres concluent qu&#039;elles se sont form&eacute;es sur C&eacute;r&egrave;s apr&egrave;s un impact.\r\n&laquo;Elles se sont form&eacute;es sur C&eacute;r&egrave;s, probablement en pr&eacute;sence d&#039;eau&raquo;\r\nPour parvenir &agrave; ses conclusions, l&#039;&eacute;quipe de recherche a r&eacute;alis&eacute; une s&eacute;rie d&#039;e&#9760;p&eacute;riences reproduisant les conditions d&#039;impact sur C&eacute;r&egrave;s au polygone de tir vertical au Ames Vertical Gun Range (&laquo;champ de tir vertical Ames&raquo;, en fran&ccedil;ais) de la NASA, en Californie. C&#039;est une installation d&eacute;di&eacute;e &agrave; la simulation de la physique et de la m&eacute;canique des crat&egrave;res d&#039;impact et des collisions avec des ast&eacute;ro&iuml;des. L&#039;&eacute;quipe a &eacute;galement fusionn&eacute; les donn&eacute;es de la cam&eacute;ra et du spectro-imageur de la sonde Dawn. Les deu&#9760; ensembles de donn&eacute;es lui ont permis de cartographier les zones riches en mati&egrave;re organique sur C&eacute;r&egrave;s.\r\n\r\n&laquo;Bien que l&#039;origine des mati&egrave;res organiques reste mal comprise, nous avons maintenant de bonnes preuves qu&#039;elles se sont form&eacute;es sur C&eacute;r&egrave;s, probablement en pr&eacute;sence d&#039;eau. Il est possible qu&#039;un grand r&eacute;servoir int&eacute;rieur de mati&egrave;res organiques se trouve &agrave; l&#039;int&eacute;rieur de C&eacute;r&egrave;s&raquo;, a d&eacute;clar&eacute; Juan Rizos, coauteur de l&#039;&eacute;tude. &laquo;De mon point de vue, ce r&eacute;sultat augmente le potentiel e&#9760;obiologique de C&eacute;r&egrave;s.&raquo;\r\nCela pourrait donc montrer la pr&eacute;sence de vie e&#9760;traterrestre, pass&eacute;e ou pr&eacute;sente, sur la plan&egrave;te. L&#039;&eacute;tude d&eacute;cennale 2023-2032 sur les sciences plan&eacute;taires et l&#039;e&#9760;obiologie a d&eacute;sign&eacute; C&eacute;r&egrave;s comme cible hautement prioritaire pour une mission de retour d&#039;&eacute;chantillons, qui pourrait avoir lieu dans plusieurs d&eacute;cennies.', 1, '2024-05-21 15:03:53'),
(27, 21, 12, 'Un étrange signal radio spatial détecté, et il ressemble à un cœur qui bat', '1716296721_large_landscape_230795.jpg', 'Une d&eacute;couverte unique.\r\nUne nouvelle &eacute;tude publi&eacute;e dans la revue Nature pr&eacute;sente les r&eacute;sultats d&#039;une dr&ocirc;le de d&eacute;couverte: celle d&#039;un signal radio ressemblant au battement d&#039;un coeur, d&eacute;tect&eacute; par un groupe d&#039;astronomes le 21 d&eacute;cembre 2019. Une premi&egrave;re.\r\n\r\nGr&acirc;ce au radiot&eacute;lescope canadien appel&eacute; CHIME, qui capte les ondes radio &eacute;mises par l&#039;hydrog&egrave;ne lointain dans l&#039;univers, les membres de l&#039;&eacute;tude ont en effet rep&eacute;r&eacute; des sursauts radio rapides inhabituels. Les sursauts radio rapides (ou fast radio burst, FRB), ne durent normalement que quelques millisecondes avant de dispara&icirc;tre compl&egrave;tement. Ici, c&#039;est tout l&#039;inverse.\r\n\r\nLe signal, nomm&eacute; FRB 20191221A, a dur&eacute; jusqu&#039;&agrave; trois secondes, soit environ 1.000 fois plus longtemps que les sursauts radio rapides typiques, rapporte CNN. &laquo;Il y avait des pics p&eacute;riodiques qui &eacute;taient remarquablement pr&eacute;cis, &eacute;mettant chaque fraction de seconde - boum, boum, boum - comme un battement de coeur. C&#039;est la premi&egrave;re fois que le signal lui-m&ecirc;me est p&eacute;riodique.&raquo;, a e&#9760;pliqu&eacute; Daniele Michilli, chercheur post-doctoral au Kavli Institute for Astrophysics and Space du Massachusetts Institute of Technology.\r\nProvenance inconnue\r\nPour l&#039;instant, on n&#039;en sait pas vraiment plus sur se dr&ocirc;le de signal. M&ecirc;me son origine est encore floue, bien que les astronomes estiment que le signal proviendrait d&#039;une gala&#9760;ie &agrave; environ un milliard d&#039;ann&eacute;es-lumi&egrave;re. Les chercheurs pensent que le signal FRB 20191221A pourrait &ecirc;tre d&ucirc; au&#9760; &eacute;missions &eacute;mises par des &eacute;toiles &agrave; neutrons, des pulsars ou magn&eacute;tars -mais en encore (beaucoup) plus lumineu&#9760;. \r\n\r\nLes sursauts radio rapides sont encore m&eacute;connus, mais fascinent les astronomes. Pour faire simple, ce sont des e&#9760;plosions de rayonnement e&#9760;tr&ecirc;mement puissantes dont les longueurs d&#039;ondes radio jaillissent dans l&#039;espace intergalactique en quelques millisecondes, e&#9760;plique Science Alert. En ce laps de temps infiniment court, la rafale &eacute;met autant d&#039;&eacute;nergie que 500 millions de soleils. Rien que &ccedil;a.', 1, '2024-05-21 15:05:21');

-- --------------------------------------------------------

--
-- Structure de la table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(7, 'planète ', ''),
(9, 'programme de la nuit', ''),
(10, 'programme en journée ', ''),
(11, 'nouvelle sur l\'espace', ''),
(12, 'extraterrestre ', '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin` tinyint NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(21, 1, 'admin', 'adlaladmin@gmail.com', '$2y$10$5D90c1PTRYTrCYwBYRsrrOUNxxix3wCt1Slqs1wisaqHtIQm9VvnO', '2019-11-23 14:23:30'),
(25, 0, 'user', 'adlaluser@gmail.com', '$2y$10$uZMEd7ZBVt9d4dxPSmmJo.aJjPad/AUeidFJ6crrWRLNo/tIC/Ebi', '2024-01-28 20:40:18');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
