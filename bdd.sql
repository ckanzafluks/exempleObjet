-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 10 Mars 2019 à 20:14
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `exemple_p3_pdo`
--

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(150) NOT NULL,
  `post_content` text NOT NULL,
  `post_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_content`, `post_created`) VALUES
(1, ' Pourquoi Victor Hugo n\'a jamais refusé la moindre caricature', '\r\nEXPOSITION - Un grand visage barbu qui trône sur un tout petit corps, voilà l\'image de Victor Hugo sous les traits des caricaturistes de son époque.\r\n\r\nTantôt critiqué, tantôt acclamé, l\'écrivain du XIXe siècle a d\'abord été croqué en tant qu\'auteur puis en tant qu\'homme politique avant d\'être redessiné sous les trais d\'un grand homme de lettres.', '2019-03-15 00:00:00'),
(2, 'L\'écrivain israélien Amos Oz meurt à 79 ans', 'CULTURE - Le célèbre écrivain israélien Amos Oz, ardent défenseur de la paix dont le roman autobiographique \"Une Histoire d\'amour et de ténèbres\" avait connu un succès mondial, s\'est éteint ce vendredi 28 décembre, à l\'âge de 79 ans, a annoncé sa fille.\r\n\r\nL\'écrivain est décédé à la suite d\'un cancer, a déclaré Fania Oz-Salzberger. \"Mon père chéri vient de mourir, après une détérioration rapide (de son état de santé), dans son sommeil et tranquillement, entouré de ceux qui l\'aiment\", a-t-elle écrit sur Twitter, remerciant \"ceux qui l\'ont aimé\".', '2019-03-27 11:37:26'),
(3, 'Des publicités \"Le temps des cerises\" jugées sexistes retirées', 'SEXISME - \"Liberté, égalité, beau fessier\". Le slogan choisi par la marque de vêtements \"Le temps des cerises\" passe mal en Seine-Saint-Denis, où le maire PS des Lilas, Daniel Guiraud, est monté au créneau contre cette affiche jugée sexiste, rapporte Le Parisien.\r\n\r\nAuprès du quotidien, l\'élu socialiste n\'a pas caché sa colère: \"c\'est l\'image de la femme ramenée à son cul, c\'est choquant. Un stéréotype sexiste dans toute sa splendeur\". Ce faisant, il a demandé à l\'afficheur JCDecaux de retirer ces publicités, composées d\'un gros plan de fesses moulées par le jean de la marque marseillaise et barré du slogan mentionné plus haut.\r\n\r\n\"Dès lors que la publicité n\'est pas sexiste, homophobe, antisémite..., c\'est leur liberté de poser ces panneaux. Là, il y a une limite à leur liberté publicitaire\", a développé Daniel Guiraud à l\'attention de JCDecaux, enseigne qui a accepté de retirer ces affiches aux Lilas. \"À notre connaissance, aucune autre municipalité n\'a demandé le désaffichage de cette campagne \", a fait savoir l\'afficheur au Parisien.\r\n\r\n', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
