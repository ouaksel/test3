-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 08 Décembre 2021 à 15:39
-- Version du serveur :  5.7.36-0ubuntu0.18.04.1
-- Version de PHP :  7.2.24-0ubuntu0.18.04.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `assocunminfo_bddtest`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_evenement_evn`
--

CREATE TABLE `t_evenement_evn` (
  `id_evn` int(11) NOT NULL,
  `date_fin_inscription_evn` date DEFAULT NULL,
  `date_debut_evn` date DEFAULT NULL,
  `date_fin_evn` date DEFAULT NULL,
  `heure_debut_evn` date DEFAULT NULL,
  `heure_fin_evn` date DEFAULT NULL,
  `titre_evn` varchar(45) DEFAULT NULL,
  `description_evn` varchar(100) DEFAULT NULL,
  `details_evn` varchar(45) DEFAULT NULL,
  `place_evn` int(11) DEFAULT NULL,
  `lien_image_evn` varchar(45) DEFAULT NULL,
  `date_debut_inscription_evn` date DEFAULT NULL,
  `id_rsp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_responsable_rsp`
--

CREATE TABLE `t_responsable_rsp` (
  `id_rsp` int(11) NOT NULL,
  `nom_rsp` varchar(45) DEFAULT NULL,
  `prenom_rsp` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_evenement_evn`
--
ALTER TABLE `t_evenement_evn`
  ADD PRIMARY KEY (`id_evn`),
  ADD KEY `fk_t_evenement_evn_t_responsable_rsp_idx` (`id_rsp`);

--
-- Index pour la table `t_responsable_rsp`
--
ALTER TABLE `t_responsable_rsp`
  ADD PRIMARY KEY (`id_rsp`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_evenement_evn`
--
ALTER TABLE `t_evenement_evn`
  ADD CONSTRAINT `fk_t_evenement_evn_t_responsable_rsp` FOREIGN KEY (`id_rsp`) REFERENCES `t_responsable_rsp` (`id_rsp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
