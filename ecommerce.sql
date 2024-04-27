-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 03:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$QOar9nRpxmKcTSjEshJ6KR$CjQHbIfNuPpiGWh0qhWO5R2ggACNShIMJiAXheDm6mk=', '2024-04-27 10:55:55.165726', 1, 'admin', '', '', 'admin@mail.com', 1, 1, '2024-04-27 10:55:14.305393');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-27 11:03:01.203477', '1', 'ASUS ROG STRIX G17 G713RC RYZEN 7 6800H 32GB 1TB RTX3050 4GB 15.6FHD - 16GB 512SSD', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-04-27 11:04:21.238272', '2', 'Lenovo Ideapad Gaming 3 Ryzen 5 5500H 8GB 512SSD RTX2050 4GB 144Hz - RAM 8GB, SSD 512GB', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-04-27 11:42:53.347550', '2', 'Lenovo Ideapad Gaming 3 Ryzen 5 5500H 8GB 512SSD RTX2050 4GB 144Hz - RAM 8GB, SSD 512GB', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]', 7, 1),
(4, '2024-04-27 11:43:07.266216', '1', 'ASUS ROG STRIX G17 G713RC RYZEN 7 6800H 32GB 1TB RTX3050 4GB 15.6FHD - 16GB 512SSD', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]', 7, 1),
(5, '2024-04-27 13:00:08.658007', '3', 'HP OMEN 16-B0172TX GeForce RTX™ 3060 Ci7-11800H 16GB/1TB SSD', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-04-27 13:32:05.853704', '2', 'Lenovo Ideapad Gaming 3 Ryzen 5 5500H 8GB 512SSD RTX2050 4GB 144Hz - RAM 8GB, SSD 512GB', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'products', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-27 06:43:09.743772'),
(2, 'auth', '0001_initial', '2024-04-27 06:43:10.084594'),
(3, 'admin', '0001_initial', '2024-04-27 06:43:10.167818'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-27 06:43:10.172820'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-27 06:43:10.178934'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-27 06:43:10.231046'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-27 06:43:10.271782'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-27 06:43:10.284673'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-27 06:43:10.291594'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-27 06:43:10.352069'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-27 06:43:10.353770'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-27 06:43:10.359310'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-27 06:43:10.370452'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-27 06:43:10.380989'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-27 06:43:10.394869'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-27 06:43:10.402238'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-27 06:43:10.414052'),
(18, 'sessions', '0001_initial', '2024-04-27 06:43:10.476835'),
(19, 'products', '0001_initial', '2024-04-27 07:24:27.739869'),
(20, 'products', '0002_product_image', '2024-04-27 07:40:51.456081'),
(21, 'products', '0003_rename_name_product_title_alter_product_image', '2024-04-27 11:39:02.098896'),
(22, 'products', '0004_product_name', '2024-04-27 11:42:08.141911');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cdzdh08d9lwrllaw88x50g1femimulos', '.eJxVjDsOwjAQBe_iGlmxHeMNJX3OEK33QwLIlvKpEHeHSCmgfTPzXmbAbR2HbZF5mNhcjDOn3y0jPaTsgO9YbtVSLes8Zbsr9qCL7SvL83q4fwcjLuO3FsY2koupwwgqXSDFkDH4RsA51QbAS6LA7TmDT0SQmLLrfERWDWDeH_2OOJ4:1s0fil:Y0kYn6-Riwd40tfCEHqelChd4-CW6SUMmsLq5klogLY', '2024-05-11 10:55:55.168604');

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `title`, `description`, `price`, `image`, `name`) VALUES
(1, 'ASUS ROG STRIX G17 G713RC RYZEN 7 6800H 32GB 1TB RTX3050 4GB 15.6FHD - 16GB 512SSD', 'Raise your game. Play with style.\r\n\r\n• CPU : AMD Ryzen™ 7 6800H Mobile Processor (8-core/16-thread, 20MB cache, up to 4.7 GHz max boost)\r\n• GPU : NVIDIA® GeForce RTX™ 3050 Laptop GPU 4GB GDDR6 ROG Boost: 1550MHz* at 95W (1500MHz Boost Clock+50MHz OC, 80W+15W Dynamic Boost)\r\n• Display : 17.3-inch FHD (1920 x 1080) 16:9; Brightness 250nits ; Refresh Rate 144Hz ; sRGB % 62.5% ; Adaptive-Sync\r\n• Memory : 16GB DDR5-4800 SO-DIMM (2x DDR5 SO-DIMM slots)\r\n• Storage : 512GB M.2 NVMe™ PCIe® SSD\r\n• Keyboard : Backlit Chiclet Keyboard 4-Zone RGB\r\n• OS : Windows 11 Home\r\n\r\n• I/O Ports\r\n1x 3.5mm Combo Audio Jack\r\n1x HDMI 2.0b\r\n1x USB 3.2 Gen 2 Type-C\r\n2x USB 3.2 Gen 1 Type-A\r\n1x USB 3.2 Gen 2 Type-C support DisplayPort™ / power delivery / G-SYNC\r\n1x 2.5G LAN port', 14790000.00, 'products/asus-rog-strix-g17-g713rc-ryzen-7-gaming-laptop-1500px-v1-0003.jpg', 'ASUS ROG STRIX G17 G713RC RYZEN 7 6800H 32GB 1TB RTX3050 4GB 15.6FHD - 16GB 512SSD'),
(2, 'Lenovo Ideapad Gaming 3 Ryzen 5 5500H 8GB 512SSD RTX2050 4GB 144Hz - RAM 8GB, SSD 512GB', 'PERFORMANCE\r\nProcessor: AMD Ryzen™ 5 5500H (4C / 8T, 3.3 / 4.2GHz, 2MB L2 / 8MB L3)\r\nGraphics: NVIDIA® GeForce RTX™ 2050 4GB GDDR6\r\nChipset: AMD SoC Platform\r\nMemory: 1x 8GB SO-DIMM DDR4-3200\r\nMemory Slots: Two DDR4 SO-DIMM slots, dual-channel capable\r\nMax Memory: Up to 16GB DDR4-3200 offering\r\nStorage: 512GB SSD M.2 2242 PCIe® 4.0x4 NVMe®\r\nStorage Support: Up to two drives, 2x M.2 SSD or 1x 2.5\" HDD + 1x M.2 SSD\r\n• 2.5\" HDD up to 1TB\r\n• M.2 2242 SSD up to 512GB\r\n• M.2 2280 SSD up to 1TB\r\nStorage Slot: One 2.5\" drive slot + two M.2 slots\r\n• One 2.5\" SATA HDD slot\r\n• One M.2 2242 PCIe® 3.0 x4 slot\r\n• One M.2 2280 PCIe 3.0 x2 slot\r\nHDD slot and M.2 2280 slot are used exclusively\r\nCard Reader: -\r\nOptical: -\r\nAudio Chip: High Definition (HD) Audio, Realtek® ALC3287 codec\r\nSpeakers: Stereo speakers, 2W x2, Nahimic Audio\r\nCamera: HD 720p with Privacy Shutter\r\nMicrophone: 2x, Array\r\nBattery: Integrated 45Wh\r\nPower Adapter: 135W Slim Tip (3-pin)\r\n\r\nDESIGN\r\nDisplay: 15.6\" FHD (1920x1080) IPS 300nits Anti-glare, 45% NTSC, 144Hz\r\nTouchscreen: -\r\nKeyboard: White Backlit, English\r\nCase Color: Shadow Black\r\nSurface Treatment: IMR (In-Mold Decoration by Roller)\r\nCase Material: PC-ABS (Top), PC-ABS (Bottom)\r\nDimensions (WxDxH): 359.6 x 251.9 x 24.2 mm (14.16 x 9.92 x 0.95 inches)\r\nWeight: Around 2.25 kg (4.96 lbs)\r\n\r\nSOFTWARE\r\nOperating System: Windows® 11 Home Single Language, English\r\nBundled Software: Office Home & Student 2021\r\n\r\nCONNECTIVITY\r\nEthernet: 100/1000M (RJ-45)\r\nWLAN + Bluetooth: Wi-Fi® 6, 11ax 2x2 + BT5.1\r\nSecurity Chip: Firmware TPM 2.0\r\nFingerprint Reader: -\r\nOther Security: Camera privacy shutter\r\n\r\nINTERFACE\r\n- 2x USB 3.2 Gen 1\r\n- 1x USB-C® 3.2 Gen 1 (support data transfer only)\r\n- 1x HDMI® 2.0\r\n- 1x Headphone / microphone combo jack (3.5mm)\r\n- 1x Ethernet (RJ-45)\r\n- 1x Power connector\r\n\r\nSERVICE\r\nWarranty: 2Y ADP - Idea NB Entry(ESS), 2Y Premium Care -IPENTRY (ESS)\r\nBundled Accessories: Backpack Lenovo Ideapad Gaming Modern GX41H70101\r\n\r\nCERTIFICATIONS\r\nGreen Certifications\r\n- ErP Lot 3\r\n- RoHS compliant', 9990000.00, 'media/products/befed31d-1aa5-44f8-8157-3beda964b306.jpg', 'Lenovo Ideapad Gaming 3 Ryzen 5 5500H 8GB 512SSD RTX2050 4GB 144Hz - RAM 8GB, SSD 512GB'),
(3, 'HP OMEN 16-B0172TX GeForce RTX™ 3060 Ci7-11800H 16GB/1TB SSD', 'Specification :\r\n\r\nGraphics : NVIDIA® GeForce RTX™ 3060 Laptop GPU (6 GB GDDR6 dedicated)\r\nProcessor : Intel® Core™ i7-11800H (up to 4.6 GHz with Intel® Turbo Boost Technology, 24 MB L3 cache, 8 cores, 16 threads)\r\nMemory : 16 GB DDR4-3200 MHz RAM (2 x 8 GB)\r\nStorage : 1 TB PCIe® NVMe™ TLC M.2 SSD\r\nDisplay : 40.9 cm (16.1\") diagonal, QHD (2560 x 1440), 165 Hz, 3 ms response time, IPS, micro-edge, anti-glare, Low Blue Light, 300 nits, 100% sRGB\r\nOperating system : Windows 11 Home\r\nBundled Software : Office Home Student\r\nWireless connectivity : Intel® Wi-Fi 6 AX201 (2x2) and Bluetooth® 5 combo (Supporting Gigabit data rate)\r\nNetwork interface : Integrated 10/100/1000 GbE LAN', 15999000.00, 'media/products/70c6be6d-eef9-47f7-9cc7-1ecf41573cee.jpg', 'HP OMEN 16-B0172TX GeForce RTX™ 3060 Ci7-11800H 16GB/1TB SSD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
