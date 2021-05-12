-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-05-2021 a las 10:09:21
-- Versión del servidor: 8.0.23-0ubuntu0.20.04.1
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `artpost`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` json NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `slug`, `cat_type`, `category`, `description`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'cat', 'categoria', 'cat', '', '\"categoria.jpg\"', 0, '2021-04-29 15:10:35', '2021-04-29 15:10:35'),
(2, 'caa', 'categoria', 'caa', '', '\"categoria.jpg\"', 0, '2021-04-29 15:15:45', '2021-04-29 15:15:45'),
(3, 'caa-1', 'categoria', 'caa', '', '\"categoria.jpg\"', 0, '2021-04-29 15:17:06', '2021-04-29 15:17:06'),
(4, 'caa-2', 'categoria', 'caa', '', '\"categoria.jpg\"', 0, '2021-04-29 15:17:25', '2021-04-29 15:17:25'),
(5, 'caa-3', 'categoria', 'caa', '', '\"categoria.jpg\"', 0, '2021-04-29 15:17:54', '2021-04-29 15:17:54'),
(6, 'caa-4', 'categoria', 'caa', '', '\"categoria.jpg\"', 0, '2021-04-29 15:24:51', '2021-04-29 15:24:51'),
(7, 'caa-5', 'categoria', 'caa', '', '\"categoria.jpg\"', 0, '2021-04-29 15:25:09', '2021-04-29 15:25:09'),
(8, 'otrama', 'categoria', 'otrama', '', '\"categoria.jpg\"', 0, '2021-04-29 15:30:39', '2021-04-29 15:30:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2021-05-05 23:57:42', '2021-05-06 23:57:42'),
(2, 1, 30, NULL, NULL),
(3, 1, 31, NULL, NULL),
(4, 1, 32, NULL, NULL),
(5, 1, 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filemanager`
--

CREATE TABLE `filemanager` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` double(8,2) NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `absolute_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_04_08_175128_create_permission_tables', 1),
(6, '2020_05_02_100001_create_filemanager_table', 1),
(7, '2021_04_07_140120_create_sessions_table', 1),
(8, '2021_04_14_124152_create_styles_table', 1),
(9, '2021_04_14_143525_create_settings_table', 1),
(10, '2021_04_14_150217_create_templates_table', 1),
(11, '2021_04_14_172439_create_pages_table', 1),
(12, '2021_04_14_174957_create_tags_table', 1),
(13, '2021_04_14_184245_create_categories_table', 1),
(14, '2021_04_14_185936_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` json NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `description`, `content`, `parent_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'corporativa', 'corporativa', '{\"title\": \"corporativa\", \"description\": \"jlkjljlkjlk\"}', '&lt;p&gt;jlkjljlkjlk&lt;/p&gt;', 0, 1, '2021-04-29 02:34:21', '2021-04-29 02:34:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `page_style`
--

CREATE TABLE `page_style` (
  `id` bigint UNSIGNED NOT NULL,
  `page_id` bigint UNSIGNED NOT NULL,
  `style_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `page_style`
--

INSERT INTO `page_style` (`id`, `page_id`, `style_id`, `created_at`, `updated_at`) VALUES
(3, 3, 26, '2021-04-29 02:34:21', '2021-04-29 02:34:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'read', 'web', '2021-04-26 18:54:25', '2021-04-26 18:54:25'),
(2, 'create', 'web', '2021-04-26 18:54:26', '2021-04-26 18:54:26'),
(3, 'edit', 'web', '2021-04-26 18:54:26', '2021-04-26 18:54:26'),
(4, 'update', 'web', '2021-04-26 18:54:27', '2021-04-26 18:54:27'),
(5, 'delete', 'web', '2021-04-26 18:54:27', '2021-04-26 18:54:27'),
(6, 'trash', 'web', '2021-04-26 18:54:27', '2021-04-26 18:54:27'),
(7, 'publish', 'web', '2021-04-26 18:54:28', '2021-04-26 18:54:28'),
(8, 'unpublish', 'web', '2021-04-26 18:54:28', '2021-04-26 18:54:28'),
(9, 'sessions', 'web', '2021-04-26 18:54:28', '2021-04-26 18:54:28'),
(10, 'modify', 'web', '2021-04-26 18:54:28', '2021-04-26 18:54:28'),
(11, 'special', 'web', '2021-04-26 18:54:29', '2021-04-26 18:54:29'),
(12, 'ap_sessions_admin', 'web', '2021-04-26 18:54:29', '2021-04-26 18:54:29'),
(13, 'ap_post', 'web', '2021-04-26 18:54:29', '2021-04-26 18:54:29'),
(14, 'ap_post_cat', 'web', '2021-04-26 18:54:29', '2021-04-26 18:54:29'),
(15, 'ap_post_tag', 'web', '2021-04-26 18:54:30', '2021-04-26 18:54:30'),
(16, 'ap_page', 'web', '2021-04-26 18:54:30', '2021-04-26 18:54:30'),
(17, 'ap_comment_manager', 'web', '2021-04-26 18:54:30', '2021-04-26 18:54:30'),
(18, 'ap_subscription_manager', 'web', '2021-04-26 18:54:30', '2021-04-26 18:54:30'),
(19, 'ap_user_manager', 'web', '2021-04-26 18:54:31', '2021-04-26 18:54:31'),
(20, 'ap_config_manage', 'web', '2021-04-26 18:54:31', '2021-04-26 18:54:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_img` json DEFAULT NULL,
  `status_post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resumen_post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` json NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `post_slug`, `post_type`, `post_title`, `post_img`, `status_post`, `resumen_post`, `post_content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'tituloff', 'user', 'mititili', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 'publico', 'bajada', '\"\"', 1, '2021-04-28 22:21:50', '2021-04-28 22:21:50'),
(4, 'titulo', 'artista', 'titulo', NULL, 'publico', 'bajada', '\"\"', 1, '2021-04-28 22:28:41', '2021-04-28 22:28:41'),
(5, 'titulo-1', 'artista', 'titulo', NULL, 'publico', 'bajada', '\"\"', 1, '2021-04-28 22:30:01', '2021-04-28 22:30:01'),
(6, 'entrada3', 'artista', 'entrada3', NULL, 'publico', 'bajada3', '\"\"', 1, '2021-04-29 02:04:46', '2021-04-29 02:04:46'),
(7, 'entrada4', 'artista', 'entrada4', NULL, 'publico', 'bajada4', '\"\"', 1, '2021-04-29 02:05:36', '2021-04-29 02:05:36'),
(8, 'entrada5', 'artista', 'entrada5', NULL, 'publico', 'bajada5', '\"\"', 1, '2021-04-29 02:10:32', '2021-04-29 02:10:32'),
(9, 'entrada5', 'artista', 'entrada5', NULL, 'publico', 'bajada5', '\"\"', 1, '2021-04-29 02:10:32', '2021-04-29 02:10:32'),
(10, 'entrada6', 'artista', 'entrada6', NULL, 'publico', 'bajada6', '\"\"', 1, '2021-04-29 02:11:09', '2021-04-29 02:11:09'),
(11, 'entrada7', 'artista', 'entrada7', NULL, 'publico', 'bajada7', '\"\"', 1, '2021-04-29 02:18:00', '2021-04-29 02:18:00'),
(12, 'entrada7', 'artista', 'entrada7', NULL, 'publico', 'bajada7', '\"\"', 1, '2021-04-29 02:18:00', '2021-04-29 02:18:00'),
(13, 'entrada8', 'artista', 'entrada8', NULL, 'publico', 'bajada8', '\"\"', 1, '2021-04-29 02:26:59', '2021-04-29 02:26:59'),
(14, 'titul', 'artista', 'titul', NULL, 'publico', 'bajadao', '\"\"', 1, '2021-04-29 02:29:04', '2021-04-29 02:29:04'),
(15, 'hjkhjkhk', 'artista', 'hjkhjkhk', NULL, 'publico', 'jkhkjhk', '\"&lt;!DOCTYPE html&gt;\\r\\n&lt;html&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot; /&gt;\\r\\n&lt;/head&gt;\\r\\n&lt;body style=&quot;font-family: Roboto, sans-serif;font-size: 1rem;&quot;&gt;\\r\\n&lt;p&gt;jjjjjjjjjjjjjjjj&lt;/p&gt;\\r\\n&lt;/body&gt;\\r\\n&lt;/html&gt;\"', 1, '2021-04-29 02:44:05', '2021-04-29 11:46:37'),
(16, 'titulo-2', 'artista', 'titulo', NULL, 'publico', 'hola mundo', '\"\"', 1, '2021-04-29 03:03:41', '2021-04-29 03:03:41'),
(17, 'fsfsf', 'artista', 'fsfsf', NULL, 'publico', 'hola mundo', '\"\"', 1, '2021-04-29 03:29:27', '2021-04-29 03:29:27'),
(18, 'fsfsfl', 'artista', 'fsfsfl', NULL, 'publico', 'hola mundo', '\"\"', 1, '2021-04-29 03:53:57', '2021-04-29 03:53:57'),
(19, 'lavidamisma', 'artista', 'lavidamisma', NULL, 'publico', 'bajada', '\"\"', 1, '2021-04-29 04:08:00', '2021-04-29 04:14:25'),
(20, 'perrito', 'artista', 'perrito', NULL, 'publico', 'jkhjkhjk', '\"\"', 1, '2021-04-29 04:16:57', '2021-04-29 04:16:57'),
(21, 'vida-2', 'artista', 'vida 2', NULL, 'publico', 'bajada 2', '\"&lt;!DOCTYPE html&gt;\\r\\n&lt;html&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot; /&gt;\\r\\n&lt;/head&gt;\\r\\n&lt;body style=&quot;font-family: Roboto, sans-serif;font-size: 1rem;&quot;&gt;\\r\\n&lt;p&gt;contenido 2&lt;/p&gt;\\r\\n&lt;/body&gt;\\r\\n&lt;/html&gt;\"', 1, '2021-04-29 11:54:10', '2021-04-29 11:54:10'),
(22, 'tituloj', 'artista', 'tituloj', NULL, 'publico', 'jjjjj', '\"&lt;!DOCTYPE html&gt;\\r\\n&lt;html&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot; /&gt;\\r\\n&lt;/head&gt;\\r\\n&lt;body style=&quot;font-family: Roboto, sans-serif;font-size: 1rem;&quot;&gt;\\r\\n&lt;p&gt;jjjjjjj&lt;/p&gt;\\r\\n&lt;/body&gt;\\r\\n&lt;/html&gt;\"', 1, '2021-04-29 12:01:44', '2021-04-29 12:01:44'),
(23, 'categoria', 'artista', 'categoria', NULL, 'publico', '', '\"&lt;!DOCTYPE html&gt;\\r\\n&lt;html&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot; /&gt;\\r\\n&lt;/head&gt;\\r\\n&lt;body style=&quot;font-family: Roboto, sans-serif;font-size: 1rem;&quot;&gt;\\r\\n&lt;p&gt;la categoria&lt;/p&gt;\\r\\n&lt;/body&gt;\\r\\n&lt;/html&gt;\"', 1, '2021-04-29 14:32:31', '2021-04-29 14:32:31'),
(24, 'hgjhgjh', 'artista', 'hgjhgjh', NULL, 'publico', '', '\"&lt;!DOCTYPE html&gt;\\r\\n&lt;html&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot; /&gt;\\r\\n&lt;/head&gt;\\r\\n&lt;body style=&quot;font-family: Roboto, sans-serif;font-size: 1rem;&quot;&gt;\\r\\n&lt;p&gt;jhgjhghjgj&lt;/p&gt;\\r\\n&lt;/body&gt;\\r\\n&lt;/html&gt;\"', 1, '2021-04-29 14:47:59', '2021-04-29 14:47:59'),
(25, 'fhhh', 'artista', 'fhhh', NULL, 'publico', '', '\"&lt;!DOCTYPE html&gt;\\r\\n&lt;html&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot; /&gt;\\r\\n&lt;/head&gt;\\r\\n&lt;body style=&quot;font-family: Roboto, sans-serif;font-size: 1rem;&quot;&gt;\\r\\n\\r\\n&lt;/body&gt;\\r\\n&lt;/html&gt;\"', 1, '2021-04-29 14:51:01', '2021-04-29 14:52:40'),
(26, 'jjjjjjjjjjjjjjjjj', 'artista', 'jjjjjjjjjjjjjjjjj', NULL, 'publico', '', '\"&lt;!DOCTYPE html&gt;\\r\\n&lt;html&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot; /&gt;\\r\\n&lt;/head&gt;\\r\\n&lt;body style=&quot;font-family: Roboto, sans-serif;font-size: 1rem;&quot;&gt;\\r\\n&lt;p&gt;jjjjjjjjjjjjjjjjjj&lt;/p&gt;\\r\\n&lt;/body&gt;\\r\\n&lt;/html&gt;\"', 1, '2021-04-29 14:53:22', '2021-04-29 14:53:22'),
(27, 'jjjjjjjjjjjjjjjjj-1', 'artista', 'jjjjjjjjjjjjjjjjj', NULL, 'publico', '', '\"&lt;!DOCTYPE html&gt;\\r\\n&lt;html&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot; /&gt;\\r\\n&lt;/head&gt;\\r\\n&lt;body style=&quot;font-family: Roboto, sans-serif;font-size: 1rem;&quot;&gt;\\r\\n&lt;p&gt;jjjjjjjjjjjjjjjjjj&lt;/p&gt;\\r\\n&lt;/body&gt;\\r\\n&lt;/html&gt;\"', 1, '2021-04-29 14:53:22', '2021-04-29 14:53:22'),
(28, 'hhkjh', 'artista', 'hhkjh', NULL, 'publico', '', '\"&lt;!DOCTYPE html&gt;\\r\\n&lt;html&gt;\\r\\n&lt;head&gt;\\r\\n&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=UTF-8&quot; /&gt;\\r\\n&lt;/head&gt;\\r\\n&lt;body style=&quot;font-family: Roboto, sans-serif;font-size: 1rem;&quot;&gt;\\r\\n&lt;p&gt;jhkjhkjhkjhk&lt;/p&gt;\\r\\n&lt;/body&gt;\\r\\n&lt;/html&gt;\"', 1, '2021-04-29 14:56:26', '2021-04-29 14:56:26'),
(29, 'prueba', 'entrada', 'el titulo', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 'publico', '{\n    \"rojo\":\"#f00\",\n    \"verde\":\"#0f0\",\n    \"azul\":\"#00f\",\n    \"cyan\":\"#0ff\",\n    \"magenta\":\"#f0f\",\n    \"amarillo\":\"#ff0\",\n    \"negro\":\"#000\"\n}', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 1, NULL, NULL),
(30, 'prueba', 'entrada', 'el tituloa1', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 'publico', '{\n    \"rojo\":\"#f00\",\n    \"verde\":\"#0f0\",\n    \"azul\":\"#00f\",\n    \"cyan\":\"#0ff\",\n    \"magenta\":\"#f0f\",\n    \"amarillo\":\"#ff0\",\n    \"negro\":\"#000\"\n}', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 1, NULL, NULL),
(31, 'prueba', 'entrada', 'el tituloa1', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 'publico', '{\n    \"rojo\":\"#f00\",\n    \"verde\":\"#0f0\",\n    \"azul\":\"#00f\",\n    \"cyan\":\"#0ff\",\n    \"magenta\":\"#f0f\",\n    \"amarillo\":\"#ff0\",\n    \"negro\":\"#000\"\n}', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 1, NULL, NULL),
(32, 'prueba', 'entrada', 'el tituloa1', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 'publico', '{\n    \"rojo\":\"#f00\",\n    \"verde\":\"#0f0\",\n    \"azul\":\"#00f\",\n    \"cyan\":\"#0ff\",\n    \"magenta\":\"#f0f\",\n    \"amarillo\":\"#ff0\",\n    \"negro\":\"#000\"\n}', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 1, NULL, NULL),
(33, 'cuentos-de-la-cripta', 'entrada', 'cuentos-de-la-cripta', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 'publico', '{\n		    \"rojo\":\"#f00\",\n		    \"verde\":\"#0f0\",\n		    \"azul\":\"#00f\",\n		    \"cyan\":\"#0ff\",\n		    \"magenta\":\"#f0f\",\n		    \"amarillo\":\"#ff0\",\n		    \"negro\":\"#000\"\n		}', '{\"azul\": \"#00f\", \"cyan\": \"#0ff\", \"rojo\": \"#f00\", \"negro\": \"#000\", \"verde\": \"#0f0\", \"magenta\": \"#f0f\", \"amarillo\": \"#ff0\"}', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_style`
--

CREATE TABLE `post_style` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `style_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2021-04-26 18:54:31', '2021-04-26 18:54:31'),
(2, 'Administrador', 'web', '2021-04-26 18:54:35', '2021-04-26 18:54:35'),
(3, 'Autor', 'web', '2021-04-26 18:54:38', '2021-04-26 18:54:38'),
(4, 'Adminstrador de Suscripciones', 'web', '2021-04-26 18:54:40', '2021-04-26 18:54:40'),
(5, 'Suscriptor', 'web', '2021-04-26 18:54:42', '2021-04-26 18:54:42'),
(6, 'Comentarista', 'web', '2021-04-26 18:54:42', '2021-04-26 18:54:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(12, 4),
(18, 4),
(1, 5),
(9, 5),
(18, 5),
(1, 6),
(9, 6),
(17, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Jbq2JQrH76W5pbqbAAbc0rf5uITZ6Jvsg3qjjytY', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiN21VaTI4SjVZemVZcmFRNkZGZG1TRGlpUnlXeUJweUxXM2VyYkEzaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9hcnRwb3N0LnNpdGUvZGFzaGJvYXJkL3Bvc3QvbmV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1620248964),
('kNS9fYcAbG9IO1Wo5FA8n11an8fWt5O2N8NTOWPA', NULL, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVV6cE9SVkJCN0hHOXc3VnBYbVJkdExVQk5MZlZBejFMd0s3S3kzUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9sb2NhbGhvc3QvY21zZWwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1620674416);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `image` json NOT NULL,
  `general` json NOT NULL,
  `config` json NOT NULL,
  `pages` json NOT NULL,
  `menu` json NOT NULL,
  `mail` json NOT NULL,
  `style_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `image`, `general`, `config`, `pages`, `menu`, `mail`, `style_id`, `created_at`, `updated_at`) VALUES
(2, '{\"avatar\": \"storage/default/avatarwithmask.png\"}', '{\"site_url\": \"http://artpost.site\", \"site_title\": \"artpost\", \"site_description\": \"Otro sistema laravel\"}', '[]', '{\"1\": {\"type\": \"url\", \"condition\": []}, \"2\": {\"type\": \"url\", \"condition\": []}, \"3\": {\"type\": \"url\", \"condition\": []}}', '{\"dashboard\": {\"Style\": {\"url\": \"http://artpost.site/dashboard/editor\", \"level\": \"ap_config_manage read create\", \"order\": 9}, \"Ajustes\": {\"url\": \"http://artpost.site/dashboard/setting\", \"role\": \"SuperAdmin|Administrador\", \"level\": \"ap_config_manage create read\", \"order\": 13}, \"Página\": {\"url\": \"http://artpost.site/dashboard/page\", \"level\": \"ap_page read\", \"order\": 1, \"submenu\": {\"Nueva\": {\"url\": \"http://artpost.site/dashboard/page/create\", \"level\": \"ap_page create\"}}}, \"Archivos\": {\"url\": \"http://artpost.site/dashboard/filemanager\", \"level\": \"read create\", \"order\": 3, \"submenu\": {\"Images\": {\"url\": \"http://artpost.site/dashboard/filemanager?type=Images&lang=es\", \"level\": \"read create\"}, \"Archivos\": {\"url\": \"http://artpost.site/dashboard/filemanager?type=Files&lang=es\", \"level\": \"read create\"}}}, \"Entradas\": {\"url\": \"http://artpost.site/dashboard/post\", \"level\": \"ap_post read\", \"order\": 2, \"submenu\": {\"Añadir\": {\"url\": \"http://artpost.site/dashboard/post/new\", \"level\": \"ap_post create\"}, \"Etiquetas\": {\"url\": \"http://artpost.site/dashboard/post/tags\", \"level\": \"ap_post_tag create\"}, \"Categorias\": {\"url\": \"http://artpost.site/dashboard/post/categorys\", \"level\": \"ap_post_cat create\"}}}, \"Usuarios\": {\"url\": \"http://artpost.site/dashboard/user\", \"level\": \"ap_user_manager read create\", \"order\": 10, \"submenu\": {\"Nuevo\": {\"url\": \"http://artpost.site/dashboard/user/new\", \"level\": \"ap_user_manager create\"}, \"Perfil\": {\"url\": [\"user.profile\", \"id\"], \"level\": \"ap_sessions_admin read\"}, \"Permisos\": {\"url\": \"http://artpost.site/dashboard/user/permissions\", \"role\": \"SuperAdmin|Administrador\", \"level\": \"read create\"}}}, \"Plantillas\": {\"url\": \"http://artpost.site/dashboard/template\", \"level\": \"ap_page read\", \"order\": 6, \"submenu\": {\"Pie\": {\"url\": \"http://artpost.site/dashboard/template/footer\", \"level\": \"ap_page read create\"}, \"Widget\": {\"url\": \"http://artpost.site/dashboard/template/widget\", \"level\": \"ap_page read create\"}, \"Cabezera\": {\"url\": \"http://artpost.site/dashboard/template/header\", \"level\": \"ap_page read create\"}, \"Sección\": {\"url\": \"http://artpost.site/dashboard/template/section\", \"level\": \"ap_page read create\"}}}}}', '[]', 4, '2021-04-26 20:20:30', '2021-04-29 02:34:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `styles`
--

CREATE TABLE `styles` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` text COLLATE utf8mb4_unicode_ci,
  `js` text COLLATE utf8mb4_unicode_ci,
  `show` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `styles`
--

INSERT INTO `styles` (`id`, `slug`, `name`, `css`, `js`, `show`, `level`, `user`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'styletodefaults', 'StyleToDefaults', ':root{\n					/* FUENTES */\n					--font-family-alex-brush: \'Alex Brush\', cursive;\n					--font-family-asap: \'Asap\', sans-serif;\n					--font-family-asap-condensed: \'Asap Condensed\', sans-serif;\n					--font-family-montserrat: \'Montserrat\', sans-serif;\n					--font-family-open-sans-condensed: \'Open Sans Condensed\', sans-serif;\n					--font-family-roboto: \'Roboto\', sans-serif;\n					--font-family-roboto-slab: \'Roboto Slab\', serif;\n\n					/* PESO DE FUENTES*/\n					--font-weight-thin: 100;\n					--font-weight-extraLight: 200;\n					--font-weight-light: 300;\n					--font-weight-regular: 400;\n					--font-weight-medium: 500;\n					--font-weight-semiBold: 600;\n					--font-weight-bold: 700;\n					--font-weight-extraBold: 800;\n					--font-weight-ultraBold: 900;\n\n					/* RELLENOS */\n					--padding-top: 3.125rem ;\n					--padding-left: 3.125rem ;\n					--padding-bottom: 3.125rem ;\n					--padding-right: 3.125rem ;\n\n					/* COLORS */\n					--color-dark: #201815;\n					--color-dark-alfa: #55595c;\n					--color-gray: #E9E9E9;\n					--color-brom: #B89A6A;\n					--color-carmesi: #ECDAB5;\n					--color-orange: #d17b53;\n\n					/* VIDEO */\n					--plyr-color-main: #DDCCB8;\n					--plyr-audio-controls-background: rgb(0 0 0 / 60%);\n					--plyr-audio-control-color: #fff;\n				}', '$(() => console.log(\'Welcome for Settings\') )', '-1', '-1', '-1', 1, '2021-04-26 18:54:44', '2021-04-26 18:54:44'),
(2, 'styletodefaults-1', 'StyleToDefaults', ':root{\n					/* FUENTES */\n					--font-family-alex-brush: \'Alex Brush\', cursive;\n					--font-family-asap: \'Asap\', sans-serif;\n					--font-family-asap-condensed: \'Asap Condensed\', sans-serif;\n					--font-family-montserrat: \'Montserrat\', sans-serif;\n					--font-family-open-sans-condensed: \'Open Sans Condensed\', sans-serif;\n					--font-family-roboto: \'Roboto\', sans-serif;\n					--font-family-roboto-slab: \'Roboto Slab\', serif;\n\n					/* PESO DE FUENTES*/\n					--font-weight-thin: 100;\n					--font-weight-extraLight: 200;\n					--font-weight-light: 300;\n					--font-weight-regular: 400;\n					--font-weight-medium: 500;\n					--font-weight-semiBold: 600;\n					--font-weight-bold: 700;\n					--font-weight-extraBold: 800;\n					--font-weight-ultraBold: 900;\n\n					/* RELLENOS */\n					--padding-top: 3.125rem ;\n					--padding-left: 3.125rem ;\n					--padding-bottom: 3.125rem ;\n					--padding-right: 3.125rem ;\n\n					/* COLORS */\n					--color-dark: #201815;\n					--color-dark-alfa: #55595c;\n					--color-gray: #E9E9E9;\n					--color-brom: #B89A6A;\n					--color-carmesi: #ECDAB5;\n					--color-orange: #d17b53;\n\n					/* VIDEO */\n					--plyr-color-main: #DDCCB8;\n					--plyr-audio-controls-background: rgb(0 0 0 / 60%);\n					--plyr-audio-control-color: #fff;\n				}', '$(() => console.log(\'Welcome for Settings\') )', '-1', '-1', '-1', 1, '2021-04-26 20:11:42', '2021-04-26 20:11:42'),
(3, 'styletodefaults-2', 'StyleToDefaults', ':root{\n					/* FUENTES */\n					--font-family-alex-brush: \'Alex Brush\', cursive;\n					--font-family-asap: \'Asap\', sans-serif;\n					--font-family-asap-condensed: \'Asap Condensed\', sans-serif;\n					--font-family-montserrat: \'Montserrat\', sans-serif;\n					--font-family-open-sans-condensed: \'Open Sans Condensed\', sans-serif;\n					--font-family-roboto: \'Roboto\', sans-serif;\n					--font-family-roboto-slab: \'Roboto Slab\', serif;\n\n					/* PESO DE FUENTES*/\n					--font-weight-thin: 100;\n					--font-weight-extraLight: 200;\n					--font-weight-light: 300;\n					--font-weight-regular: 400;\n					--font-weight-medium: 500;\n					--font-weight-semiBold: 600;\n					--font-weight-bold: 700;\n					--font-weight-extraBold: 800;\n					--font-weight-ultraBold: 900;\n\n					/* RELLENOS */\n					--padding-top: 3.125rem ;\n					--padding-left: 3.125rem ;\n					--padding-bottom: 3.125rem ;\n					--padding-right: 3.125rem ;\n\n					/* COLORS */\n					--color-dark: #201815;\n					--color-dark-alfa: #55595c;\n					--color-gray: #E9E9E9;\n					--color-brom: #B89A6A;\n					--color-carmesi: #ECDAB5;\n					--color-orange: #d17b53;\n\n					/* VIDEO */\n					--plyr-color-main: #DDCCB8;\n					--plyr-audio-controls-background: rgb(0 0 0 / 60%);\n					--plyr-audio-control-color: #fff;\n				}', '$(() => console.log(\'Welcome for Settings\') )', '-1', '-1', '-1', 1, '2021-04-26 20:17:28', '2021-04-26 20:17:28'),
(4, 'styletodefaults-3', 'StyleToDefaults', ':root{\n					/* FUENTES */\n					--font-family-alex-brush: \'Alex Brush\', cursive;\n					--font-family-asap: \'Asap\', sans-serif;\n					--font-family-asap-condensed: \'Asap Condensed\', sans-serif;\n					--font-family-montserrat: \'Montserrat\', sans-serif;\n					--font-family-open-sans-condensed: \'Open Sans Condensed\', sans-serif;\n					--font-family-roboto: \'Roboto\', sans-serif;\n					--font-family-roboto-slab: \'Roboto Slab\', serif;\n\n					/* PESO DE FUENTES*/\n					--font-weight-thin: 100;\n					--font-weight-extraLight: 200;\n					--font-weight-light: 300;\n					--font-weight-regular: 400;\n					--font-weight-medium: 500;\n					--font-weight-semiBold: 600;\n					--font-weight-bold: 700;\n					--font-weight-extraBold: 800;\n					--font-weight-ultraBold: 900;\n\n					/* RELLENOS */\n					--padding-top: 3.125rem ;\n					--padding-left: 3.125rem ;\n					--padding-bottom: 3.125rem ;\n					--padding-right: 3.125rem ;\n\n					/* COLORS */\n					--color-dark: #201815;\n					--color-dark-alfa: #55595c;\n					--color-gray: #E9E9E9;\n					--color-brom: #B89A6A;\n					--color-carmesi: #ECDAB5;\n					--color-orange: #d17b53;\n\n					/* VIDEO */\n					--plyr-color-main: #DDCCB8;\n					--plyr-audio-controls-background: rgb(0 0 0 / 60%);\n					--plyr-audio-control-color: #fff;\n				}', '$(() => console.log(\'Welcome for Settings\') )', '-1', '-1', '-1', 1, '2021-04-26 20:20:30', '2021-04-26 20:20:30'),
(7, 'titulostyle', 'titulo.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-28 21:56:31', '2021-04-28 21:56:31'),
(8, 'tituloffstyle', 'tituloff.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-28 22:02:17', '2021-04-28 22:02:17'),
(9, 'tituloffstyle-1', 'tituloff.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-28 22:08:13', '2021-04-28 22:08:13'),
(10, 'tituloffstyle-2', 'tituloff.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-28 22:10:39', '2021-04-28 22:10:39'),
(11, 'tituloffstyle-3', 'tituloff.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-28 22:11:18', '2021-04-28 22:11:18'),
(12, 'tituloffstyle-4', 'tituloff.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-28 22:11:44', '2021-04-28 22:11:44'),
(13, 'tituloffstyle-5', 'tituloff.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-28 22:21:50', '2021-04-28 22:21:50'),
(14, 'kljljlstyle', 'kljljl.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-28 22:27:31', '2021-04-28 22:27:31'),
(15, 'kljljlstyle', 'kljljl.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-28 22:27:31', '2021-04-28 22:27:31'),
(16, 'titulostyle-1', 'titulo.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-28 22:28:41', '2021-04-28 22:28:41'),
(17, 'entrada3style', 'entrada3.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 02:04:46', '2021-04-29 02:04:46'),
(18, 'entrada4style', 'entrada4.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 02:05:36', '2021-04-29 02:05:36'),
(19, 'entrada5style', 'entrada5.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 02:10:32', '2021-04-29 02:10:32'),
(20, 'entrada5style', 'entrada5.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 02:10:32', '2021-04-29 02:10:32'),
(21, 'entrada6style', 'entrada6.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 02:11:09', '2021-04-29 02:11:09'),
(22, 'entrada7style', 'entrada7.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 02:18:00', '2021-04-29 02:18:00'),
(23, 'entrada7style', 'entrada7.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 02:18:00', '2021-04-29 02:18:00'),
(24, 'entrada8style', 'entrada8.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 02:26:58', '2021-04-29 02:26:58'),
(25, 'titulstyle', 'titul.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 02:29:03', '2021-04-29 02:29:03'),
(26, 'corporativastyle', 'corporativa.style', '%2F*--%20C%C3%B3digo%20CSS%20para%20el%20p%C3%A1gina%20*%2F', '%2F**%20C%C3%B3digo%20JS%20para%20la%20p%C3%A1gina%20*%2F', '0', '-1', '-1', 1, '2021-04-29 02:34:20', '2021-04-29 02:34:20'),
(27, 'hjkhjkhkstyle', 'hjkhjkhk.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 02:44:04', '2021-04-29 02:44:04'),
(28, 'titulostyle-2', 'titulo.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 03:03:41', '2021-04-29 03:03:41'),
(29, 'fsfsfstyle', 'fsfsf.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 03:29:26', '2021-04-29 03:29:26'),
(30, 'fsfsflstyle', 'fsfsfl.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 03:53:57', '2021-04-29 03:53:57'),
(31, 'titstyle', 'tit.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 04:06:16', '2021-04-29 04:06:16'),
(32, 'vidastyle', 'vida.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 04:08:00', '2021-04-29 04:08:00'),
(33, 'perritostyle', 'perrito.style', 'css', 'js', 'nada', '-1', '-1', 1, '2021-04-29 04:16:56', '2021-04-29 04:16:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `style_template`
--

CREATE TABLE `style_template` (
  `id` bigint UNSIGNED NOT NULL,
  `template_id` bigint UNSIGNED NOT NULL,
  `style_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templates`
--

CREATE TABLE `templates` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shotcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@cms.com', NULL, '25f9e794323b453885f5181f1b624d0b', NULL, '2021-04-26 18:54:43', '2021-04-26 18:54:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `page_style`
--
ALTER TABLE `page_style`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_style_page_id_foreign` (`page_id`),
  ADD KEY `page_style_style_id_foreign` (`style_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `post_style`
--
ALTER TABLE `post_style`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_style_post_id_foreign` (`post_id`),
  ADD KEY `post_style_style_id_foreign` (`style_id`);

--
-- Indices de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_style_id_foreign` (`style_id`);

--
-- Indices de la tabla `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `styles_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `style_template`
--
ALTER TABLE `style_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `style_template_template_id_foreign` (`template_id`),
  ADD KEY `style_template_style_id_foreign` (`style_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `page_style`
--
ALTER TABLE `page_style`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `post_style`
--
ALTER TABLE `post_style`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `styles`
--
ALTER TABLE `styles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `style_template`
--
ALTER TABLE `style_template`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `page_style`
--
ALTER TABLE `page_style`
  ADD CONSTRAINT `page_style_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `page_style_style_id_foreign` FOREIGN KEY (`style_id`) REFERENCES `styles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `post_style`
--
ALTER TABLE `post_style`
  ADD CONSTRAINT `post_style_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_style_style_id_foreign` FOREIGN KEY (`style_id`) REFERENCES `styles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_style_id_foreign` FOREIGN KEY (`style_id`) REFERENCES `styles` (`id`);

--
-- Filtros para la tabla `styles`
--
ALTER TABLE `styles`
  ADD CONSTRAINT `styles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `style_template`
--
ALTER TABLE `style_template`
  ADD CONSTRAINT `style_template_style_id_foreign` FOREIGN KEY (`style_id`) REFERENCES `styles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `style_template_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `templates` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `templates`
--
ALTER TABLE `templates`
  ADD CONSTRAINT `templates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
