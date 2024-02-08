-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 08 fév. 2024 à 14:59
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
-- Base de données : `foot`
--

-- --------------------------------------------------------

--
-- Structure de la table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
CREATE TABLE IF NOT EXISTS `competitions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `compet` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `competitions`
--

INSERT INTO `competitions` (`id`, `compet`) VALUES
(1, 'La Liga'),
(2, 'Ligue des Champions'),
(3, 'Europa League'),
(4, 'MLS'),
(5, 'Saudi Pro League'),
(6, 'Serie A'),
(7, 'Ligue 1 '),
(8, 'Premier League'),
(9, 'Bundesliga');

-- --------------------------------------------------------

--
-- Structure de la table `competition_joueurs`
--

DROP TABLE IF EXISTS `competition_joueurs`;
CREATE TABLE IF NOT EXISTS `competition_joueurs` (
  `JoueursID` int NOT NULL,
  `CompetitionsID` int NOT NULL,
  KEY `JoueursID` (`JoueursID`),
  KEY `CompetitionsID` (`CompetitionsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `competition_joueurs`
--

INSERT INTO `competition_joueurs` (`JoueursID`, `CompetitionsID`) VALUES
(18, 8),
(1, 1),
(19, 8),
(9, 8),
(11, 9),
(5, 6),
(7, 6),
(8, 7),
(3, 4),
(10, 9),
(6, 6),
(14, 1),
(13, 1),
(4, 5),
(20, 8),
(15, 8),
(17, 9),
(16, 8),
(2, 1),
(12, 9);

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

DROP TABLE IF EXISTS `joueurs`;
CREATE TABLE IF NOT EXISTS `joueurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `nation` varchar(255) NOT NULL,
  `club` varchar(255) NOT NULL,
  `Valeur` int NOT NULL,
  `but` int NOT NULL,
  `passe` int NOT NULL,
  `nbre_match` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `joueurs`
--

INSERT INTO `joueurs` (`id`, `nom`, `prenom`, `age`, `nation`, `club`, `Valeur`, `but`, `passe`, `nbre_match`) VALUES
(1, 'Bellingham', 'Jude', 20, 'Angleterre ', 'Real Madrid', 180, 18, 8, 28),
(2, 'Vinicius ', 'JR', 23, 'Bresil', 'Real Madrid', 150, 11, 5, 20),
(3, 'Messi', 'Lionel', 36, 'Argentine', 'Inter Miami', 35, 11, 3, 13),
(4, 'Ronaldo', 'Cristiano', 39, 'Portugal', 'Al Nassr', 15, 24, 11, 25),
(5, 'Kvaratskhelia', 'Khvicha', 22, 'Georgie', 'Naple', 80, 6, 5, 29),
(6, 'Osimhen', 'Victor', 25, 'Nigeria', 'Naple', 110, 8, 3, 18),
(7, 'Leao ', 'Rafael', 24, 'Portugal', 'Milan', 90, 6, 8, 25),
(8, 'Mbappé', 'Kylian', 25, 'France', 'Paris St Germain', 180, 29, 7, 28),
(9, 'Haaland', 'Erling', 23, 'Norvege', 'Manchester City', 180, 19, 5, 23),
(10, 'Musiala', 'Jamal', 20, 'Allemagne', 'Bayern Munich', 110, 7, 3, 23),
(11, 'Kane', 'Harry', 30, 'Angleterre ', 'Bayern Munich', 110, 28, 8, 27),
(12, 'Wirtz', 'Florian', 20, 'Allemagne', 'Bayer Leverkusen', 100, 8, 15, 28),
(13, 'Rodrygo', 'Santos', 23, 'Bresil', 'Real Madrid', 100, 12, 7, 33),
(14, 'Pedri', 'Gonzalez', 23, 'Espagne', 'Barcelone', 90, 2, 3, 19),
(15, 'Silva', 'Bernardo', 29, 'Portugal', 'Manchester City', 80, 7, 4, 26),
(16, 'Szobozlai', 'Dominik', 23, 'Hongrie', 'Liverpool', 75, 5, 4, 28),
(17, 'Simons', 'Xavi', 20, 'Pays-Bas', 'Leipzig', 70, 7, 9, 28),
(18, 'Alexander-Arnold', 'Trent', 25, 'Angleterre', 'Liverpool', 70, 2, 9, 28),
(19, 'Doku', 'Jeremy', 21, 'Belge', 'Manchester City', 65, 5, 6, 23),
(20, 'Salah', 'Mohamed', 31, 'Egypte', 'Liverpool', 65, 18, 9, 27);

-- --------------------------------------------------------

--
-- Structure de la table `picture`
--

DROP TABLE IF EXISTS `picture`;
CREATE TABLE IF NOT EXISTS `picture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PathImg` varchar(255) NOT NULL,
  `JoueursID` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `JoueursID` (`JoueursID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `picture`
--

INSERT INTO `picture` (`id`, `PathImg`, `JoueursID`) VALUES
(1, 'assets/img/Bellingham.png', 1),
(2, 'assets/img/Vinicius.png', 2),
(3, 'assets/img/Messi.png', 3),
(4, 'assets/img/RONALDO.png', 4),
(5, 'assets/img/Kvara.png', 5),
(6, 'assets/img/doku.png', 19),
(7, 'assets/img/haaland.png', 9),
(8, 'assets/img/kane.png', 11),
(9, 'assets/img/leao.png', 7),
(10, 'assets/img/mbappe.png', 8),
(11, 'assets/img/musiala.png', 10),
(12, 'assets/img/osimhen.png', 6),
(13, 'assets/img/pedri.png', 14),
(14, 'assets/img/rodrygo.png', 13),
(15, 'assets/img/salah.png', 20),
(16, 'assets/img/silva.png', 15),
(17, 'assets/img/szobo.png', 16),
(18, 'assets/img/trent.png', 18),
(19, 'assets/img/wirtz.png', 12),
(20, 'assets/img/xavi.png', 17);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competition_joueurs`
--
ALTER TABLE `competition_joueurs`
  ADD CONSTRAINT `competition_joueurs_ibfk_1` FOREIGN KEY (`JoueursID`) REFERENCES `joueurs` (`id`),
  ADD CONSTRAINT `competition_joueurs_ibfk_2` FOREIGN KEY (`CompetitionsID`) REFERENCES `competitions` (`id`);

--
-- Contraintes pour la table `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`JoueursID`) REFERENCES `joueurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
