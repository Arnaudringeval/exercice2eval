-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 29 jan. 2021 à 07:50
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `jeux_video`
--

DROP TABLE IF EXISTS `jeux_video`;
CREATE TABLE IF NOT EXISTS `jeux_video` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `possesseur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `console` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` decimal(9,2) DEFAULT NULL,
  `nbre_joueurs_max` int(6) DEFAULT NULL,
  `commentaires` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jeux_video`
--

INSERT INTO `jeux_video` (`id`, `nom`, `possesseur`, `console`, `prix`, `nbre_joueurs_max`, `commentaires`) VALUES
(1, 'Pokémon Soleil 3DS', 'Alex', 'Nintendo DS', '33.90', 1, 'Incarnez un dresseur Pokémon'),
(2, 'Pokémon Lune 3DS', 'Patrick', 'Nintendo DS', '33.90', 1, 'Incarnez un dresseur Pokémon'),
(3, 'Super Mario Maker', 'Tom', 'Wii U', '49.38', 1, 'Devenez créateur de votre propre jeu Super Mario Bros. !'),
(4, 'Super Mario World 3D World', 'Steven', 'PC', '24.99', 4, 'Univers coloré, mondes variés, énigmes sympas.');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` text COLLATE utf8mb4_unicode_ci,
  `dateAjout` date NOT NULL,
  `dateModif` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `auteur`, `titre`, `contenu`, `dateAjout`, `dateModif`) VALUES
(1, 'Patrick', 'Ma première info', 'Bonjour le monde!', '2021-01-20', '2021-01-20'),
(2, 'Christine', 'Ma deuxième info', 'Vous êtes là!', '2021-01-20', '2021-01-20'),
(3, 'Paul', 'Ma troisième info', 'Vous en êtes où?', '2021-01-20', '2021-01-20'),
(4, 'Jérome', 'nouveau contenu', 'pas parti', '2021-01-21', '2021-01-21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
