-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 21 sep. 2018 à 21:40
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
-- Base de données :  `sheen`
--

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `question_id` int(11) NOT NULL,
  `point` varchar(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`id`, `text`, `correct`, `question_id`, `point`, `created_at`, `updated_at`) VALUES
(45, 'answer 1', 1, 33, '500', '2018-04-22 18:18:10', '2018-04-22 18:18:10'),
(46, 'answer 2', 0, 33, '0', '2018-04-22 18:18:10', '2018-04-22 18:18:10'),
(49, 'fun', 1, 35, '200', '2018-04-22 18:23:23', '2018-04-22 18:23:23'),
(50, 'bad', 0, 35, '0', '2018-04-22 18:23:23', '2018-04-22 18:23:23'),
(51, 'yasameen', 1, 36, '1000', '2018-04-22 18:27:03', '2018-04-22 18:27:03'),
(52, 'joury', 0, 36, '0', '2018-04-22 18:27:03', '2018-04-22 18:27:03'),
(53, 'zzzzzzzzzz', 1, 37, '500', '2018-04-24 14:10:32', '2018-04-24 14:10:32'),
(54, 'xxxxxxxxxxxxxxx', 0, 37, '0', '2018-04-24 14:10:32', '2018-04-24 14:10:32'),
(55, 'answer 1', 1, 38, '500', '2018-04-24 14:57:04', '2018-04-24 14:57:04'),
(56, 'answer 2', 0, 38, '0', '2018-04-24 14:57:04', '2018-04-24 14:57:04'),
(57, 'lksfmlsdmfd', 1, 39, '50', '2018-04-24 15:14:03', '2018-04-24 15:14:03'),
(58, 'f,xmclkwqew', 0, 39, '0', '2018-04-24 15:14:03', '2018-04-24 15:14:03'),
(59, 'kcadkjsb', 1, 40, '200', '2018-04-24 15:37:21', '2018-04-24 15:37:21'),
(60, 'mdnf,ans,sd', 0, 40, '0', '2018-04-24 15:37:21', '2018-04-24 15:37:21'),
(61, 'yasameen', 1, 41, '1000', '2018-04-24 15:47:12', '2018-04-24 15:47:12'),
(62, 'joury', 0, 41, '0', '2018-04-24 15:47:12', '2018-04-24 15:47:12'),
(72, 'yasameen', 1, 46, '1000', '2018-04-29 12:11:30', '2018-04-29 12:11:30'),
(73, 'joury', 0, 46, '0', '2018-04-29 12:11:30', '2018-04-29 12:11:30'),
(74, 'dsfdsf', 1, 47, '1000', '2018-06-24 13:46:40', '2018-06-24 13:46:40'),
(75, 'dskhfiohdw', 0, 47, '0', '2018-06-24 13:46:40', '2018-06-24 13:46:40'),
(76, 'aaaa', 1, 42, '50', '2018-07-05 14:11:41', '2018-07-05 14:11:41'),
(77, 'bbbb', 0, 42, '0', '2018-07-05 14:11:41', '2018-07-05 14:11:41'),
(78, 'ANSWER1', 1, 50, '120', '2018-07-12 18:27:15', '2018-07-12 18:27:15'),
(79, 'ANSWER2', 0, 50, '0', '2018-07-12 18:27:15', '2018-07-12 18:27:15'),
(82, 'ANSWER1', 1, 51, '120', '2018-07-12 18:28:48', '2018-07-12 18:28:48'),
(83, 'ANSWER2', 0, 51, '0', '2018-07-12 18:28:48', '2018-07-12 18:28:48');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Math', '1.jpg', '2018-04-19 00:00:00.000000', '2018-04-19 00:00:00.000000'),
(2, 'sport', '2.jpg', '2018-04-19 00:00:00.000000', '2018-04-19 00:00:00.000000'),
(3, 'chemical', '3.jpg', '2018-04-19 00:00:00.000000', '2018-04-19 00:00:00.000000'),
(4, 'physical', '4.jpg', '2018-05-03 00:00:00.000000', '2018-05-02 00:00:00.000000'),
(5, 'history', '5.jpg', '2018-05-23 00:00:00.000000', '2018-05-18 00:00:00.000000'),
(6, 'geographic', '6.jpg', '2018-05-09 00:00:00.000000', '2018-05-11 00:00:00.000000');

-- --------------------------------------------------------

--
-- Structure de la table `favourite_quiz`
--

DROP TABLE IF EXISTS `favourite_quiz`;
CREATE TABLE IF NOT EXISTS `favourite_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `created_at` timestamp(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `favourite_quiz`
--

INSERT INTO `favourite_quiz` (`id`, `user_id`, `quiz_id`, `created_at`) VALUES
(38, 16, 53, '2018-07-25 21:00:00.000000'),
(37, 2, 55, '2018-07-03 19:12:34.000000'),
(35, 2, 58, '2018-07-03 19:05:58.000000'),
(32, 2, 55, '2018-07-03 18:42:56.000000'),
(27, 2, 55, '2018-07-03 15:56:23.000000');

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'Groups3', '2018-04-18 21:00:00', '2018-04-18 21:00:00'),
(7, 'Groups1', '2018-04-18 21:00:00', '2018-04-18 21:00:00'),
(8, 'Groups2', '2018-04-18 21:00:00', '2018-04-18 21:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `played_quiz`
--

DROP TABLE IF EXISTS `played_quiz`;
CREATE TABLE IF NOT EXISTS `played_quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'question.jpg',
  `source` varchar(255) NOT NULL,
  `time` tinytext NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_id` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `text`, `image`, `source`, `time`, `quiz_id`, `created_at`, `updated_at`) VALUES
(21, 'Question 2', '21.jpg', '', '30', 41, '2018-04-15 13:48:29', '2018-04-15 13:48:29'),
(22, 'Question 3', '22.jpg', '', '30', 41, '2018-04-15 13:49:55', '2018-04-15 13:49:55'),
(23, 'Question 1', '23.jpg', '', '40', 42, '2018-04-15 13:52:28', '2018-04-15 13:52:28'),
(24, 'sfdsfdssdfsd', '24.jpg', 'sdfsdfdsf', '20', 44, '2018-04-22 15:26:19', '2018-07-12 18:22:52'),
(25, 'sfdsfdssdfsd', '25.jfif', 'sdfsdfdsf', '20', 44, '2018-04-22 15:27:05', '2018-07-12 18:40:39'),
(26, 'sfdsfdssdfsd', '26.jpg', 'sdfsdfdsf', '20', 44, '2018-04-22 15:28:03', '2018-07-12 18:25:27'),
(36, 'what is your favorite flower?', '36.jpg', 'source 2', '30', 50, '2018-04-22 18:27:03', '2018-04-22 18:27:03'),
(38, 'new 1', 'question.jpg	', 'new 1', '20', 50, '2018-04-24 14:57:04', '2018-04-24 14:57:04'),
(39, 'xklfdwl', 'question.jpg	', 'lnfdsldngwl', '30', 50, '2018-04-24 15:14:03', '2018-04-24 15:14:03'),
(40, '$<mfksdkfmf>!=5??', 'question.jpg	', 'kadsnbkasd', '20', 50, '2018-04-24 15:37:21', '2018-04-24 15:37:21'),
(41, 'what is your favorite flower?', 'question.jpg	', 'source 2', '30', 50, '2018-04-24 15:47:12', '2018-04-24 15:47:12'),
(42, 'don\'t care', 'question.jpg	', 'don\'t care', '20', 49, '2018-04-25 17:20:42', '2018-04-25 17:20:42'),
(46, 'what is your favorite flower?', 'question.jpg', 'source 2', '30', 50, '2018-04-29 12:11:29', '2018-04-29 12:11:29'),
(47, 'test question!@#$%^&*())?><.,', 'question.jpg', 'sdfsdfd', '20', 51, '2018-06-24 13:46:40', '2018-06-24 13:46:40'),
(48, '', 'question.jpg', 'facebook', '30', 58, '2018-07-05 14:11:41', '2018-07-05 14:11:41'),
(50, 'NEW QUESTION', 'question.jpg', 'NEW QUESTION', '20', 49, '2018-07-12 18:27:15', '2018-07-12 18:27:15'),
(51, 'QUESTION 10', '51.jpg', 'QUESTION 10', '30', 49, '2018-07-12 18:28:36', '2018-07-12 18:28:48');

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'quiz.jpg',
  `description` varchar(1000) NOT NULL,
  `description_full` varchar(1000) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `into_video` varchar(255) DEFAULT NULL,
  `user_id` int(25) NOT NULL,
  `groups_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `groups_id` (`groups_id`),
  KEY `type_id` (`type_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`id`, `title`, `image`, `description`, `description_full`, `visibility`, `source`, `into_video`, `user_id`, `groups_id`, `type_id`, `category_id`, `created_at`, `updated_at`) VALUES
(42, 'Game 2', '42.jpg', 'this is a great game', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'public', '', '', 16, 2, 3, 1, '2018-04-15', '2018-04-15 13:51:00'),
(44, 'bbbbbbbbbb', 'quiz.jpg', 'bbbbbbbbbbbbbbbbbbbbbbbb', 'bbbbbbbbbbbbbbbbbb', 'public', 'bbbbbbbbbbbbbbbbb', NULL, 2, 8, 6, 1, '2018-04-24', '2018-04-28 16:11:25'),
(49, 'second game', '49.jpg', 'game for children', 'game for children - game for children- game for children game for children - game for children- game for children', 'public', 'youtube', NULL, 2, 7, 4, 2, '2018-04-22', '2018-07-07 19:34:43'),
(50, 'flower', '50.jpg', 'flower types', '', 'private', 'twiiter', NULL, 2, 8, 5, 3, '2018-04-22', '2018-07-12 20:41:25'),
(51, 'wwwwwwwww', '51.jpeg', 'wwwwwwwwwww', 'wwwwwwwwwcccccccccccccccc', 'public', 'wwwwwwwww', NULL, 2, 8, 6, 1, '2018-04-24', '2018-04-24 14:20:05'),
(53, 'nnnnnnnnnnn', '53.jpeg', 'nnnnnnnnnnnnnnnnnnn', 'nnnnnnnnnnnnnnnnnnn', 'private', 'nnnnnnnnnnnnnnnn', NULL, 2, 8, 6, 1, '2018-04-24', '2018-04-28 16:11:36'),
(54, 'don\'t care \"at all\".', 'quiz.jpg', 'fijhofweihwnfe', 'khvnkjewhrfker', 'public', 'kocnkwjdf', NULL, 2, 6, 4, 1, '2018-04-29', '2018-04-29 11:41:57'),
(55, 'don\'t care \"at all\".', '55.jpg', 'fijhofweihwnfe', 'khvnkjewhrfker', 'public', 'kocnkwjdf', NULL, 2, 6, 4, 1, '2018-04-29', '2018-04-29 11:42:53'),
(56, 'new game1', '56.jpg', 'new game1', 'hello oooooo', 'public', 'new game1', NULL, 2, 6, 4, 1, '2018-04-29', '2018-04-29 11:59:44'),
(57, 'hello from client side', '57.jfif', 'hello from client side', 'hello from client side', 'private', 'hello from client side', NULL, 2, 6, 4, 1, '2018-07-05', '2018-07-05 14:01:59'),
(58, 'aaaaaaaaaaaaa', '58.jfif', 'asawt  rtht teyt e ey e h tgh ch fggfh gf fkjnasiufh76sadbvu ydvbdug 9asyf97rasy a9r8 98t y98ren 8trn 089ty7 78rwt hhr h8 nb fg', 'fwduyagfi7tdsvc y7dsfbdsfb 7dbfbv  fsrb d dfi sydfo ds9 y 9df y9-8y ufdfdgf fdfdh ', 'private', 'aaaa', NULL, 2, 6, 4, 1, '2018-07-05', '2018-07-05 16:23:23');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Type3', '2018-04-18 21:00:00', '2018-04-18 21:00:00'),
(5, 'Type2', '2018-04-18 21:00:00', '2018-04-18 21:00:00'),
(6, 'Type1', '2018-04-18 21:00:00', '2018-04-18 21:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(25) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_profile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `user_name`, `email`, `password`, `image_profile`, `created_at`, `updated_at`) VALUES
(2, 'nazeer', 'kaadan', 'admin', 'admin@gmail.com', 'admin', '2.jpg', '2018-04-17 00:10:08', NULL),
(16, '', '', 'nazeer', NULL, 'aa', 'user.jpg', '2018-04-29 20:12:06', NULL),
(17, '', '', 'jameel', NULL, 'jameel', 'user.jpg', '2018-06-24 13:36:14', NULL),
(18, '', '', 'muhammad', NULL, 'muhammad', 'user.jpg', '2018-06-24 14:23:40', NULL),
(19, '', '', 'رضوان', NULL, 'رضوان', 'user.jpg', '2018-06-24 14:26:05', NULL),
(20, '', '', 'ammar', NULL, 'ammar', 'user.jpg', '2018-06-24 14:27:06', NULL),
(21, '', '', 'aaaa', NULL, 'aaaa', 'user.jpg', '2018-06-24 14:45:58', NULL),
(22, '', '', 'bbbb', NULL, 'bbbb', 'user.jpg', '2018-06-24 14:47:41', NULL),
(23, '', '', 'zzzz', NULL, 'zzzz', 'user.jpg', '2018-06-24 14:53:01', NULL),
(24, '', '', 'qqqq', NULL, 'qqqq', 'user.jpg', '2018-06-24 14:56:46', NULL),
(25, '', '', 'rrrr', NULL, 'rrrr', 'user.jpg', '2018-06-24 14:57:08', NULL),
(26, '', '', 'test', '', 'test', 'user.jpg', '2018-06-27 17:14:13', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
