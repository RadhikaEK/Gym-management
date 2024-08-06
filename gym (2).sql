-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 08:15 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `ass_trainer`
--

CREATE TABLE `ass_trainer` (
  `ass_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ass_trainer`
--

INSERT INTO `ass_trainer` (`ass_id`, `u_id`, `g_id`) VALUES
(1, 1, 2),
(2, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(24, 'Can view session', 6, 'view_session');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `ch_id` int(11) NOT NULL,
  `chat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`ch_id`, `chat`) VALUES
(1, 'hiii'),
(2, 'ok'),
(3, 'ok'),
(4, 'ok'),
(5, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-10 11:21:29.196170'),
(2, 'auth', '0001_initial', '2021-02-10 11:21:29.670898'),
(3, 'admin', '0001_initial', '2021-02-10 11:21:30.402310'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-10 11:21:30.567520'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-10 11:21:30.589502'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-10 11:21:30.752283'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-10 11:21:30.793266'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-10 11:21:30.841235'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-10 11:21:30.869218'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-10 11:21:30.939784'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-10 11:21:30.947645'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-10 11:21:30.968734'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-10 11:21:31.002715'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-10 11:21:31.046073'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-10 11:21:31.094045'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-10 11:21:31.124027'),
(17, 'sessions', '0001_initial', '2021-02-10 11:21:31.204981');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8o47xdykqa0c03ypkp80fo1ur2gualyx', 'eyJ1aWQiOjF9:1oF85t:cvyUpZ0XCrRTy1uqnNCoCnMqQLKEptXfU5c0hKXFEio', '2022-08-06 05:54:29.139350'),
('gyu403wnaoqso1zthzb0bkmhgtzacwcn', 'MTEzOTNhM2FhNmYwYjYwNDAwOGI1ODA0MjA5OGE0ZGU1NGY5MzYwZjp7InVpZCI6Mn0=', '2021-02-25 15:50:24.156017'),
('k1ggr7znwgobpsqzh5kbthb64xil16wk', 'eyJ1aWQiOjE1fQ:1oDN4o:4tRKjm2uYALL6OXFAVPP9m0Bi4Qtf4srrptjvhV-LmM', '2022-08-01 09:30:06.722970'),
('ollliz337gsjv8loppf1odxhnhvav3f9', 'eyJ1aWQiOjJ9:1oCEfa:PmeN9j0LcBuLnHxntY_DXpdHIqQa-WwNVWD-8bKdbBk', '2022-07-29 06:19:22.443185'),
('s3tm6nfdp5jhe33ahtfapq8jmw1m6322', 'MTEzOTNhM2FhNmYwYjYwNDAwOGI1ODA0MjA5OGE0ZGU1NGY5MzYwZjp7InVpZCI6Mn0=', '2021-02-24 16:05:00.447845');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `feedback` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `reply` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `feedback`, `date`, `time`, `reply`) VALUES
(1, 'jghjgljh', '2020-01-04', '00:00:06', 'aaa'),
(2, 'good App', '2021-02-11', '21:02:44', ''),
(3, 'jjj', '2022-07-15', '16:41:16', '');

-- --------------------------------------------------------

--
-- Table structure for table `gym_details`
--

CREATE TABLE `gym_details` (
  `g_id` int(11) NOT NULL,
  `gym_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `location` varchar(30) NOT NULL,
  `phn_number` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gym_details`
--

INSERT INTO `gym_details` (`g_id`, `gym_name`, `password`, `location`, `phn_number`, `email`, `branch`, `status`) VALUES
(2, 'Belly Gym', '', 'Calicut', '9746987732', 'itsme.godly.gm@gmail.com', 'Calicut', 'reject'),
(3, 'abhi', 'abhi', 'kozhikode', '7558229613', 'abhi@gmail.com', 'aaaa', ''),
(4, 't', 't', 'kozhikode', '7558229613', 'ab@gmail.com', 'aaaa', ''),
(5, 'abcd', 't', 'a', '7558229613', 'ab@gmail.com', 'cg', ''),
(6, 'abcd', 't', 'a', '7558229613', 'ab@gmail.com', 'cg', ''),
(7, 't1', 't1', 'abc', '7558229613', 'ab@gmail.com', 'aaaa', '');

-- --------------------------------------------------------

--
-- Table structure for table `gym_package`
--

CREATE TABLE `gym_package` (
  `gp_id` int(11) NOT NULL,
  `gym_id` int(11) NOT NULL,
  `package` varchar(30) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `fee` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gym_package`
--

INSERT INTO `gym_package` (`gp_id`, `gym_id`, `package`, `duration`, `fee`, `description`) VALUES
(2, 1, 'slim', '1 year', '2000', 'aaaaa'),
(5, 2, 'fact', '1 year', '12300', 'pqrs');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `username`, `password`, `type`, `uid`) VALUES
(1, 'admin', 'admin', 'admin', 0),
(2, 'gm', 'gm', 'gym', 2),
(4, 'u', 'u', 'user', 1),
(5, 'uu', 'uu', 'user', 15),
(6, 'abcd', 't', 'gym', 1),
(7, 't1', 't1', 'gym', 7);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL,
  `gp_id` int(11) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`p_id`, `u_id`, `g_id`, `gp_id`, `amount`, `date`, `time`) VALUES
(1, 1, 2, 2, '8776', '2020-01-04', '00:00:06'),
(2, 1, 2, 2, '5000', '2021-02-12', '00:51:03'),
(3, 1, 1, 1, '500', '2022-07-16', '11:38:58'),
(4, 1, 2, 2, '340', '2022-07-16', '14:20:09'),
(5, 1, 2, 2, '500', '2022-07-16', '14:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`) VALUES
(1, 'aa', 120);

-- --------------------------------------------------------

--
-- Table structure for table `shedule_trainer`
--

CREATE TABLE `shedule_trainer` (
  `shedule_id` int(10) NOT NULL,
  `g_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shedule_trainer`
--

INSERT INTO `shedule_trainer` (`shedule_id`, `g_id`, `date`, `time`) VALUES
(1, 1, '2022-07-19', '12:40:00.000000'),
(2, 2, '2022-06-29', '14:56:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `weight` varchar(20) NOT NULL,
  `height` varchar(30) NOT NULL,
  `body_type` varchar(30) NOT NULL,
  `fat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `username`, `password`, `age`, `gender`, `weight`, `height`, `body_type`, `fat`) VALUES
(1, 'Gm', '', 22, 'Male', '60', '167', 'Medium', 'Medium'),
(5, 'Godly', '', 7, 'male', '70', '176', 'gym', '687hy'),
(6, 'abcd', '', 24, 'male', '22', '153', 'aa', 'bb'),
(7, 'anju', '', 24, 'female', '43', '152', 'ee', 'aaaa'),
(8, 'ammu', 'ammu', 24, 'female', '150', '32', 'aa', 'ee'),
(9, 'anju1', 'anju', 25, 'female', '33', '154', 'qq', 'aa'),
(10, 'anju1', 'anju', 25, 'female', '32', '156', 'qq', 'aa'),
(11, 'rr', 'rr', 22, 'female', '95', '125', 'aaa', 'yes'),
(12, 'ab', 'ab', 23, 'male', '54', '156', 'aaa', 'ok'),
(13, 'uu', 'uu', 20, 'male', '40', '172', 'aaa', 'ok'),
(14, 'uu', 'uu', 20, 'male', '40', '172', 'aaa', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `wrkout_details`
--

CREATE TABLE `wrkout_details` (
  `w_id` int(11) NOT NULL,
  `workout_name` varchar(30) NOT NULL,
  `video` varchar(100) NOT NULL,
  `details` varchar(100) NOT NULL,
  `gym_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wrkout_details`
--

INSERT INTO `wrkout_details` (`w_id`, `workout_name`, `video`, `details`, `gym_id`) VALUES
(1, 'abcdf', '20210502231013.mp4', 'aaaaaaaaeeeee', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ass_trainer`
--
ALTER TABLE `ass_trainer`
  ADD PRIMARY KEY (`ass_id`);

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
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`ch_id`);

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
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `gym_details`
--
ALTER TABLE `gym_details`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `gym_package`
--
ALTER TABLE `gym_package`
  ADD PRIMARY KEY (`gp_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `shedule_trainer`
--
ALTER TABLE `shedule_trainer`
  ADD PRIMARY KEY (`shedule_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `wrkout_details`
--
ALTER TABLE `wrkout_details`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ass_trainer`
--
ALTER TABLE `ass_trainer`
  MODIFY `ass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `ch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gym_details`
--
ALTER TABLE `gym_details`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gym_package`
--
ALTER TABLE `gym_package`
  MODIFY `gp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shedule_trainer`
--
ALTER TABLE `shedule_trainer`
  MODIFY `shedule_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wrkout_details`
--
ALTER TABLE `wrkout_details`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
