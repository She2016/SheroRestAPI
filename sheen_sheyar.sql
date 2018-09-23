-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 21 sep. 2018 à 21:41
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sheen_sheyar`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `text` varchar(50) NOT NULL,
  `correct` varchar(5) NOT NULL,
  `point` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `text`, `correct`, `point`) VALUES
(1, 1, 'Cairo', 'No', 750),
(2, 1, 'Damascus', 'Yes', 1000),
(3, 1, 'Baghdad', 'No', 500),
(4, 1, 'Riyad', 'No', 250),
(5, 2, 'Cairo', 'Yes', 1000),
(6, 2, 'Damascus', 'No', 750),
(7, 2, 'Ryadh', 'No', 500),
(8, 2, 'Baghdad', 'No', 250),
(9, 3, 'Cairo', 'No', 0),
(10, 3, 'Damascus', 'No', 0),
(11, 3, 'Ryadh', 'Yes', 1000),
(12, 3, 'Baghdad', 'No', 0),
(13, 4, 'USA', 'Yes', 1000),
(14, 4, 'France', 'No', 0),
(15, 4, 'Germany', 'No', 0),
(16, 4, 'Spain', 'No', 0),
(17, 5, 'USA', 'No', 0),
(18, 5, 'France', 'Yes', 1000),
(19, 5, 'Germany', 'No', 0),
(20, 5, 'Romania', 'No', 0),
(21, 6, 'France', 'No', 0),
(22, 6, 'Qatar', 'No', 0),
(23, 6, 'Turkey', 'Yes', 1000),
(24, 6, 'Canada', 'No', 0),
(25, 7, 'Washengton', 'Yes', 1000),
(26, 7, 'Paris', 'No', 0),
(27, 7, 'Amsterdam', 'No', 0),
(28, 7, 'Vienna', 'No', -1),
(29, 8, 'Washengton', 'No', 0),
(30, 8, 'Amsterdam', 'No', 0),
(31, 8, 'Munich', 'No', 0),
(32, 8, 'Paris', 'Yes', 1000);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Structure de la table `mode`
--

DROP TABLE IF EXISTS `mode`;
CREATE TABLE IF NOT EXISTS `mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Structure de la table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `proffesion` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `person`
--

INSERT INTO `person` (`id`, `first_name`, `last_name`, `birthday`, `email`, `password`, `proffesion`) VALUES
(1, 'Shayar', 'ALI', '1987-10-20', 'ali.sheyar@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `time` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_id` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `quiz_id`, `text`, `image`, `time`, `source`) VALUES
(1, 1, 'What is the capital of Syria?', '', 10, ''),
(2, 1, 'What is the capital of Eygpt?', '', 10, ''),
(3, 1, 'What is the capital of Saudi?', '', 10, ''),
(4, 2, 'This flag is for which country?', '', 10, ''),
(5, 2, 'For which country this flag is?', '', 10, ''),
(6, 2, 'Which country use this flag?', '', 10, ''),
(7, 1, 'What it the capital of USA?', '', 10, ''),
(8, 1, 'What is the capital of France?', '', 10, '');

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `pin_code` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `visibility` varchar(5) NOT NULL,
  `group_id` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `into_video` varchar(200) NOT NULL,
  `create_date` date NOT NULL,
  `creator_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`id`, `person_id`, `title`, `pin_code`, `image`, `category_id`, `description`, `visibility`, `group_id`, `source`, `into_video`, `create_date`, `creator_name`) VALUES
(1, 1, 'Capitals', 5555, '', 0, '', '', 0, '', '', '0000-00-00', ''),
(2, 1, 'Flags', 6666, '', 0, '', '', 0, '', '', '2017-12-30', '');

-- --------------------------------------------------------

--
-- Structure de la table `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE IF NOT EXISTS `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) NOT NULL,
  `total_points` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_id` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Structure de la table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
CREATE TABLE IF NOT EXISTS `sub_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(126) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `Users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'ali@gmail.com', 'dfgdfgdgdfg', '2018-01-31 23:42:46', '2018-01-31 23:42:46');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
