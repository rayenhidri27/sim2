-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 22 juin 2021 à 07:58
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sim2`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrationsVersion20200903074838', '2020-09-06 18:06:26', 1291);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) NOT NULL,
  `username_canonical` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_canonical` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `expired` tinyint(1) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` json NOT NULL,
  `credentials_expired` tinyint(1) DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'admin', 'admin', 'admin@domain.fr', 'admin@domain.fr', 1, NULL, '$argon2id$v=19$m=65536,t=4,p=1$NGhkQWtLclA5RnpZTVJOYg$zLVkIhFld9scIwlbGdSMW2/bhdjfOb6DzM3+KwXVDGs', '2021-06-16 23:43:01', 0, 0, NULL, 'S_ZpxdxR87Nu5Xz4-MWZmkdgpaCZO8H4fdMKY6GFDjY', '2021-06-16 23:15:56', '[\"ROLE_SUPER_ADMIN\", \"ROLE_USER\"]', 0, NULL),
(2, 'guest', 'guest', 'guest@domain.fr', 'guest@domain.fr', 1, NULL, '$argon2id$v=19$m=65536,t=4,p=1$RHF3L25DUFl2bW1LOG53VA$ZL2cMPhzgpBY3fg/EG+ErHt3VE4wT6KwMVwoLgE/pHo', '2021-06-17 01:19:19', 0, 0, NULL, NULL, NULL, '[\"ROLE_USER\"]', 0, NULL),
(3, 'rayen', 'rayen', 'rayen@hidri.fr', 'rayen@hidri.fr', 1, NULL, '$argon2id$v=19$m=65536,t=4,p=1$ZnczSmdqSHouc24vRFNDZA$8KZtQpb0KFJBqh24uficawjY3w5lbUk3bl5cmuMwEws', '2021-06-17 01:22:27', 0, 0, NULL, NULL, NULL, '[\"ROLE_SUPER_ADMIN\"]', 0, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
