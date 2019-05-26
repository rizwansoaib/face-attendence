-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2019 at 11:29 PM
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
-- Database: `knit1`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `subject_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `present` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
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
(25, 'Can add attendance', 7, 'add_attendance'),
(26, 'Can change attendance', 7, 'change_attendance'),
(27, 'Can delete attendance', 7, 'delete_attendance'),
(28, 'Can view attendance', 7, 'view_attendance'),
(29, 'Can add branch', 8, 'add_branch'),
(30, 'Can change branch', 8, 'change_branch'),
(31, 'Can delete branch', 8, 'delete_branch'),
(32, 'Can view branch', 8, 'view_branch'),
(33, 'Can add csp', 9, 'add_csp'),
(34, 'Can change csp', 9, 'change_csp'),
(35, 'Can delete csp', 9, 'delete_csp'),
(36, 'Can view csp', 9, 'view_csp'),
(37, 'Can add stauth', 10, 'add_stauth'),
(38, 'Can change stauth', 10, 'change_stauth'),
(39, 'Can delete stauth', 10, 'delete_stauth'),
(40, 'Can view stauth', 10, 'view_stauth'),
(41, 'Can add student', 11, 'add_student'),
(42, 'Can change student', 11, 'change_student'),
(43, 'Can delete student', 11, 'delete_student'),
(44, 'Can view student', 11, 'view_student'),
(45, 'Can add subject', 12, 'add_subject'),
(46, 'Can change subject', 12, 'change_subject'),
(47, 'Can delete subject', 12, 'delete_subject'),
(48, 'Can view subject', 12, 'view_subject'),
(49, 'Can add tauth', 13, 'add_tauth'),
(50, 'Can change tauth', 13, 'change_tauth'),
(51, 'Can delete tauth', 13, 'delete_tauth'),
(52, 'Can view tauth', 13, 'view_tauth'),
(53, 'Can add teacher', 14, 'add_teacher'),
(54, 'Can change teacher', 14, 'change_teacher'),
(55, 'Can delete teacher', 14, 'delete_teacher'),
(56, 'Can view teacher', 14, 'view_teacher');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` varchar(100) NOT NULL,
  `branch_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`) VALUES
('1', 'CIVIL ENGINEERING'),
('2', 'COMPUTER SCIENCE ENGINEERING'),
('3', 'ELECTRICAL ENGINEERING'),
('4', 'ELECTRONICS ENGINEERING'),
('5', 'MECHANICAL ENGINEERING'),
('6', 'INFORMATION TECHNOLOGY\r\n');

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
(1, '178204', 'Ghulam Mohiyuddin', '', '', '', '', ''),
(2, '178205', 'Ghm Mohiyuddin', '', '', '', '', '');

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
(7, 'face', 'attendance'),
(8, 'face', 'branch'),
(9, 'face', 'csp'),
(10, 'face', 'stauth'),
(11, 'face', 'student'),
(12, 'face', 'subject'),
(13, 'face', 'tauth'),
(14, 'face', 'teacher'),
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
(1, 'contenttypes', '0001_initial', '2019-05-23 11:12:03.206944'),
(2, 'auth', '0001_initial', '2019-05-23 11:12:03.893887'),
(3, 'admin', '0001_initial', '2019-05-23 11:12:04.051123'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-05-23 11:12:04.079129'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-05-23 11:12:04.108645'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-05-23 11:12:04.223582'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-05-23 11:12:04.275285'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-05-23 11:12:04.330247'),
(9, 'auth', '0004_alter_user_username_opts', '2019-05-23 11:12:04.341747'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-05-23 11:12:04.389130'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-05-23 11:12:04.448284'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-05-23 11:12:04.488086'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-05-23 11:12:04.579188'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-05-23 11:12:04.642501'),
(15, 'face', '0001_initial', '2019-05-23 11:12:04.878279'),
(16, 'sessions', '0001_initial', '2019-05-23 11:12:04.971985'),
(17, 'face', '0002_auto_20190523_1130', '2019-05-23 11:30:59.923310'),
(18, 'auth', '0010_alter_group_name_max_length', '2019-05-25 04:46:57.066494'),
(19, 'auth', '0011_update_proxy_permissions', '2019-05-25 04:46:57.100866');

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
('80sf01bto49nsbcwgltpxxdnc8qyfa2r', 'OTU0Zjg2ODY1NTdkMDYzODA1YjEwNDdhYTVlNTgwOWRiYTQwMDIwZTp7InVzZXJuYW1lIjoiMSJ9', '2019-06-09 04:03:14.550612'),
('ejntudobhlh9nt7pou3qwjsw6zltfcx3', 'OTU0Zjg2ODY1NTdkMDYzODA1YjEwNDdhYTVlNTgwOWRiYTQwMDIwZTp7InVzZXJuYW1lIjoiMSJ9', '2019-06-08 17:19:12.155162'),
('paurgrrkt1olcj3p6w18vm397kar4s4v', 'ZDA5MzY5NGZmNDBkYjYwYjhmOGE3ODBlMWQ5YmQ2ZmE4MTViZTAyZjp7InVzZXJuYW1lIjoiMTc4MjA4In0=', '2019-06-08 06:37:49.960362');

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
(1, '178204', 'gullu@gmail.com', '1234', '9876543210'),
(2, '178204', 'rizwansoaib@gmail.com', '1234', '8115168763'),
(3, '178208', 'rizwansoaib@gmail.com', '1234', '8115168763'),
(4, '178212', 'vineet@gmail.com', '1234', '9123456780'),
(5, '178202', 'avanish98@gmail.com', '1234', '9876543210'),
(6, '178212', 'vineet@gmail.com', '1234', '9076543210');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `branch_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `name`, `email`, `sem`, `status`, `branch_id`) VALUES
('16201', 'Abhinav raj', '', '6', '0', '2'),
('16202', 'Abhishek jaiswal', '', '6', '0', '2'),
('16203', 'Abhishek singh', '', '6', '0', '2'),
('16204', 'Abhishek singh rathore', '', '6', '0', '2'),
('16205', 'Abhishek tiwari', '', '6', '0', '2'),
('16206', 'Aditya saxena', '', '6', '0', '2'),
('16207', 'Aditya kumar', '', '6', '0', '2'),
('16208', 'Aditya kumar', '', '6', '0', '2'),
('16209', 'Aman singh', '', '6', '0', '2'),
('16210', 'Animeash garg', '', '6', '0', '2'),
('16211', 'Anurag agrawal', '', '6', '0', '2'),
('16212', 'Aseem shriwastava', '', '6', '0', '2'),
('16213', 'Ashish gautam', '', '6', '0', '2'),
('16214', 'Ashish kumar', '', '6', '0', '2'),
('16215', 'Ashutosh singh', '', '6', '0', '2'),
('16216', 'Atharva', '', '6', '0', '2'),
('16217', 'Avinash verma', '', '6', '0', '2'),
('16218', 'Ayush jain', '', '6', '0', '2'),
('16219', 'Chirag man verma', '', '6', '0', '2'),
('16220', 'Devesh verma', '', '6', '0', '2'),
('16221', 'Divyanshu', '', '6', '0', '2'),
('16222', 'Goldi singh ', '', '6', '0', '2'),
('16223', 'Harsh pandey', '', '6', '0', '2'),
('16224', 'Himanshu lal', '', '6', '0', '2'),
('16225', 'Jatin singh', '', '6', '0', '2'),
('16226', 'Kaleshwar dev', '', '6', '0', '2'),
('16227', 'Kashaf ahmad', '', '6', '0', '2'),
('16228', 'Khushboo bindfal', '', '6', '0', '2'),
('16229', 'Krishna pratap', '', '6', '0', '2'),
('16230', 'Kumar shiwang', '', '6', '0', '2'),
('16231', 'Kuvar karan', '', '6', '0', '2'),
('16232', 'Mritunjay kumar', '', '6', '0', '2'),
('16233', 'Nikhil kumar', '', '6', '0', '2'),
('16234', 'Pawan mishra', '', '6', '0', '2'),
('16235', 'Piyush ojha', '', '6', '0', '2'),
('16236', 'Prakhar', '', '6', '0', '2'),
('16237', 'Prakhar pratap', '', '6', '0', '2'),
('16238', 'Prashant divedi', '', '6', '0', '2'),
('16239', 'Prashant singh', '', '6', '0', '2'),
('16240', 'Prerna Agarwal', '', '6', '0', '2'),
('16241', 'Priynka ', '', '6', '0', '2'),
('16242', 'Priyanshu singh', '', '6', '0', '2'),
('16243', 'Raj sriwastava', '', '6', '0', '2'),
('16244', 'Rakshit pandey', '', '6', '0', '2'),
('16245', 'Ranvir yadav', '', '6', '0', '2'),
('16246', 'Rohit kumar', '', '6', '0', '2'),
('16247', 'Rudransh', '', '6', '0', '2'),
('16248', 'Sachin dev', '', '6', '0', '2'),
('16249', 'Shailendra kumar', '', '6', '0', '2'),
('16250', 'singh shubham', '', '6', '0', '2'),
('16251', 'Shubham singh', '', '6', '0', '2'),
('16252', 'Tejasvi', '', '6', '0', '2'),
('16253', 'Varun', '', '6', '0', '2'),
('16254', 'Vedas', '', '6', '0', '2'),
('16255', 'Vijay gond', '', '6', '0', '2'),
('16256', 'Vinay kumar', '', '6', '0', '2'),
('16257', 'Vineet chauhan', '', '6', '0', '2'),
('16258', 'Ankit saha', '', '6', '0', '2'),
('16259', 'Rangstarly lathong', '', '6', '0', '2'),
('178201', 'Ankit saini', '', '6', '0', '2'),
('178202', 'Avnish pratap singh', '', '6', '0', '2'),
('178203', 'Diwakar Jaiswal', 'diwakar98@gmail.com', '6', '0', '2'),
('178204', 'Ghulam Mohiyuddin', 'subahani98@gmail.com', '6', '0', '2'),
('178205', 'Kavita', '', '6', '0', '2'),
('178206', 'Prasant Badal', '', '6', '0', '2'),
('178207', 'Rahul kumar', '', '6', '0', '2'),
('178208', 'Rizwan Ahmad', 'rizwan.soaib@gmail.com', '6', '0', '2'),
('178209', 'Sadhana tiwari', '', '6', '0', '2'),
('178210', 'Shailesh Yadav', 'shailyadav5996@gmail.com', '6', '0', '2'),
('178211', 'Uqba jabeen', '', '6', '0', '2'),
('178212', 'Vineet maurya', '', '6', '0', '2');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` varchar(100) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `branch_id` varchar(100) NOT NULL,
  `sem` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `branch_id`, `sem`) VALUES
('KAS401', 'Mathematics-3', '6', 4),
('KAS402', 'Communication System', '6', 4),
('KAS404', 'Theory of Automata and Formal Language', '6', 4),
('KAS501', 'Engineering and mangerial Economics', '6', 5),
('KAS601', 'Industrial Management', '6', 6),
('KAS605', 'INDUSTRIAL MANAGEMENT', '2', 6),
('KCS301', 'Database Management System', '2', 3),
('KCS302', 'Iscrete Mathematics', '2', 3),
('KCS303', 'Digital Logic Design', '2', 3),
('KCS304', 'Data Structure', '2', 3),
('KCS305', 'Object Oriented System', '2', 3),
('KCS401', 'Communication system', '2', 4),
('KCS402', 'Computer Organization', '2', 4),
('KCS403', 'Introduction to Microprocessor', '2', 4),
('KCS404', 'Theory of Automata and Formal language', '2', 4),
('KCS501', 'Computer Architecture', '2', 5),
('KCS502', 'Operating System', '2', 5),
('KCS503', 'Design and Analysis of Algorithm', '2', 5),
('KCS504', 'Computer Software Engineering', '2', 5),
('KCS601', 'COMPUTER NETWORK', '2', 6),
('KCS602', 'COMPILER DESIGN', '2', 6),
('KCS603', 'COMPUTER GRAPHICS', '2', 6),
('KCS604', 'WEB TECHNOLOGY', '2\r\n', 6),
('KCS701', 'Data Mining and Data Warehousing', '2', 7),
('KCS702', 'Distributed System', '2', 7),
('KCS703', 'Cryptography and Network Security', '2', 7),
('KCS801', 'Mobile computing', '2', 8),
('KCS802', 'Artificial Intelligence', '2', 8),
('KIT301', 'Data Base Management System', '6', 3),
('KIT302', 'Discrete Mathematics ', '6', 3),
('KIT303', 'Digital Logic design', '6', 3),
('KIT304', 'Data Structure ', '6', 3),
('KIT305', 'Object Oriented System ', '6', 3),
('KIT402', 'Human Value and professional Ethics', '6', 4),
('KIT501', 'E-commerce', '6', 5),
('KIT502', 'Operating System', '6', 5),
('KIT503', 'Design and Analysis of Algorithm', '6', 5),
('KIT504', 'Software Engineering', '6', 5),
('KIT601', 'Information security & Cyber Law', '6', 6),
('KIT602', 'Computer Network', '6', 6),
('KIT603', 'Web technology', '6', 6),
('KIT604', 'Computer graphics & multimedia', '6', 6),
('KS401', 'Mathematics-iii', '2', 4),
('KS403', 'Computer Organization', '6', 4);

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
(2, '1234', '1234@gmail.com', '8115168763', '1234'),
(3, 'rizwan', 'rizwan@yahoo.com', '123456789', '1234'),
(4, 'ghulam', '', '', '1234\r\n'),
(5, '12345', '', '', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `name`, `email`, `department`) VALUES
('SMIRSRI', 'Samir Shriwastva', 'Samir@gmail.com', 'CSE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

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
-- Indexes for table `stauth`
--
ALTER TABLE `stauth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tauth`
--
ALTER TABLE `tauth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
-- AUTO_INCREMENT for table `csp`
--
ALTER TABLE `csp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stauth`
--
ALTER TABLE `stauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tauth`
--
ALTER TABLE `tauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
