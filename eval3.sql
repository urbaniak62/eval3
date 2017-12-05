-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 05 Décembre 2017 à 08:09
-- Version du serveur :  5.7.20-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `eval3`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `livre_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`id`, `name`, `age`, `adresse`, `livre_id`, `created_at`, `updated_at`) VALUES
(1, 'nicolas', 39, '158 rue f de pressence 62 220 CARVIN', '1', '2017-11-30 15:59:10', '2017-11-30 15:59:10'),
(2, 'de-niro', 72, 'USA', '2', '2017-11-30 16:01:20', '2017-11-30 16:01:20');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id` int(10) UNSIGNED NOT NULL,
  `titre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `categorie` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disponibilité` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `auteur`, `resume`, `date`, `categorie`, `disponibilité`, `created_at`, `updated_at`) VALUES
(1, 'de la brousse a la jungle', 'Marcel Bigeard', ' Dans cet ouvrage, je retrace mon parcours de baroudeur, depuis mes champs de bataille militaires à ceux de l\'arène politique. Le passage  de la Brousse à la jungle . LA BROUSSE : Je raconte tout d\'abord mes trente années de  brousse  depuis ma jeunesse à Toul, mon premier combat, suivi du baptême du feu en 39, les groupes francs, le parachutage en Ariège, puis l\'Indo et l\'Algérie, jusqu\'à la fin de la piste avec mon commandement dans l\'océan Indien, et enfin Bordeaux, commandant la 4e région militaire. LA JUNGLE : Puis vient la  jungle . Ministre, un monde à part, la tournée des popotes, le Pacifique, l\'Arabie Saoudite... Député, l\'Assemblée Nationale, la Chine, les États-Unis, l\'Afrique... Mai 1981, réagir, sauver l\'armée, chez les Paras à Beyrouth, député sous la cohabitation... La jungle... Il y en a marre. Je me remets, seul, au service de mon pays, jusqu\'à mon dernier souffle.  Ce livre du général Bigeard, écrit dans un style clair, direct, avec le franc-parler qu\'on lui connaît, est un message d\'espoir au service de la France. La présente réédition, avec une nouvelle préface du général, constitue une oeuvre de collection que tous ses lecteurs se doivent de posséder.', '2011-09-28', 'biographie', 'disponible', '2017-11-28 09:34:16', '2017-11-28 09:34:16'),
(2, 'Les cerfs-volants de Kaboul', 'Khaled-Hosseini', 'Kaboul, dans les années 70. Bien que frères de lait et élevés au sein de la même propriété, Amir et Hassan ont grandi dans des mondes différents : le premier est le fils d’un riche commerçant, membre de l’élite pachtoune du pays, le second est fils de leur serviteur, issu de la minorité ethnique des Hazaras, méprisée de tous. Inséparables, liés par une même passion pour les cerfs-volants, les deux enfants se vouent une amitié indéfectible. Mais l’été de ses treize ans, alors qu’il désespère de gagner l’affection d’un père qu’il vénère et redoute à la fois, Amir commet la pire des trahisons : lors du combat de cerfs-volants organisé comme chaque hiver dans leur quartier, Amir abandonne Hassan à un sort tragique. Lorsque les Soviétiques envahissent le pays et qu’il fuit en Californie avec son père, Amir pense qu’une nouvelle vie s’ouvre à lui. Mais le souvenir d’Hassan le poursuit partout.', '2006-11-07', 'historique', 'pas dispo', '2017-11-28 10:01:19', '2017-11-28 10:01:19'),
(3, 'Il faut sauver le soldat Ryan ', 'Robert Rodat ', '6 juin 1944. Les troupes américaines débarquent sur les plages normandes pour une des batailles les plus importantes de la Seconde Guerre mondiale. Pour le capitaine John Miller et ses soldats, ce jour va sceller leur destin. Leur mission : franchir les lignes ennemies, trouver le deuxième classe James F. Ryan, originaire de l\'Iowa, lui annoncer qu\'il a perdu ses trois frères tombés au champ d\'honneur, et le rapatrier. Ordre du général Marshall, en personne. Motif : ne pas démoraliser l\'opinion américaine. Mais Ryan a reçu l\'ordre de défendre le pont de Ramelle. Il y va de la victoire des Alliés. Et il n\'est pas du genre à déserter son poste. Pour sauver la peau de cet homme, le capitaine Miller ira jusqu\'au bout, quitte à risquer sa vie, celle de ses soldats. Car pour lui, l\'enjeu est clair. Le sort du monde fibre est lié à celui de Ryan.  ', '1999-01-04', 'guerre', 'disponible', '2017-11-28 12:23:55', '2017-11-28 12:23:55');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_28_100650_create_livres_table', 1),
(4, '2017_11_29_143946_create_clients_table', 2),
(5, '2017_11_30_135933_create_clients_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
