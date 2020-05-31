-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2020 a las 13:10:08
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webplayground_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add página', 7, 'add_page'),
(20, 'Can change página', 7, 'change_page'),
(21, 'Can delete página', 7, 'delete_page'),
(22, 'Can add profile', 8, 'add_profile'),
(23, 'Can change profile', 8, 'change_profile'),
(24, 'Can delete profile', 8, 'delete_profile'),
(25, 'Can add thread', 9, 'add_thread'),
(26, 'Can change thread', 9, 'change_thread'),
(27, 'Can delete thread', 9, 'delete_thread'),
(28, 'Can add message', 10, 'add_message'),
(29, 'Can change message', 10, 'change_message'),
(30, 'Can delete message', 10, 'delete_message');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish2_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish2_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$bKqKcW1SmhlB$cxvDI+H8+pU3KfUX8oaUC8HJ908oJAdljEvcZ0e6HVg=', '2020-05-31 17:53:40.173260', 1, 'jessi', '', '', 'jessi@prueba.com', 1, 1, '2020-05-30 16:37:52.178885'),
(11, 'pbkdf2_sha256$100000$ivM9lfB4wqhO$ln0X+WOtd5DOn+tyn/BJ9mijmxSUfgHlDZ2MRlQIZg0=', '2020-05-31 17:32:02.552239', 0, 'oscar', '', '', 'oscar_prueba@prueba.com', 0, 1, '2020-05-31 17:17:15.011169'),
(12, 'pbkdf2_sha256$100000$gsETiYgxVSNl$IfJG61xiaqSSdfXL5w0BLSFri36t3kl92Vy6ihgjmH4=', '2020-05-31 17:44:04.929167', 0, 'osvaldo', '', '', 'osvaldo@prueba.com', 0, 1, '2020-05-31 17:22:07.090068'),
(13, 'pbkdf2_sha256$100000$eFwnt1wt6neF$exH9MPperPL5Y9G2CFP/ol8mL7OB+Wr5rSx4jYoGhGE=', '2020-05-31 17:43:28.806346', 0, 'adriana', '', '', 'adrian@prueba.com', 0, 1, '2020-05-31 17:22:37.099891'),
(14, 'pbkdf2_sha256$100000$Qrq10dJUG8yI$wbxcIda3fBtpOJkTlwPjMl69RXUuixBsLF2Q1RVg0iU=', '2020-05-31 17:42:57.011968', 0, 'raul', '', '', 'raul@prueba.com', 0, 1, '2020-05-31 17:23:07.059443'),
(15, 'pbkdf2_sha256$100000$eyMFGNnfqvz1$/KpGe8h8EB6S676C7uNcjFseEGq0bOihAH1bN5q3mmQ=', '2020-05-31 17:42:27.161264', 0, 'fernando', '', '', 'fer@prueba.com', 0, 1, '2020-05-31 17:23:50.242963'),
(16, 'pbkdf2_sha256$100000$tnIRXZzsZyM9$8fLC+DsHOjAq7QTuXR/T+Myl3pkTuA0YdAGjP1o7zuc=', '2020-05-31 17:41:27.952271', 0, 'sandra', '', '', 'sandra@prueba.com', 0, 1, '2020-05-31 17:24:07.838021'),
(17, 'pbkdf2_sha256$100000$KaM2FMtBWCc6$f1YOJ+eCcsQCQbJXYUNZUgH3PkMkt63mSKubxyGnuSQ=', '2020-05-31 17:41:01.551373', 0, 'lupe', '', '', 'lupe@prueba.com', 0, 1, '2020-05-31 17:24:26.121729'),
(18, 'pbkdf2_sha256$100000$neQYahLA2eYd$4XDm6Ejq/9TD4rEgdP2LgmGm9giRngVExUcgKaL8o0A=', '2020-05-31 17:39:48.950710', 0, 'dulce', '', '', 'dul@prueba.com', 0, 1, '2020-05-31 17:24:47.197725'),
(19, 'pbkdf2_sha256$100000$6QdMVBrGyYlh$Rq0NzNqNRgW+8meeR+7dHya9QTRoNjfa2iEcLqMO98g=', '2020-05-31 17:39:09.674647', 0, 'maria', '', '', 'maria@prueba.com', 0, 1, '2020-05-31 17:25:04.856948'),
(20, 'pbkdf2_sha256$100000$9YvPhh2qvwSW$mnhoMTDTbSdsISkw4ipSMLsPcRyUgh1vICc+7GPT5FA=', '2020-05-31 17:38:30.232545', 0, 'carmen', '', '', 'carmen@prueba.com', 0, 1, '2020-05-31 17:25:22.878326'),
(21, 'pbkdf2_sha256$100000$MnvipCtqJagS$7YJzPco3BCF9OnEABeiYtq6LAU8IZSqZc9b5yzpF3gQ=', '2020-05-31 17:37:44.940660', 0, 'liz', '', '', 'liz@prueba.com', 0, 1, '2020-05-31 17:25:42.265639'),
(22, 'pbkdf2_sha256$100000$AgbHTEAe9L52$iML2KsXQEEjfKvVq+RUCyXFxunFC+/K3HiH5JfPvdLU=', '2020-05-31 17:37:06.631491', 0, 'estela', '', '', 'estela@prueba.com', 0, 1, '2020-05-31 17:26:03.545610'),
(23, 'pbkdf2_sha256$100000$WTsHJRAEM1OM$ExnKQRgpDQsRy6KtXIP2x0FOr+4zrctkcCzyZD9hB0k=', '2020-05-31 17:36:37.988942', 0, 'mario', '', '', 'mario@prueba.com', 0, 1, '2020-05-31 17:26:22.778251'),
(24, 'pbkdf2_sha256$100000$IIBo7hF3bwsV$FDqFsZeIdrGQU5sIlWLM2TUftkCZ8qPOU0uhs8N+cfY=', '2020-05-31 17:36:06.247105', 0, 'angel', '', '', 'angel@prueba.com', 0, 1, '2020-05-31 17:26:43.522153'),
(25, 'pbkdf2_sha256$100000$2kGtpdASFcTo$q9FRNFgoD03k9O34lnvSzRhtmXxus2o30v0G55+qxsI=', '2020-05-31 17:35:44.430061', 0, 'eduardo', '', '', 'edu@prueba.com', 0, 1, '2020-05-31 17:27:03.139365'),
(26, 'pbkdf2_sha256$100000$Wcvl5XJUafEZ$8Bp75lcJnH/Dcu0CdqmX4eB6DDjxoXqFny3GGsQiNM8=', '2020-05-31 17:35:16.621361', 0, 'pablo', '', '', 'pablo@prueba.com', 0, 1, '2020-05-31 17:27:36.707602'),
(27, 'pbkdf2_sha256$100000$TWIXZYVkuZPq$DIUrFNdH7Y1chujNPmLPL8jErTD6DxNAHEUtg3VrDSE=', '2020-05-31 17:34:39.153915', 0, 'andrea', '', '', 'andy@prueba.com', 0, 1, '2020-05-31 17:28:05.583112'),
(28, 'pbkdf2_sha256$100000$mH7evNje9oml$pUd8WWF9PubNcigCmtM6KWoIGM3eDpMCtC9vVtecRQs=', '2020-05-31 17:33:54.161645', 0, 'felipe', '', '', 'felipe@prueba.com', 0, 1, '2020-05-31 17:28:32.340990'),
(29, 'pbkdf2_sha256$100000$KLSM1RD6Msyw$YCtT1QC38hC7Baw4fk4Hq1XVSrSJWWOzvE33UJ13Eoc=', '2020-05-31 17:50:24.801722', 0, 'toño', '', '', 'antonio@prueba.com', 0, 1, '2020-05-31 17:29:03.918879'),
(30, 'pbkdf2_sha256$100000$gjGkxFLgDBqb$MpBsZcOOPl4vrdDaSZQcVEwMqX+eCvTygBREQSzWad8=', '2020-05-31 17:32:48.816065', 0, 'carla', '', '', 'carla@prueba.com', 0, 1, '2020-05-31 17:29:23.116009'),
(31, 'pbkdf2_sha256$100000$7p0ZxKSceEkE$HwNKCphJg7ylYk8GEBogBa3CydxSoewnz6ot8pI89+4=', '2020-05-31 17:32:16.927014', 0, 'mauricio', '', '', 'mau@mau.com', 0, 1, '2020-05-31 17:29:47.159427'),
(32, 'pbkdf2_sha256$100000$a02Ohram2yy6$g1dX1KUglx96yTRhlj2/5R9NHZ+piGCApeABp/TFx5E=', '2020-05-31 17:30:48.321324', 0, 'jose', '', '', 'jose@jos.com', 0, 1, '2020-05-31 17:30:13.526630');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish2_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-05-30 16:42:47.824153', '1', 'Baners', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-05-30 16:44:21.914743', '2', 'Tecnología 5G', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-05-31 16:57:09.866105', '9', 'BMauricio', 3, '', 4, 1),
(4, '2020-05-31 16:57:17.746660', '8', 'Jose', 3, '', 4, 1),
(5, '2020-05-31 16:57:25.019646', '7', 'Oscar', 3, '', 4, 1),
(6, '2020-05-31 16:57:30.549056', '6', 'Pablo', 3, '', 4, 1),
(7, '2020-05-31 16:57:38.434524', '10', 'prueba', 3, '', 4, 1),
(8, '2020-05-31 16:57:46.915473', '4', 'Raul', 3, '', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'messenger', 'message'),
(9, 'messenger', 'thread'),
(7, 'pages', 'page'),
(8, 'registration', 'profile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-05-30 16:22:13.642685'),
(2, 'auth', '0001_initial', '2020-05-30 16:22:21.592228'),
(3, 'admin', '0001_initial', '2020-05-30 16:22:23.770062'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-05-30 16:22:23.807461'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-05-30 16:22:24.615867'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-05-30 16:22:26.220325'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-05-30 16:22:26.829196'),
(8, 'auth', '0004_alter_user_username_opts', '2020-05-30 16:22:26.877104'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-05-30 16:22:27.340275'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-05-30 16:22:27.363177'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-05-30 16:22:27.402341'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-05-30 16:22:28.230470'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-05-30 16:22:28.352591'),
(14, 'sessions', '0001_initial', '2020-05-30 16:22:28.723419'),
(15, 'pages', '0001_initial', '2020-05-30 16:36:48.530107'),
(16, 'registration', '0001_initial', '2020-05-30 21:41:49.515196'),
(17, 'messenger', '0001_initial', '2020-05-31 00:16:07.457224'),
(18, 'messenger', '0002_auto_20200530_2133', '2020-05-31 02:33:23.927393'),
(19, 'registration', '0002_auto_20200530_2229', '2020-05-31 03:29:38.364270');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6m4rvx155ziyehkq5wp12ne802j1bzwv', 'MWVmYWE2OTA4N2Y2ZjNlODc2ZDMwMGIxZWEwMWZhZTQyNDY4MGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNTM2ODhjODdkYmE5NTJmODFmYTNjYWVjNmFlZTU2NDBhMjViZGY2In0=', '2020-06-13 19:58:36.919240'),
('av2nzcthqc02baiqxx9gb5sljp6r9dn0', 'MjA0ZDRkZWI4NWQ5YzA1MWEzYzY4NmExMmM1NmRiNmRkMmUxMDY3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NWM4YzljZTZmMjFkMDIwZDJiZTlhOTNiZWU4MzI4MjE4MzA1MzA4In0=', '2020-06-13 23:14:19.061680'),
('dn8b2xaw0jkdckie5y6a81gv3qn9gmxj', 'MWVmYWE2OTA4N2Y2ZjNlODc2ZDMwMGIxZWEwMWZhZTQyNDY4MGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNTM2ODhjODdkYmE5NTJmODFmYTNjYWVjNmFlZTU2NDBhMjViZGY2In0=', '2020-06-13 21:02:03.516092'),
('jau9ep6eaicnglu36otg5vx9bynx8rty', 'MWVmYWE2OTA4N2Y2ZjNlODc2ZDMwMGIxZWEwMWZhZTQyNDY4MGU3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNTM2ODhjODdkYmE5NTJmODFmYTNjYWVjNmFlZTU2NDBhMjViZGY2In0=', '2020-06-13 19:54:28.687999');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_message`
--

CREATE TABLE `messenger_message` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `messenger_message`
--

INSERT INTO `messenger_message` (`id`, `content`, `created`, `user_id`) VALUES
(2, 'Hey!\n', '2020-05-31 17:46:42.553912', 1),
(3, '¿Como estas?', '2020-05-31 17:46:55.446280', 1),
(4, 'Hola!!', '2020-05-31 17:49:07.870322', 1),
(5, '¿Ya viste el nuevo artículo de tecnología?', '2020-05-31 17:49:39.918516', 1),
(6, 'Hola adrii\n', '2020-05-31 17:51:54.061222', 29),
(7, 'Hey bro!', '2020-05-31 17:52:05.920151', 29),
(8, 'Cuentame de tu proyecto', '2020-05-31 17:52:15.899974', 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread`
--

CREATE TABLE `messenger_thread` (
  `id` int(11) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `messenger_thread`
--

INSERT INTO `messenger_thread` (`id`, `updated`) VALUES
(1, '2020-05-31 03:16:48.571784'),
(2, '2020-05-31 03:17:10.045768'),
(3, '2020-05-31 15:44:56.056469'),
(4, '2020-05-31 17:49:40.040971'),
(5, '2020-05-31 17:51:54.183835'),
(6, '2020-05-31 17:52:15.958799');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_messages`
--

CREATE TABLE `messenger_thread_messages` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `messenger_thread_messages`
--

INSERT INTO `messenger_thread_messages` (`id`, `thread_id`, `message_id`) VALUES
(2, 4, 2),
(3, 4, 3),
(4, 4, 4),
(5, 4, 5),
(6, 5, 6),
(7, 6, 7),
(8, 6, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_users`
--

CREATE TABLE `messenger_thread_users` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `messenger_thread_users`
--

INSERT INTO `messenger_thread_users` (`id`, `thread_id`, `user_id`) VALUES
(4, 3, 1),
(6, 4, 1),
(7, 4, 29),
(9, 5, 13),
(8, 5, 29),
(10, 6, 25),
(11, 6, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_page`
--

CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `content` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `order` smallint(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `pages_page`
--

INSERT INTO `pages_page` (`id`, `title`, `content`, `order`, `created`, `updated`) VALUES
(1, 'Tecnología que lee tu cuerpo', '<p>Hidrogo se&ntilde;ala que se ver&aacute;n m&aacute;s avances en sistemas que utilizan las<strong>&nbsp;tecnolog&iacute;as biom&eacute;tricas</strong>, es decir, sistemas automatizados de reconocimiento humano.</p>\r\n\r\n<p>Estos sistemas ser&aacute;n capaces de reconocer cuestiones f&iacute;sicas o de comportamiento, como poder leer rasgos faciales ante determinada situaci&oacute;n.</p>\r\n\r\n<p><em>&ldquo;Esto va a permitir que el&nbsp;<strong>usuario sea mejor conocido</strong>&nbsp;por quienes le ofrecen un servicio y se puedan&nbsp;<strong>personalizar las experiencias</strong>&rdquo;, destac&oacute; el especialista.</em></p>', 1, '2020-05-30 16:42:47.752720', '2020-05-31 16:52:58.045797'),
(2, 'Tecnología 5G', '<p>La tecnolog&iacute;a 5G es un parteaguas.<br />\r\n&nbsp;</p>\r\n\r\n<p>La pr&oacute;xima generaci&oacute;n de redes de telecomunicaciones (quinta generaci&oacute;n o 5G) ha comenzado a llegar al mercado a finales de 2018 y continuar&aacute; expandi&eacute;ndose en todo el mundo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&aacute;s all&aacute; de la mejora de la velocidad, se espera que la&nbsp;5G desate un ecosistema masivo de&nbsp;<strong>IoT&nbsp;</strong><em>(</em><em>Internet de las cosas</em><em>)</em>&nbsp;donde las redes pueden satisfacer las necesidades de comunicaci&oacute;n de miles de millones de dispositivos conectados, con las compensaciones correctas entre velocidad, latencia y costo.</p>\r\n\r\n<p>&nbsp;La tecnolog&iacute;a 5G ofrece una tasa de&nbsp;<strong>latencia&nbsp;</strong>extremadamente baja (la demora o el retraso&nbsp;entre el env&iacute;o y la recepci&oacute;n de informaci&oacute;n). Desde 200 milisegundos para 4G, bajamos a 1 milisegundo (1 ms) con la&nbsp;5G.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Solo piense&nbsp;en esto por un momento.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Un milisegundo es 1/1000 de segundo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>El tiempo de reacci&oacute;n promedio de los humanos a un est&iacute;mulo visual es de 250 ms o 1/4 de segundo. Las personas tienen un l&iacute;mite de alrededor de 190-200 ms con un buen entrenamiento.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Imagine ahora que su autom&oacute;vil podr&iacute;a reaccionar 250 veces m&aacute;s r&aacute;pido que usted. Imagine que tambi&eacute;n podr&iacute;a reaccionar a cientos de datos&nbsp;entrantes y tambi&eacute;n puede comunicar sus reacciones a otros veh&iacute;culos y a se&ntilde;alizaciones&nbsp;de tr&aacute;fico, todo en milisegundos.</p>', 3, '2020-05-30 16:44:21.828677', '2020-05-31 16:53:47.535668'),
(3, 'Tu casa será inteligente', '<p>Este a&ntilde;o seguramente<strong>&nbsp;los hogares</strong>&nbsp;tendr&aacute;n m&aacute;s dispositivos que, aunque realicen tareas sencillas a trav&eacute;s de la red,&nbsp;<strong>las har&aacute;n m&aacute;s funcionales</strong>&nbsp;y&nbsp;<strong>c&oacute;modas</strong>, destac&oacute; Hidrogo.</p>\r\n\r\n<p><em>&ldquo;Habr&aacute; una gran cantidad de productos para hacer tu&nbsp;<strong>casa inteligente</strong>. Muchas personas empezar&aacute;n a buscar qu&eacute; les puede servir para hacer su vida m&aacute;s c&oacute;moda o ahorrar energ&iacute;a.</em></p>\r\n\r\n<p><em>&ldquo;Focos, puertas, electrodom&eacute;sticos o la televisi&oacute;n, est&aacute;n conectados hoy en d&iacute;a al<strong>&nbsp;Internet de las Cosas&nbsp;</strong>y vuelven nuestra casa mucho m&aacute;s funcional y sobre todo m&aacute;s c&oacute;moda&rdquo;, enlist&oacute; el especialista.</em></p>', 2, '2020-05-30 17:32:35.815298', '2020-05-31 16:53:36.424949'),
(6, 'Un mundo en 3D', '<p>La&nbsp;<strong>impresi&oacute;n en 3D</strong>&nbsp;ser&aacute; llevada a m&aacute;s&nbsp;<strong>&aacute;mbitos de la industria</strong>&nbsp;y se les dar&aacute;n nuevos y mayores usos a los elementos impresos con esta tecnolog&iacute;a.</p>\r\n\r\n<p>Las &aacute;reas de oportunidad de la impresi&oacute;n 3D van desde el comercio, industria&nbsp;e incluso el sector salud como en la investigaci&oacute;n de<strong>&nbsp;impresi&oacute;n de &oacute;rganos</strong>.</p>', 4, '2020-05-31 16:54:18.083967', '2020-05-31 16:54:18.083967'),
(7, 'Drones y vehículos autónomos', '<p>Empresas automotrices y de tecnolog&iacute;a como&nbsp;<strong>Tesla, Intel, Qualcomm, Volvo, Ford y BMW</strong>&nbsp;siguen trabajando en mejorar los veh&iacute;culos para que puedan llegar a conducirse solos.</p>\r\n\r\n<p><strong>Uber y Amazon&nbsp;</strong>tambi&eacute;n trabajan y buscan mejorar sus servicios con esta tecnolog&iacute;a, por ejemplo, para el transporte de productos a trav&eacute;s de&nbsp;<strong>drones aut&oacute;nomos</strong>.</p>', 5, '2020-05-31 16:55:05.066085', '2020-05-31 16:55:05.066085'),
(8, 'Mas virales en streaming', '<p>Alternativas a&nbsp;<strong>Netflix</strong>&nbsp;como&nbsp;<strong>Amazon Prime Plus y HBO Go&nbsp;</strong>tendr&aacute;n ahora m&aacute;s rivales en el mercado, algunos de paga y otros que son gratuitos como&nbsp;<strong>Vix y Pluto TV.</strong></p>\r\n\r\n<p><em>&ldquo;Los servicios de streaming se est&aacute;n cada vez fragmentando m&aacute;s, lanzamientos de canales como<strong>&nbsp;Disney+, Apple Tv+</strong>.</em></p>\r\n\r\n<p><em>&ldquo;Sabemos que vamos a tener que desembolsar si queremos tener contenidos originales de todas estas casas productoras que son bien interesantes, ha cambiado la forma en la que vemos televisi&oacute;n&rdquo;,&nbsp;</em>opin&oacute; Hidrogo.</p>', 7, '2020-05-31 16:56:00.684128', '2020-05-31 16:56:00.684128');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registration_profile`
--

CREATE TABLE `registration_profile` (
  `id` int(11) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8_spanish2_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registration_profile`
--

INSERT INTO `registration_profile` (`id`, `avatar`, `bio`, `link`, `user_id`) VALUES
(2, 'profiles/jessi.jpg', 'Hola me llamo Jessi y me gusta programar', 'https://www.youtube.com/channel/UCqs9jQBtkNAGumaPwcpxdFA', 1),
(8, 'profiles/oscar.jpg', 'Hola me llamo Oscar y me gusta viajar', NULL, 11),
(9, 'profiles/osvaldo.jpg', 'Soy fotografo y tengo mi propio canal de youtube', 'https://www.youtube.com/channel/UCqs9jQBtkNAGumaPwcpxdFA', 12),
(10, 'profiles/adriana.jpg', 'Hablo 2 idiomas y me encanta México', 'https://www.youtube.com/', 13),
(11, 'profiles/raul.jpg', 'Soy estudiante de medicina en la UAME', 'https://www.facebook.com/', 14),
(12, 'profiles/fernando.jpg', 'Me encanta la fotografía', 'https://www.facebook.com/', 15),
(13, 'profiles/sandra.jpg', 'Me gusta hacer tutoriales de tics en youtube', 'https://www.youtube.com/channel/UCqs9jQBtkNAGumaPwcpxdFA', 16),
(14, 'profiles/lupe.jpg', 'Soy divertida y me gusta ir de fiesta', 'https://www.facebook.com/', 17),
(15, 'profiles/dulce.jpg', 'Me gusta conocer a las personas', 'https://www.facebook.com/', 18),
(16, 'profiles/maria.jpg', 'Soy Colombiana y me gusta visitar México por sus centros turisticos', NULL, 19),
(17, 'profiles/carmen.jpg', 'Soy secretaria y estoy estudiando tics', NULL, 20),
(18, 'profiles/liz.jpg', 'Soy estudiante de la UPAED', NULL, 21),
(19, 'profiles/estela.jpg', 'Tengo 30 años y vico en Argentina', NULL, 22),
(20, 'profiles/mario.jpg', 'Me gusta la fotografía y captar momentos únicos', NULL, 23),
(21, 'profiles/angel.jpg', 'Soy muy divertido, hablo tres idiomas', NULL, 24),
(22, 'profiles/eduardo.jpg', 'Me gusta ir a conciertos', NULL, 25),
(23, 'profiles/pablo.jpg', 'Soy un viajero', NULL, 26),
(24, 'profiles/andrea.jpg', 'Me encanta el mar', NULL, 27),
(25, 'profiles/felipe.jpg', 'Soy amante de la naturaleza', NULL, 28),
(26, 'profiles/toño.jpg', 'Me gusta viajar y conocer personas', NULL, 29),
(27, 'profiles/carla.jpg', 'Soy Licenciada en Administración de empresas', NULL, 30),
(28, 'profiles/mauricio.jpg', 'Me gusta el diseño grafico', NULL, 31),
(29, 'profiles/jose.jpg', 'Me gusta el rock', NULL, 32);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messenger_message_user_id_44204cf3_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_messages_thread_id_message_id_bb58b3ca_uniq` (`thread_id`,`message_id`),
  ADD KEY `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` (`message_id`);

--
-- Indices de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_users_thread_id_user_id_d8023aff_uniq` (`thread_id`,`user_id`),
  ADD KEY `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD CONSTRAINT `messenger_message_user_id_44204cf3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD CONSTRAINT `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` FOREIGN KEY (`message_id`) REFERENCES `messenger_message` (`id`),
  ADD CONSTRAINT `messenger_thread_mes_thread_id_a70e3887_fk_messenger` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`);

--
-- Filtros para la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD CONSTRAINT `messenger_thread_users_thread_id_8c4fd4f2_fk_messenger_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`),
  ADD CONSTRAINT `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD CONSTRAINT `registration_profile_user_id_e133ce43_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
