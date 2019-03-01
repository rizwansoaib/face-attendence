-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2019 at 09:14 AM
-- Server version: 5.7.24
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knit`
--

-- --------------------------------------------------------

--
-- Table structure for table `at`
--

CREATE TABLE `at` (
  `roll` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `at`
--

INSERT INTO `at` (`roll`) VALUES
(21),
(21),
(21);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add stauth', 9, 'add_stauth'),
(30, 'Can change stauth', 9, 'change_stauth'),
(31, 'Can delete stauth', 9, 'delete_stauth'),
(32, 'Can view stauth', 9, 'view_stauth'),
(33, 'Can add tauth', 10, 'add_tauth'),
(34, 'Can change tauth', 10, 'change_tauth'),
(35, 'Can delete tauth', 10, 'delete_tauth'),
(36, 'Can view tauth', 10, 'view_tauth'),
(37, 'Can add csp', 11, 'add_csp'),
(38, 'Can change csp', 11, 'change_csp'),
(39, 'Can delete csp', 11, 'delete_csp'),
(40, 'Can view csp', 11, 'view_csp');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `mobile`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(4, 'pbkdf2_sha256$120000$4n8tR9qh4OM5$8R9QSRZOWbzLDxnaDrZBQR01Vy41LExEMafmNOrobPc=', NULL, NULL, 0, '1234', '', '', 'gullu@gmail.com', 0, 1, '2019-02-24 15:28:10.252148'),
(5, 'pbkdf2_sha256$120000$PPEFR5kf7mlV$9oSPPXsHvEwiVU3DIQYlT/usREr2IfgUYvaxSe+Hxbc=', NULL, NULL, 0, '12345', '', '', 'fuck@fuck.com', 0, 1, '2019-02-24 15:35:05.281550'),
(6, 'pbkdf2_sha256$120000$7qsuqW1Lhk0e$sn5bmJZT0bPUrhiBgP2AVc7038r783Zf+BEdCMzEdS8=', NULL, '2019-02-24 15:58:46.521360', 1, 'rizwan', '', '', 'rizwansoaib@gmail.com', 1, 1, '2019-02-24 15:58:30.483635');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `csp`
--

CREATE TABLE `csp` (
  `id` int(11) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `kcs601` varchar(100) NOT NULL,
  `kcs602` varchar(100) NOT NULL,
  `kcs603` varchar(100) NOT NULL,
  `kcs604` varchar(100) NOT NULL,
  `kcs605` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `csp`
--

INSERT INTO `csp` (`id`, `roll`, `name`, `kcs601`, `kcs602`, `kcs603`, `kcs604`, `kcs605`) VALUES
(1, '178200', 'check', '0', '0', '0', '0', '0'),
(2, '178201', 'ANKIT SAINI', '0', '0', '0', '0', '0'),
(3, '178202', 'AVNISH PRATAP SINGH', '8', '0', '0', '0', '0\r\n'),
(4, '178203', 'DIWAKAR JAISWAL', '8', '0', '0', '0', '0'),
(5, '178204', 'GHULAM MOHIYUDDIN', '33', '0', '0', '0', '5'),
(6, '178205', 'KAVITA KUMARI', '1', '0', '0', '0', '0'),
(7, '178206', 'PRASHANT BADAL', '9', '0', '0', '0', '0'),
(8, '178207', 'RAHUL YADAV', '9', '0', '0', '0', '0'),
(9, '178208', 'RIZWAN AHMAD', '20', '0', '0', '0', '5'),
(10, '178209', 'SADHNA TIWARI', '1', '0', '0', '0', '0'),
(11, '178210', 'SHAILESH YADAV', '12', '0', '0', '0', '0'),
(12, '178211', 'UQBA JABEEN', '1', '0', '0', '0', '0'),
(13, '178212', 'VINEET MAURYA', '8', '0', '0', '0', '0'),
(14, '16230', 'KUMAR SHIVANG', '3', '0', '0', '0', '0'),
(15, '16231', 'KUNWAR KARAN SINGH', '3', '0', '0', '0', '0'),
(16, '16232', 'MRITUNJAY KUMAR', '3', '0', '0', '0', '0'),
(18, '16233', 'NIKHIL PANDEY', '2', '0', '0', '0', '0'),
(19, '16234', 'PAWAN MISHRA', '0', '0', '0', '0', '0'),
(20, '16235', 'PIYUSH OJHA', '0', '0', '0', '0', '0'),
(21, '16236', 'NOT AVAILABLE', '0', '0', '0', '0', '0'),
(22, '16237', 'PRAKHAR PRATAP SINGH', '1', '0', '0', '0', '0'),
(23, '16238', 'PRASHANT DWIVEDI', '6', '0', '0', '0', '0'),
(24, '16239', 'PRASHANT SINGH', '0', '0', '0', '0', '0'),
(25, '16240', 'PRERNA AGARWAL ', '3', '0', '0', '0', '0'),
(28, '16241', 'PRIYANKA SHARMA', '0', '0', '0', '0', '0'),
(29, '16242', 'PRIYENDU SINGH', '0', '0', '0', '0', '0'),
(30, '16243', 'RAJ SRIVASTAVA', '0', '0', '0', '0', '0'),
(31, '16244', 'NOT AVAILABLE', '0', '0', '0', '0', '0'),
(32, '16245', 'RANVIR YADAV', '0', '0', '0', '0', '0'),
(33, '16246', 'ROHIT KUMAR GAUTAM', '4', '0', '0', '0', '0'),
(34, '16247', 'NOT AVAILABLE', '0', '0', '0', '0', '0'),
(35, '16248', 'SACHIN DEV VERMA', '0', '0', '0', '0', '0'),
(36, '16249', 'SHAILENDRA KUMAR', '3', '0', '0', '0', '0'),
(37, '16250', 'SINGH SHUBHAMSINGH SANJAY SINGH', '1', '0', '0', '0', '0'),
(38, '16251', 'SHUBHAM SINGH', '1', '0', '0', '0', '0'),
(39, '16252', 'TEJASWI VERMA', '0', '0', '0', '0', '0'),
(40, '16253', 'VARUN UPADHYAY', '0', '0', '0', '0', '0'),
(41, '16254', 'VEDAS JAISWAL', '0', '0', '0', '0', '0'),
(42, '16255', 'VIJAY GOND', '0', '0', '0', '0', '0'),
(43, '16256', 'VINAY KUMAR', '0', '0', '0', '0', '0'),
(44, '16257', 'VINEET CHAUHAN', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`name`, `address`) VALUES
('John', 'Highway 21');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-02-24 15:59:21.990777', '1', '111782', 1, '[{\"added\": {}}]', 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'face\r\n', 'cse'),
(11, 'face', 'csp'),
(9, 'face', 'stauth'),
(10, 'face', 'tauth'),
(7, 'myapp', 'student'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-02-24 14:53:39.783929'),
(2, 'auth', '0001_initial', '2019-02-24 14:53:40.516108'),
(3, 'admin', '0001_initial', '2019-02-24 14:53:40.715999'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-02-24 14:53:40.749128'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-02-24 14:53:40.765766'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-02-24 14:53:40.874201'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-02-24 14:53:41.219983'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-02-24 14:53:41.280876'),
(9, 'auth', '0004_alter_user_username_opts', '2019-02-24 14:53:41.312290'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-02-24 14:53:41.354699'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-02-24 14:53:41.358807'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-02-24 14:53:41.370502'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-02-24 14:53:41.425975'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-02-24 14:53:41.485338'),
(15, 'myapp', '0001_initial', '2019-02-24 14:53:41.516152'),
(16, 'sessions', '0001_initial', '2019-02-24 14:53:41.574445'),
(17, 'face', '0001_initial', '2019-02-25 10:03:01.772048'),
(18, 'face', '0002_tauth', '2019-02-25 12:57:54.753908'),
(19, 'face', '0003_auto_20190225_1300', '2019-02-25 13:00:26.840362'),
(20, 'face', '0004_csp', '2019-02-25 14:56:13.728471');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('q5fkgomejbxmm6cjy84ggttoh05ouyx6', 'MDg0MTdmYzBkODhhNGM3Mzg5ZDFjY2FiMjViNmQxODZhMzcyMTVmNjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MzhlYjUwN2I5OTM1NGQwMzJiY2FlNWUxMWMxMGIyZTUzYjQyMzkzIn0=', '2019-03-10 15:58:46.529056');

-- --------------------------------------------------------

--
-- Table structure for table `face_cse`
--

CREATE TABLE `face_cse` (
  `roll` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_student`
--

CREATE TABLE `myapp_student` (
  `id` int(11) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myapp_student`
--

INSERT INTO `myapp_student` (`id`, `roll`, `email`, `password`, `mobile`) VALUES
(1, '111782', 'rizwansoaib@gmail.com', '1111', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `stauth`
--

CREATE TABLE `stauth` (
  `id` int(11) NOT NULL,
  `roll` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stauth`
--

INSERT INTO `stauth` (`id`, `roll`, `email`, `password`, `mobile`) VALUES
(2, '178208', 'rizwansoaib@gmail.com', 'fuckingpassword', '8115168763');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `NAME` varchar(20) NOT NULL,
  `ROLL NO.` int(11) NOT NULL,
  `ATTENDENCE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`NAME`, `ROLL NO.`, `ATTENDENCE`) VALUES
('gullu', 12342, 8),
('ANKIT SAINI', 178201, 0),
('AVNEESH', 178202, 1),
('DIWKAR', 178203, 1),
('GHULAM', 178221, 1),
('GHULAM', 178222, 1),
('GHULAM', 178321, 1),
('GHULAM', 178521, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tauth`
--

CREATE TABLE `tauth` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tauth`
--

INSERT INTO `tauth` (`id`, `username`, `email`, `mobile`, `password`) VALUES
(1, 'rizwan', 'rizwansoaib@gmail.com', '8115168763', 'fuckingpassword'),
(2, '1', '1', '1', '1');

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
-- Indexes for table `csp`
--
ALTER TABLE `csp`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `myapp_student`
--
ALTER TABLE `myapp_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stauth`
--
ALTER TABLE `stauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll` (`roll`),
  ADD UNIQUE KEY `roll_2` (`roll`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ROLL NO.`);

--
-- Indexes for table `tauth`
--
ALTER TABLE `tauth`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `csp`
--
ALTER TABLE `csp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `myapp_student`
--
ALTER TABLE `myapp_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stauth`
--
ALTER TABLE `stauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tauth`
--
ALTER TABLE `tauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
