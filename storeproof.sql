-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2024 a las 23:42:42
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `storeproof`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add usuario', 7, 'add_usuario'),
(26, 'Can change usuario', 7, 'change_usuario'),
(27, 'Can delete usuario', 7, 'delete_usuario'),
(28, 'Can view usuario', 7, 'view_usuario'),
(29, 'Can add usuario', 8, 'add_usuario'),
(30, 'Can change usuario', 8, 'change_usuario'),
(31, 'Can delete usuario', 8, 'delete_usuario'),
(32, 'Can view usuario', 8, 'view_usuario'),
(33, 'Can add categoria', 9, 'add_categoria'),
(34, 'Can change categoria', 9, 'change_categoria'),
(35, 'Can delete categoria', 9, 'delete_categoria'),
(36, 'Can view categoria', 9, 'view_categoria'),
(37, 'Can add marca', 10, 'add_marca'),
(38, 'Can change marca', 10, 'change_marca'),
(39, 'Can delete marca', 10, 'delete_marca'),
(40, 'Can view marca', 10, 'view_marca'),
(41, 'Can add tipodocumento', 11, 'add_tipodocumento'),
(42, 'Can change tipodocumento', 11, 'change_tipodocumento'),
(43, 'Can delete tipodocumento', 11, 'delete_tipodocumento'),
(44, 'Can view tipodocumento', 11, 'view_tipodocumento'),
(45, 'Can add producto', 12, 'add_producto'),
(46, 'Can change producto', 12, 'change_producto'),
(47, 'Can delete producto', 12, 'delete_producto'),
(48, 'Can view producto', 12, 'view_producto'),
(49, 'Can add detalles prod', 13, 'add_detallesprod'),
(50, 'Can change detalles prod', 13, 'change_detallesprod'),
(51, 'Can delete detalles prod', 13, 'delete_detallesprod'),
(52, 'Can view detalles prod', 13, 'view_detallesprod');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$3efyo1oZDpAgCScDYzkdwZ$Zfe43AqR/5gRyw3gdR9mRSfQGSPPQl3dMUWilNq+dRQ=', '2024-04-08 18:15:26.404007', 1, 'sebas', '', '', 'sebastianramirez0309@gmail.com', 1, 1, '2024-04-07 23:55:53.537448');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `NomCat` varchar(100) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `NomCat`, `estado`) VALUES
(11, 'Mouse', 1),
(12, 'Teclado', 1),
(13, 'Pantalla', 1),
(14, 'Audifono', 1),
(15, 'Memoria RAM', 1),
(16, 'Celular', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesprod`
--

CREATE TABLE `detallesprod` (
  `idDetalleProd` int(11) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `peso` varchar(20) DEFAULT NULL,
  `dimensiones` varchar(50) DEFAULT NULL,
  `imgExtra` varchar(200) DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL,
  `serial` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detallesprod`
--

INSERT INTO `detallesprod` (`idDetalleProd`, `color`, `peso`, `dimensiones`, `imgExtra`, `idProduct`, `serial`) VALUES
(1, 'negro', '50gr', '', NULL, 7, '1234567889'),
(4, 'negro', '50gr', '', '', 7, 'sfjhasdklfjskld'),
(5, 'rojo', '30gr', '', '', 7, 'asdasdas'),
(6, 'blnaco', '30gr', '', '', 7, 'sadasdas'),
(8, 'negro', '', '4x5cms', '', 7, '1234567889'),
(9, 'rojo', '30gr', '4x5cms', '', 7, '1234567889'),
(10, 'amarillo', '30gr', '4x5cms', '', 7, '1234567889'),
(11, 'amarillo', '30gr', '4x5cms', '', 7, '1234567889'),
(12, 'naranja', '30gr', '4x5cms', '', 7, '1234567889'),
(13, 'naranja', '30gr', '4x5cms', '', 7, '1234567889'),
(14, 'negro', 'No aplica', 'No aplica', '', 8, 'AOC 142563'),
(15, 'No aplica', 'No aplica', 'No aplica', '', 9, 'lmxxx1234'),
(16, 'No aplica', 'No aplica', 'No aplica', '', 11, 'ghi12345'),
(17, 'No aplica', 'No aplica', 'No aplica', '', 10, '1547891231'),
(18, 'negro', '30gr', '4x5cms', '', 7, '1234567889'),
(19, 'negro', '30gr', '4x5cms', '', 7, 'Logi777Xplus'),
(20, 'No aplica', 'No aplica', 'No aplica', '', 15, 'A125'),
(21, 'negro', '30gr', 'No aplica', '', 7, 'Logi777Xplus'),
(22, 'No aplica', 'No aplica', 'No aplica', '', 9, 'lmxxx1234'),
(23, 'negro', '30gr', 'No aplica', '', 7, 'Logi777Xplus'),
(24, 'No aplica', 'No aplica', 'No aplica', '', 15, 'A125'),
(25, 'blanco', 'No aplica', 'No aplica', '', 16, 'ajdfhsajkdfh');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-08 02:57:58.189797', '1', 'Usuario object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-04-09 16:21:24.549784', '1', 'Producto object (1)', 1, '[{\"added\": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'Admin', 'categoria'),
(13, 'Admin', 'detallesprod'),
(1, 'admin', 'logentry'),
(10, 'Admin', 'marca'),
(12, 'Admin', 'producto'),
(11, 'Admin', 'tipodocumento'),
(8, 'Admin', 'usuario'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'Usuarios', 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-07 23:54:32.855015'),
(2, 'auth', '0001_initial', '2024-04-07 23:54:33.094876'),
(3, 'admin', '0001_initial', '2024-04-07 23:54:33.162037'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-07 23:54:33.173603'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-07 23:54:33.184186'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-07 23:54:33.227800'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-07 23:54:33.258840'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-07 23:54:33.304728'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-07 23:54:33.309726'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-07 23:54:33.329630'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-07 23:54:33.331641'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-07 23:54:33.338180'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-07 23:54:33.348717'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-07 23:54:33.415194'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-07 23:54:33.428211'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-07 23:54:33.434227'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-07 23:54:33.449582'),
(18, 'sessions', '0001_initial', '2024-04-07 23:54:33.471584'),
(19, 'Usuarios', '0001_initial', '2024-04-08 02:55:01.870897'),
(20, 'Admin', '0001_initial', '2024-04-08 13:40:37.386700'),
(21, 'Admin', '0002_categoria', '2024-04-08 13:40:37.391710'),
(22, 'Admin', '0003_marca', '2024-04-08 14:36:13.166557'),
(23, 'Admin', '0004_tipodocumento', '2024-04-08 18:14:44.476140'),
(24, 'Admin', '0002_alter_usuario_options', '2024-04-08 21:17:15.963284'),
(25, 'Admin', '0003_alter_usuario_options', '2024-04-08 21:25:34.406329'),
(26, 'Admin', '0004_producto', '2024-04-09 14:43:56.843560'),
(27, 'Admin', '0005_alter_producto_options', '2024-04-09 15:15:57.272478'),
(28, 'Admin', '0002_detallesprod_alter_producto_options', '2024-04-10 13:57:46.960168');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('17aron1rr4kxhbncvzqyrnu8p40tk8ht', 'eyJpZFVzZXIiOjR9:1rv2B9:9jf5JIgFFjmE-F5MYNJxLEn_DRf_dsLrpuNFf8X0FJg', '2024-04-25 21:41:55.854945');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idMarca` int(11) NOT NULL,
  `nomMarca` varchar(100) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idMarca`, `nomMarca`, `estado`) VALUES
(2, 'Hp', 1),
(3, 'Lenovo', 1),
(4, 'Logitech', 1),
(5, 'Samsung', 1),
(6, 'Acer', 1),
(7, 'Asus', 1),
(8, 'Huawei', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `nomProd` varchar(100) DEFAULT NULL,
  `descProd` varchar(255) DEFAULT NULL,
  `idMarca` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `PrecioProd` float DEFAULT NULL,
  `StockProd` int(11) DEFAULT NULL,
  `imgProd` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`idProduct`, `nomProd`, `descProd`, `idMarca`, `idCategoria`, `PrecioProd`, `StockProd`, `imgProd`, `estado`) VALUES
(7, 'Xst670', 'Un mouse ultramente ergonómico y bien cuidado para un buen uso', 4, 11, 165000, 9, 'imagenesProd/plasma-hero-carbon-gallery-3.webp', 1),
(8, 'lliroajskdfj', 'asdfasdfsd', 6, 12, 589000, 63, 'imagenesProd/teclado.webp', 1),
(9, '142', 'asjfhjkasdhfashfjkd', 3, 11, 412000, 55, 'imagenesProd/specs-img.jpg', 1),
(10, 'ddr3 memory', 'esta es una memoria con un muy buen rendiemiento', 7, 15, 590000, 42, 'imagenesProd/ram.jpg', 1),
(11, 'monito 4k 120pg', 'monitor que poryecta mas de 150 colores distintos', 5, 13, 587000, 56, 'imagenesProd/monitorhp.avif', 1),
(13, 'sajhdfksadhfkj', 'este es un mouse ergonomico con un muy buen manejo', 6, 11, 56000, 4, 'imagenesProd/mousehavit.webp', 1),
(15, 'Celular Samsung', 'Lo ultimo que lanzo al mercado la gran marca coreana', 5, 16, 1200000, 40, 'imagenesProd/imagen4.png', 1),
(16, 'prueba', 'sjkdnkljsnfkldsnfkldsn', 8, 13, 165000, 36, 'imagenesProd/imagen7.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `idTipDoc` int(11) NOT NULL,
  `nomTipDoc` varchar(100) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `codTipDoc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`idTipDoc`, `nomTipDoc`, `estado`, `codTipDoc`) VALUES
(1, 'Cedula de Ciudadania', 1, 'CC'),
(2, 'Cedula de Extranjeria', 1, 'CE'),
(3, 'Tarjeta de Identidad', 1, 'TI'),
(4, 'Pasaporte', 1, 'PA'),
(5, 'Registro Civil', 1, 'RV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `nomUser` varchar(100) DEFAULT NULL,
  `apelUser` varchar(100) DEFAULT NULL,
  `idTipDoc` int(11) DEFAULT NULL,
  `numDocUser` varchar(20) DEFAULT NULL,
  `CorreoUser` varchar(150) DEFAULT NULL,
  `Pass` varchar(40) DEFAULT NULL,
  `DirUser` varchar(150) DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`idUser`, `nomUser`, `apelUser`, `idTipDoc`, `numDocUser`, `CorreoUser`, `Pass`, `DirUser`, `estado`, `rol`) VALUES
(3, 'Luisa Fernanda', 'Ariza Espinel', 1, '1000726533', 'luisafernanda@gmail.com', '123456789', 'transversal 36 sads', 1, 2),
(4, 'Juan Sebastian', 'Ramirez Solano', 1, '1000726533', 'sebastianramirez0309@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'tv 37 # 58 c 50 sur', 1, 1),
(5, 'Maria Fernanda', 'Ospina Rocha', 2, '1478945156', 'mafe@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Calle falsa 123', 1, 2),
(6, 'Claudia Lilian', 'Solano ', 1, '52874760', 'claudia123456gmail.com', '(\'c2d628ba98ed491776c9335e988e2e3b\',)', 'transvs 45 sur', 1, 2),
(7, 'Daniel Stiven', 'Gonzalez Suarez', 1, '1024536896', 'gonzo@gmail.com', '12345689', 'Calle norte 12345', 1, 2),
(8, 'Karol Viviana', 'Rojas Pinilla', 1, '147895623', 'viviana@gmail.com', '123456789', 'calle 40 s', 1, 2),
(12, 'prueba', 'asdasdsa', 1, '123456789', 'sadsad@mail.com', 'c2d628ba98ed491776c9335e988e2e3b', 'transversal 36 sads', 1, 2),
(13, 'jose Alejandro', 'Ariza', 1, '1014526325', 'sdasd@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'calle prueba', 1, 2),
(14, 'asda', 'asdas', 3, '12345678', 'sebsatianramirez0309@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'tarasdsa 34 ', 1, 2);

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
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `detallesprod`
--
ALTER TABLE `detallesprod`
  ADD PRIMARY KEY (`idDetalleProd`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idMarca`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `fk_marca` (`idMarca`),
  ADD KEY `fk_categoria` (`idCategoria`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`idTipDoc`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `fk_tipodocumento` (`idTipDoc`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `detallesprod`
--
ALTER TABLE `detallesprod`
  MODIFY `idDetalleProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `idTipDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- Filtros para la tabla `detallesprod`
--
ALTER TABLE `detallesprod`
  ADD CONSTRAINT `detallesprod_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`idProduct`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  ADD CONSTRAINT `fk_marca` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_tipodocumento` FOREIGN KEY (`idTipDoc`) REFERENCES `tipodocumento` (`idTipDoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
