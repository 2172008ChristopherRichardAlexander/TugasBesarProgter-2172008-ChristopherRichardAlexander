-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 07:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bem-maranatha`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BPH', '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(2, 'Sekretariat', '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(3, 'Keuangan, Sarana, dan Prasarana', '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(4, 'Informasi & Komunikasi', '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(5, 'Pengabdian Masyarakat', '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(6, 'Keilmuan & Pengembangan', '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(7, 'Sosial, Politik, dan Hukum', '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(8, 'Pengembangan Sumber Daya Organisasi', '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(9, 'Minat & Bakat', '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(10, 'Permodalan', '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(11, 'Hubungan Luar Universitas', '2024-01-14 08:21:52', '2024-01-14 08:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`) VALUES
(1, 'Teknologi dan Rekayasa cerdas'),
(2, 'Bisnis'),
(3, 'Teknik'),
(4, 'Bahasa & Budaya'),
(5, 'Seni Rupa & Desain'),
(6, 'Kedokteran'),
(7, 'Kedokteran Gigi'),
(8, 'Hukum'),
(9, 'Psikologi');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kajians`
--

CREATE TABLE `kajians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kajians`
--

INSERT INTO `kajians` (`id`, `member_id`, `cover`, `title`, `file`, `created_at`, `updated_at`) VALUES
(1, 11, NULL, 'Nam dolorum.', 'book-file/34T6EvSoKOm4ho4IkCz0jcPeaTOyD3oGpO1yTqCh.pdf', '2024-01-14 08:21:51', '2024-01-14 08:35:53'),
(3, 2, NULL, 'Quas hic aliquam.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(4, 5, NULL, 'Odio aperiam nulla.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(5, 17, NULL, 'Est.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(6, 12, NULL, 'Quae.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(7, 7, NULL, 'Maxime id.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(8, 9, NULL, 'Architecto.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(9, 15, NULL, 'Corporis.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(10, 9, NULL, 'Ipsam.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(11, 1, NULL, 'Jeri', NULL, '2024-01-14 08:29:00', '2024-01-14 08:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `member_id`, `title`, `desc`, `cover`, `created_at`, `updated_at`) VALUES
(1, 18, 'Adipisci consequuntur.', 'Quo esse dicta quis recusandae velit ea modi molestias unde dolore quasi doloremque veritatis vitae aliquam ut id tempore itaque qui incidunt eos aut ipsa culpa quia necessitatibus saepe qui placeat assumenda eos modi voluptatem dolorum aut et numquam corporis temporibus non facere asperiores possimus ut architecto atque libero nobis perferendis enim totam facilis quia tenetur tempora non aut et sunt asperiores repudiandae dolores maxime vel optio qui nam officia vero et maxime culpa qui totam sed deserunt ipsam et rerum et et doloremque quia blanditiis aliquam aut natus magni et labore sit delectus rem fuga voluptates consequatur voluptate repudiandae saepe sequi aliquam velit enim blanditiis exercitationem error nobis qui explicabo incidunt omnis qui labore assumenda ut magnam autem quidem sed voluptatem non molestiae veniam voluptas accusantium repellat quasi neque sit sint est nisi possimus quae unde quia quibusdam qui earum cupiditate consequatur consequatur architecto aut qui eos consequatur excepturi commodi saepe natus nulla aperiam quo et voluptatem ut deleniti quisquam nam rem totam distinctio voluptas ex deserunt voluptatem blanditiis aut et qui reprehenderit ut quas voluptas molestiae nihil quibusdam.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(2, 2, 'Voluptatem in.', 'Eos rem aut doloribus voluptas culpa voluptas aut et aut officia perspiciatis reprehenderit harum ea et non dolor praesentium occaecati eos harum ut autem sit laudantium fugit et exercitationem sit maxime placeat quas dolore asperiores ratione debitis nihil rem voluptas eaque quidem officia quia laboriosam optio temporibus maiores dolor ea harum sunt ex aperiam est cupiditate fugiat enim quibusdam dolores doloremque assumenda velit inventore aliquid rem quia dolorem et a excepturi ipsam saepe odio sed accusamus dolores dolores debitis voluptatem voluptatem.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(3, 15, 'Ipsam magni.', 'Esse temporibus quia et quibusdam qui consequatur id sequi architecto qui id in quibusdam iure labore eos ipsa accusamus doloribus autem id eos voluptatem debitis sint ut aut expedita vitae nesciunt hic nobis officia voluptates est aut dolorum nemo perferendis molestiae sed unde in expedita doloribus eos corporis quos eaque in quis autem velit maiores voluptatem tenetur alias provident omnis repellat aut nobis recusandae doloremque officia voluptatibus numquam sit qui molestias voluptas labore repudiandae similique aspernatur officia adipisci est et reiciendis amet eveniet assumenda commodi odit expedita voluptas blanditiis aut fugiat voluptatibus beatae ut vel veritatis velit id sit perspiciatis quo suscipit aut numquam omnis est nihil saepe eos et eius aut esse asperiores voluptates voluptatem eum ducimus et molestiae officia inventore est recusandae aperiam aliquam dolore voluptatum quia sed quisquam placeat soluta explicabo eos quisquam incidunt culpa inventore eos quos laborum cum consectetur quam at consequatur minima rerum distinctio.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(4, 19, 'Officia omnis.', 'Nulla repellat omnis aspernatur et eaque voluptas dolore pariatur sit deleniti aliquam qui qui consequatur molestias repudiandae corrupti corporis eveniet accusantium quam ex repellendus soluta nihil consectetur suscipit ipsam corporis omnis aut atque nam eius soluta maxime fugiat quae repellat pariatur sunt dolore magni tenetur et animi sint praesentium harum amet accusantium animi suscipit id pariatur dolores in accusantium ipsa officia asperiores doloribus quas modi possimus rerum voluptate libero facilis aut corporis ut velit unde quia ab quasi et ad voluptatem in ratione enim repellat autem dicta et numquam ratione voluptate maxime iste optio incidunt aliquam saepe voluptatem hic ducimus consequatur quia deleniti et quas minima aspernatur ullam reiciendis sed ex consequuntur quia in sint et alias enim provident id quo exercitationem unde quia minus ut impedit quae enim rem repudiandae doloribus tempore voluptatibus explicabo assumenda voluptas eius suscipit natus quo velit qui ad doloribus a quos ea delectus dolores non dolores ipsum numquam ut.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(5, 12, 'Sit.', 'Commodi aut minima excepturi qui facere necessitatibus quia pariatur est ab tempore dolor qui iure inventore qui odit et consequatur et enim neque aut suscipit mollitia laboriosam similique ducimus qui repellat saepe exercitationem aspernatur voluptatem corporis inventore officia omnis labore temporibus id dolorem adipisci repellat deserunt non officiis vel eos ea aliquam perspiciatis dolores sunt officiis qui provident similique nam eos nesciunt rerum quaerat nihil quisquam totam tenetur beatae eveniet qui sint eum assumenda ut sed consectetur iusto odio esse et deserunt voluptas inventore voluptatum voluptas nostrum laboriosam possimus voluptatibus unde qui quisquam sed pariatur quae ea reiciendis velit aut voluptatum blanditiis similique non repudiandae deleniti vero occaecati vitae nesciunt quis consequatur ducimus dolore deleniti assumenda mollitia voluptas voluptas voluptas placeat corporis officiis asperiores doloribus ea quo quis ratione velit explicabo dolorum voluptatem est animi quidem exercitationem non in repudiandae exercitationem quasi quia sed perferendis quia facilis rerum inventore sint aliquam autem et et autem quod atque doloribus doloribus laboriosam quibusdam quam tenetur eos nihil nesciunt omnis deleniti vitae consectetur corrupti dolores doloribus ex numquam.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(6, 11, 'Autem sunt.', 'Ut atque error impedit recusandae iste consequuntur aut quia quisquam incidunt ea dolor totam dolor excepturi reprehenderit nihil qui reprehenderit id reiciendis voluptas enim sunt tempora sint sit doloremque est velit dolore corporis quia enim aliquam omnis in totam mollitia voluptas rerum consequatur dolor assumenda distinctio officiis quasi et recusandae voluptas rerum hic itaque iure consequuntur veniam facere aut sunt nobis voluptatibus officiis et cupiditate asperiores perspiciatis veniam aut mollitia explicabo aut aut natus et et facilis vitae architecto consequatur sed deserunt qui maxime.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(7, 11, 'Maiores.', 'Sed error sunt debitis optio officia qui nobis nam qui est similique doloremque quia aliquam corrupti sed ea laudantium dolor omnis aut sint sit quia ipsa nostrum suscipit rerum ut debitis minima et voluptas adipisci magnam quis sit fugit officiis ducimus sed laboriosam rerum quas similique at rerum et est eos ea sed tenetur est quia ut explicabo illo possimus rerum porro iusto impedit quas sint incidunt nemo eveniet molestiae adipisci ut quia nemo earum neque hic maxime ea.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(8, 1, 'Voluptatibus eum.', 'Placeat est maxime impedit qui minus ducimus maiores iste et ab neque aut minus eaque ad quia voluptatibus vitae fugiat exercitationem asperiores doloribus ut consequatur et corporis sed quibusdam beatae nobis non inventore commodi dolores omnis et laudantium autem qui excepturi et maiores velit maxime deleniti sunt consequuntur dolores dolores et voluptates magnam autem est mollitia nemo accusantium et consectetur laboriosam deserunt qui est consequatur commodi qui qui in deleniti tempora a ut aut nesciunt praesentium dicta.', NULL, '2024-01-14 08:21:51', '2024-01-14 08:21:51'),
(9, 4, 'Quisquam aut.', 'Reiciendis ut dolor reprehenderit ad iure et eligendi debitis fugiat est aut et et corporis quos et architecto consequatur harum aliquam praesentium ut sit amet est dolorem et repudiandae incidunt rerum delectus possimus rerum dolores quas ea et dolorum accusantium sint ut repellat rem repudiandae doloremque et laboriosam ad maiores odio possimus repellat nam eum itaque mollitia earum rerum et qui distinctio et laboriosam optio impedit ex aut necessitatibus vel enim sequi velit quos rerum soluta consequatur nihil sint suscipit in eaque optio corrupti praesentium earum est quisquam et eos vitae voluptates soluta accusantium aliquid iure aspernatur rerum odit animi a aut beatae sit praesentium rerum soluta voluptatem qui occaecati tempora laborum facilis impedit voluptate enim nesciunt et aperiam qui aliquam in optio et similique aut nam animi corrupti quis necessitatibus porro molestiae fugit voluptates cupiditate dolorum perferendis sit qui architecto nulla explicabo consequatur nesciunt necessitatibus quia id nihil quae placeat nulla.', NULL, '2024-01-14 08:21:52', '2024-01-14 08:21:52'),
(10, 10, 'Asperiores qui ipsum.', 'Maiores quibusdam repellendus aliquid qui est veritatis modi inventore molestias atque sequi ullam nobis iste repudiandae placeat ut itaque delectus eligendi necessitatibus accusamus molestiae ratione consequuntur earum minima iure similique harum rerum et eaque dolores similique voluptas labore non facere ea aut et officiis non libero minus perferendis minus laudantium est praesentium rerum dignissimos voluptatem ducimus numquam ut quam dolor deleniti nobis nam enim sint id distinctio quis vero qui eum doloribus qui omnis quis voluptatibus asperiores occaecati suscipit quo omnis et esse iste quo molestias laborum tempore dolores est cupiditate accusantium consequuntur dolores aut placeat iure harum necessitatibus et minus corporis voluptatem soluta tenetur sit dolor enim nihil quam porro nihil minima eius aut alias libero sint illum qui animi quod beatae harum fugit facilis quo perferendis eos veniam ipsum et commodi quia cupiditate dolor recusandae officia cum dolorum accusamus eum dolorum eius quia tempore assumenda sed laborum itaque dolores quisquam accusantium asperiores et qui excepturi omnis similique odit ullam iure minima velit velit velit assumenda eos adipisci ducimus consequatur nihil autem sed quisquam et pariatur cupiditate laborum itaque vel quisquam qui ab.', NULL, '2024-01-14 08:21:52', '2024-01-14 08:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_10_033043_create_kajians_table', 1),
(6, '2024_01_11_081436_create_recruitments_table', 1),
(7, '2024_01_11_110506_create_departments_table', 1),
(8, '2024_01_11_110657_create_faculties_table', 1),
(9, '2024_01_13_173301_create_kegiatans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recruitments`
--

CREATE TABLE `recruitments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nrp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transkrip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `osjur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wiratha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `porto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekomKetua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `alasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id2` bigint(20) UNSIGNED NOT NULL,
  `alasan2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recruitments`
--

INSERT INTO `recruitments` (`id`, `nrp`, `name`, `email`, `telephone`, `birthdate`, `gender`, `faculty_id`, `angkatan`, `transkrip`, `osjur`, `wiratha`, `cv`, `porto`, `rekomKetua`, `status`, `department_id`, `alasan`, `department_id2`, `alasan2`, `created_at`, `updated_at`) VALUES
(1, '2172008', 'Christopher Richard Alexander', 'christorichard83@gmail.com', '8123123123', '2013-01-14', 'Pria', 1, '2021', 'recruitment-transkrip/LRchvOur9o7G4vvjIb2teJNZOcGdNJCIIbq395fJ.pdf', 'recruitment-osjur/VRCcCQALVU83KkMfl9k7m1XVjEq8h6vYZzs4AFb2.pdf', 'recruitment-wiratha/ALDQpLYyaPHgBiLCnAWkvN6sJsR15iIrNM7ym0Cu.pdf', 'recruitment-cv/QqJ2ExqYCUU2vX5k5YGakR0SSF36u49sqW88p3Ec.pdf', 'recruitment-porto/DavMczWAl4AjnfdNGfODv2XZ3BnWS1VwHCu8EC7Y.pdf', 'recruitment-rekomKetua/iFvzQ0sGxjn8XSaSRLtLoGPKTaf9wW4tpAMytSqK.pdf', 1, 2, 'ASik', 2, 'asik', '2024-01-14 08:38:39', '2024-01-14 09:07:39'),
(2, '2172032', 'Tristan', 'asdasdasd@gnm.com', '8123123123', '2024-01-14', 'Pria', 7, '2021', 'recruitment-transkrip/21nECyaSoQilp0VuVFKt1gENHtVG48Z1B2VWWsgE.pdf', 'recruitment-osjur/zLH8YXWdWjZQG5AL4qkuJ05Ippf4MiVPiVrseEzI.pdf', 'recruitment-wiratha/tJzySBqr1q8UF0PWvafgKPHPpsJSl7DxhlUwBIvq.pdf', 'recruitment-cv/LWdmfvsGCGOhGrcvudseyQBN8UZIYbk0L2LNzWHL.pdf', 'recruitment-porto/S4TvNyJGPSqZjmI9pdtRFasod2hKunIUG0hKpD7l.pdf', 'recruitment-rekomKetua/RXLqJVGPgnn03zl7tMRy69LKSQG4Kw2sNFsU78hc.pdf', 1, 4, 'Saya suka', 7, 'Saya suka politik', '2024-01-14 09:05:29', '2024-06-05 09:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nrp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nrp`, `name`, `email`, `password`, `is_admin`, `department_id`, `faculty_id`) VALUES
('2557795', 'Magnus Gislason PhD', 'cruickshank.kristian@example.com', '12345', false, 7, 7),
('2487339', 'Annabelle Larson', 'maybell49@example.org', '12345', false, 2, 4),
('2508394', 'Catharine McKenzie', 'bdoyle@example.org', '12345', false, 2, 5),
('2452272', 'Adrienne Jast', 'desmond.grady@example.com', '12345', false, 6, 5),
('2304933', 'Antonietta Borer IV', 'kasey.robel@example.net', '12345', false, 11, 3),
('2375476', 'Lucy Wiza DVM', 'kerdman@example.org', '12345', false, 5, 8),
('2391467', 'Dr. Herman Daniel', 'bonita.nolan@example.net', '12345', false, 1, 2),
('2292027', 'Fay Waters V', 'ukeebler@example.com', '12345', false, 7, 2),
( '2229279', 'Berry Auer', 'sophie48@example.com', '12345', false, 8, 2),
( '2246406', 'Dr. Nelda Johnson MD', 'alessandro.reichert@example.org', '12345', false, 7, 1),
( '2518541', 'Dr. Maribel Lueilwitz', 'raynor.german@example.com', '12345', false, 4, 4),
( '2291583', 'Brett Kuphal', 'wlabadie@example.org', '12345', false, 9, 5),
( '2493571', 'Mustafa Bogisich', 'mathias17@example.org', '12345', false, 1, 6),
( '2302065', 'Brooke Quigley', 'vkub@example.org', '12345', false, 5, 7),
( '2353032', 'Mason Bahringer', 'thea.kihn@example.org', '12345', false, 3, 3),
( '2209123', 'Blair Herman', 'dedrick.crist@example.org', '12345', false, 1, 4),
( '2229489', 'Dr. Kurt Crona', 'cronin.elfrieda@example.org', '12345', false, 7, 2),
( '2352860', 'Willow Bergnaum Jr.', 'thuel@example.org', '12345', false, 2, 8),
( '2383675', 'Madelyn Eichmann', 'walter.eleanora@example.net', '12345', false, 10, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kajians`
--
ALTER TABLE `kajians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recruitments`
--
ALTER TABLE `recruitments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recruitments_nrp_unique` (`nrp`),
  ADD UNIQUE KEY `recruitments_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nrp_unique` (`nrp`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kajians`
--
ALTER TABLE `kajians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recruitments`
--
ALTER TABLE `recruitments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
