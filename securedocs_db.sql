-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 11:56 PM
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
-- Database: `securedocs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `status` enum('scheduled','completed','cancelled','no_show') NOT NULL DEFAULT 'scheduled',
  `reason` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_patient_assignments`
--

CREATE TABLE `doctor_patient_assignments` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `assigned_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `upload_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `file_hash` varchar(64) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `signature_time` timestamp NULL DEFAULT NULL,
  `signed_by` int(11) DEFAULT NULL,
  `status` enum('active','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `action_type` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `affected_record_id` int(11) DEFAULT NULL,
  `affected_record_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `username`, `action_type`, `message`, `timestamp`, `ip_address`, `user_agent`, `affected_record_id`, `affected_record_type`) VALUES
(136, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:21:32', NULL, NULL, NULL, NULL),
(137, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:21:32', NULL, NULL, NULL, NULL),
(138, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:21:33', NULL, NULL, NULL, NULL),
(139, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:21:33', NULL, NULL, NULL, NULL),
(140, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:03', NULL, NULL, NULL, NULL),
(141, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:03', NULL, NULL, NULL, NULL),
(142, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:04', NULL, NULL, NULL, NULL),
(143, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:04', NULL, NULL, NULL, NULL),
(144, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:05', NULL, NULL, NULL, NULL),
(145, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:07', NULL, NULL, NULL, NULL),
(146, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:07', NULL, NULL, NULL, NULL),
(147, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:07', NULL, NULL, NULL, NULL),
(148, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:08', NULL, NULL, NULL, NULL),
(149, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:14', NULL, NULL, NULL, NULL),
(150, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:14', NULL, NULL, NULL, NULL),
(151, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:15', NULL, NULL, NULL, NULL),
(152, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:15', NULL, NULL, NULL, NULL),
(153, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:16', NULL, NULL, NULL, NULL),
(154, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:16', NULL, NULL, NULL, NULL),
(155, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:17', NULL, NULL, NULL, NULL),
(156, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:21', NULL, NULL, NULL, NULL),
(157, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:21', NULL, NULL, NULL, NULL),
(158, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:22', NULL, NULL, NULL, NULL),
(159, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:22', NULL, NULL, NULL, NULL),
(160, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:23', NULL, NULL, NULL, NULL),
(161, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:22:25', NULL, NULL, NULL, NULL),
(162, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:26', NULL, NULL, NULL, NULL),
(163, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:27', NULL, NULL, NULL, NULL),
(164, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:27', NULL, NULL, NULL, NULL),
(165, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:28', NULL, NULL, NULL, NULL),
(166, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:29', NULL, NULL, NULL, NULL),
(167, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:31', NULL, NULL, NULL, NULL),
(168, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:32', NULL, NULL, NULL, NULL),
(169, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:33', NULL, NULL, NULL, NULL),
(170, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:34', NULL, NULL, NULL, NULL),
(171, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:41', NULL, NULL, NULL, NULL),
(172, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:42', NULL, NULL, NULL, NULL),
(173, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:42', NULL, NULL, NULL, NULL),
(174, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:43', NULL, NULL, NULL, NULL),
(175, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:44', NULL, NULL, NULL, NULL),
(176, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:45', NULL, NULL, NULL, NULL),
(177, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 12:22:45', NULL, NULL, NULL, NULL),
(178, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:24', NULL, NULL, NULL, NULL),
(179, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:24', NULL, NULL, NULL, NULL),
(180, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:25', NULL, NULL, NULL, NULL),
(181, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:25', NULL, NULL, NULL, NULL),
(182, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:26', NULL, NULL, NULL, NULL),
(183, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:28', NULL, NULL, NULL, NULL),
(184, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:28', NULL, NULL, NULL, NULL),
(185, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:39', NULL, NULL, NULL, NULL),
(186, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:39', NULL, NULL, NULL, NULL),
(187, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:40', NULL, NULL, NULL, NULL),
(188, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:40', NULL, NULL, NULL, NULL),
(189, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:41', NULL, NULL, NULL, NULL),
(190, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:43', NULL, NULL, NULL, NULL),
(191, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:23:43', NULL, NULL, NULL, NULL),
(192, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:46', NULL, NULL, NULL, NULL),
(193, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:46', NULL, NULL, NULL, NULL),
(194, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:47', NULL, NULL, NULL, NULL),
(195, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:47', NULL, NULL, NULL, NULL),
(196, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:48', NULL, NULL, NULL, NULL),
(197, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:50', NULL, NULL, NULL, NULL),
(198, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:50', NULL, NULL, NULL, NULL),
(199, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:51', NULL, NULL, NULL, NULL),
(200, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:51', NULL, NULL, NULL, NULL),
(201, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:52', NULL, NULL, NULL, NULL),
(202, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 12:24:54', NULL, NULL, NULL, NULL),
(203, 'user', 'login_manual_password_success', 'Password verified for user user. Proceeding to 2FA.', '2025-05-20 14:46:53', NULL, NULL, NULL, NULL),
(204, 'user', 'login_manual_2fa_success', 'User user successfully completed 2FA and logged in manually.', '2025-05-20 14:47:07', NULL, NULL, NULL, NULL),
(205, 'admin', 'login_manual_failed', 'Failed login attempt for user admin', '2025-05-20 14:47:20', NULL, NULL, NULL, NULL),
(206, 'admin', 'register_success', 'User registered successfully.', '2025-05-20 14:47:50', NULL, NULL, NULL, NULL),
(207, 'admin', 'qr_code_success', 'Generated QR code for 2FA for user admin', '2025-05-20 14:47:50', NULL, NULL, NULL, NULL),
(208, 'admin', 'login_manual_password_success', 'Password verified for user admin. Proceeding to 2FA.', '2025-05-20 14:48:06', NULL, NULL, NULL, NULL),
(209, 'admin', 'login_manual_2fa_success', 'User admin successfully completed 2FA and logged in manually.', '2025-05-20 14:48:11', NULL, NULL, NULL, NULL),
(210, 'admin', 'login_manual_password_success', 'Password verified for user admin. Proceeding to 2FA.', '2025-05-20 14:48:52', NULL, NULL, NULL, NULL),
(211, 'admin', 'login_manual_2fa_success', 'User admin successfully completed 2FA and logged in manually.', '2025-05-20 14:49:05', NULL, NULL, NULL, NULL),
(212, 'admin', 'admin_delete_file_success', 'Admin deleted file with ID 13 (Book_Store_Management_System.pdf).', '2025-05-20 14:49:32', NULL, NULL, NULL, NULL),
(213, 'admin', 'admin_delete_file_success', 'Admin deleted file with ID 1 (data_int_text.txt).', '2025-05-20 14:49:36', NULL, NULL, NULL, NULL),
(215, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 14:52:03', NULL, NULL, NULL, NULL),
(216, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 14:52:04', NULL, NULL, NULL, NULL),
(217, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 14:52:05', NULL, NULL, NULL, NULL),
(218, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 14:52:05', NULL, NULL, NULL, NULL),
(219, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 14:52:06', NULL, NULL, NULL, NULL),
(220, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 14:52:09', NULL, NULL, NULL, NULL),
(221, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 14:52:10', NULL, NULL, NULL, NULL),
(222, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 14:52:11', NULL, NULL, NULL, NULL),
(223, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 14:52:12', NULL, NULL, NULL, NULL),
(224, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 14:52:12', NULL, NULL, NULL, NULL),
(225, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 14:52:13', NULL, NULL, NULL, NULL),
(226, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 14:52:13', NULL, NULL, NULL, NULL),
(227, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 14:52:15', NULL, NULL, NULL, NULL),
(228, 'anonymous', 'login_google_initiate', 'Initiated Google login process', '2025-05-20 14:52:16', NULL, NULL, NULL, NULL),
(229, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 14:52:22', NULL, NULL, NULL, NULL),
(230, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-20 14:52:37', NULL, NULL, NULL, NULL),
(231, 'user', 'login_manual_password_success', 'Password verified for user user. Proceeding to 2FA.', '2025-05-20 14:54:52', NULL, NULL, NULL, NULL),
(232, 'user', 'login_manual_2fa_success', 'User user successfully completed 2FA and logged in manually.', '2025-05-20 14:55:09', NULL, NULL, NULL, NULL),
(233, 'user5', 'profile_update', 'Updated profile information', '2025-05-20 14:56:09', NULL, NULL, NULL, NULL),
(234, 'user5', 'profile_update', 'Updated profile information', '2025-05-20 14:56:09', NULL, NULL, NULL, NULL),
(235, 'user5', 'login_manual_password_success', 'Password verified for user user5. Proceeding to 2FA.', '2025-05-20 14:56:24', NULL, NULL, NULL, NULL),
(236, 'user5', 'login_manual_2fa_success', 'User user5 successfully completed 2FA and logged in manually.', '2025-05-20 14:56:37', NULL, NULL, NULL, NULL),
(237, 'user', 'login_manual_password_success', 'Password verified for user user. Proceeding to 2FA.', '2025-05-20 15:00:26', NULL, NULL, NULL, NULL),
(238, 'user', 'login_manual_2fa_success', 'User user successfully completed 2FA and logged in manually.', '2025-05-20 15:00:35', NULL, NULL, NULL, NULL),
(239, 'Yehia', 'password_change', 'Password changed successfully', '2025-05-20 15:01:27', NULL, NULL, NULL, NULL),
(240, 'Yehia', 'profile_photo_update', 'Profile photo updated', '2025-05-20 15:01:27', NULL, NULL, NULL, NULL),
(241, 'Yehia', 'profile_update', 'Updated profile information', '2025-05-20 15:01:27', NULL, NULL, NULL, NULL),
(242, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-20 15:03:34', NULL, NULL, NULL, NULL),
(243, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-20 15:03:46', NULL, NULL, NULL, NULL),
(244, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-20 15:16:55', NULL, NULL, NULL, NULL),
(245, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-20 15:17:09', NULL, NULL, NULL, NULL),
(246, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-20 15:34:10', NULL, NULL, NULL, NULL),
(247, 'Yehia', 'login_manual_2fa_failed', 'User Yehia failed 2FA. Invalid code.', '2025-05-20 15:35:19', NULL, NULL, NULL, NULL),
(248, 'Yehia', 'login_manual_2fa_failed', 'User Yehia failed 2FA. Invalid code.', '2025-05-20 15:35:35', NULL, NULL, NULL, NULL),
(249, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-20 15:35:40', NULL, NULL, NULL, NULL),
(250, 'Yehia', 'upload', 'Uploaded file: first task.docx', '2025-05-20 15:40:39', NULL, NULL, NULL, NULL),
(251, 'admin', 'login_manual_password_success', 'Password verified for user admin. Proceeding to 2FA.', '2025-05-20 15:47:55', NULL, NULL, NULL, NULL),
(252, 'admin', 'login_manual_2fa_success', 'User admin successfully completed 2FA and logged in manually.', '2025-05-20 15:48:09', NULL, NULL, NULL, NULL),
(253, 'admin', 'profile_photo_update', 'Profile photo updated', '2025-05-20 15:48:23', NULL, NULL, NULL, NULL),
(254, 'admin', 'profile_update', 'Updated profile information', '2025-05-20 15:48:23', NULL, NULL, NULL, NULL),
(255, 'admin', 'admin_delete_file_success', 'Admin deleted file with ID 6 (second_test.txt).', '2025-05-20 15:50:11', NULL, NULL, NULL, NULL),
(256, 'eman', 'register_success', 'User registered successfully.', '2025-05-21 20:26:46', NULL, NULL, NULL, NULL),
(257, 'eman', 'qr_code_success', 'Generated QR code for 2FA for user eman', '2025-05-21 20:26:47', NULL, NULL, NULL, NULL),
(258, 'eman', 'login_manual_password_success', 'Password verified for user eman. Proceeding to 2FA.', '2025-05-21 20:27:18', NULL, NULL, NULL, NULL),
(259, 'eman', 'login_manual_2fa_success', 'User eman successfully completed 2FA and logged in manually.', '2025-05-21 20:27:27', NULL, NULL, NULL, NULL),
(260, 'eman', 'profile_photo_update', 'Profile photo updated', '2025-05-21 20:28:17', NULL, NULL, NULL, NULL),
(261, 'eman', 'profile_update', 'Updated profile information', '2025-05-21 20:28:17', NULL, NULL, NULL, NULL),
(262, 'eman', 'upload', 'Uploaded file: Report (1).pdf', '2025-05-21 20:28:35', NULL, NULL, NULL, NULL),
(263, 'eman', 'sign_document_success', 'Successfully signed document ID 15 (Report (1).pdf).', '2025-05-21 20:36:45', NULL, NULL, NULL, NULL),
(264, 'eman', 'document_integrity_violation', 'Document integrity violation detected for Report (1).pdf. Stored hash: 09f0f65cd32e686dcd9f271251a6b5ead608320c3dd96ab842dcfcfe9a692732, Current hash: 0249a9cb8354daab7b494e9389ff5851d467644c890d6e80d2ad8f66460805cd', '2025-05-21 20:44:01', NULL, NULL, NULL, NULL),
(265, 'eman', 'upload', 'Uploaded file: Ass11.pdf', '2025-05-21 20:44:21', NULL, NULL, NULL, NULL),
(266, 'eman', 'sign_document_success', 'Successfully signed document ID 16 (Ass11.pdf).', '2025-05-21 20:44:38', NULL, NULL, NULL, NULL),
(267, 'eman', 'document_integrity_violation', 'Document integrity violation detected for Ass11.pdf. Stored hash: f90e689443af65491e4f762dbad592389f0e2f7549643be96a15364cfbcdb9d0, Current hash: 2578b2fb1acf8cbbd9df6771f82ff6fdd65f61d5ea08daac2d8d9c5cfef46d6d', '2025-05-21 20:45:38', NULL, NULL, NULL, NULL),
(268, 'eman', 'document_integrity_violation', 'Document integrity violation detected for Ass11.pdf. Stored hash: f90e689443af65491e4f762dbad592389f0e2f7549643be96a15364cfbcdb9d0, Current hash: 2578b2fb1acf8cbbd9df6771f82ff6fdd65f61d5ea08daac2d8d9c5cfef46d6d', '2025-05-21 20:47:35', NULL, NULL, NULL, NULL),
(269, 'eman', 'upload', 'Uploaded file: 2406248862_AdhamMohamedFaroukMoharram.pdf', '2025-05-21 20:48:34', NULL, NULL, NULL, NULL),
(270, 'eman', 'sign_document_success', 'Successfully signed document ID 17 (2406248862_AdhamMohamedFaroukMoharram.pdf).', '2025-05-21 20:49:01', NULL, NULL, NULL, NULL),
(271, 'eman', 'document_integrity_violation', 'Document integrity violation detected for 2406248862_AdhamMohamedFaroukMoharram.pdf. Stored hash: 377f47e2754b8b86d0530fc2ef05a7958026fcec04161c64960326b40fe4a4ff, Current hash: 81a067035d0756c5be40e1a119091a706fe5804d423a1cae908b9c4fb80b9104', '2025-05-21 20:49:33', NULL, NULL, NULL, NULL),
(272, 'eman', 'document_integrity_violation', 'Document integrity violation detected for 2406248862_AdhamMohamedFaroukMoharram.pdf. Stored hash: 377f47e2754b8b86d0530fc2ef05a7958026fcec04161c64960326b40fe4a4ff, Current hash: fcf1a76f2115f96324e6377ec2af01c7d0c2a164fc8af67299561459a369ae8d', '2025-05-21 20:49:53', NULL, NULL, NULL, NULL),
(273, 'eman', 'document_integrity_violation', 'Document integrity violation detected for 2406248862_AdhamMohamedFaroukMoharram.pdf. Stored hash: 377f47e2754b8b86d0530fc2ef05a7958026fcec04161c64960326b40fe4a4ff, Current hash: fcf1a76f2115f96324e6377ec2af01c7d0c2a164fc8af67299561459a369ae8d', '2025-05-21 20:51:53', NULL, NULL, NULL, NULL),
(274, 'eman', 'upload', 'Uploaded file: marawan mohamed farouk moharrem task 3 (2).pdf', '2025-05-21 20:52:13', NULL, NULL, NULL, NULL),
(275, 'eman', 'sign_document_success', 'Successfully signed document ID 18 (marawan mohamed farouk moharrem task 3 (2).pdf).', '2025-05-21 20:52:25', NULL, NULL, NULL, NULL),
(278, 'eman', 'document_integrity_violation', 'Document integrity violation detected for 2406248862_AdhamMohamedFaroukMoharram.pdf. Stored hash: 377f47e2754b8b86d0530fc2ef05a7958026fcec04161c64960326b40fe4a4ff, Current hash: fcf1a76f2115f96324e6377ec2af01c7d0c2a164fc8af67299561459a369ae8d', '2025-05-21 21:02:53', NULL, NULL, NULL, NULL),
(279, 'eman', 'login_manual_password_success', 'Password verified for user eman. Proceeding to 2FA.', '2025-05-21 21:28:06', NULL, NULL, NULL, NULL),
(280, 'eman', 'login_manual_2fa_success', 'User eman successfully completed 2FA and logged in manually.', '2025-05-21 21:28:15', NULL, NULL, NULL, NULL),
(281, 'eman', 'delete_success', 'Deleted file: The first flame.pdf', '2025-05-21 21:29:07', NULL, NULL, NULL, NULL),
(282, 'sara', 'register_success', 'User registered successfully.', '2025-05-22 06:22:36', NULL, NULL, NULL, NULL),
(283, 'sara', 'qr_code_success', 'Generated QR code for 2FA for user sara', '2025-05-22 06:22:36', NULL, NULL, NULL, NULL),
(284, 'sara', 'login_manual_password_success', 'Password verified for user sara. Proceeding to 2FA.', '2025-05-22 06:22:58', NULL, NULL, NULL, NULL),
(285, 'sara', 'login_manual_2fa_success', 'User sara successfully completed 2FA and logged in manually.', '2025-05-22 06:23:07', NULL, NULL, NULL, NULL),
(286, 'sara', 'upload', 'Uploaded file: Report (3).pdf', '2025-05-22 06:23:31', NULL, NULL, NULL, NULL),
(287, 'sara', 'sign_document_success', 'Successfully signed document ID 20 (Report (3).pdf).', '2025-05-22 06:26:15', NULL, NULL, NULL, NULL),
(288, 'sara', 'login_manual_failed', 'Failed login attempt for user sara', '2025-05-22 06:27:08', NULL, NULL, NULL, NULL),
(289, 'sara', 'login_manual_password_success', 'Password verified for user sara. Proceeding to 2FA.', '2025-05-22 06:27:25', NULL, NULL, NULL, NULL),
(290, 'sara', 'login_manual_2fa_success', 'User sara successfully completed 2FA and logged in manually.', '2025-05-22 06:28:06', NULL, NULL, NULL, NULL),
(291, 'sara', 'upload', 'Uploaded file: Sheet 6.pdf', '2025-05-22 06:28:37', NULL, NULL, NULL, NULL),
(292, 'sara', 'sign_document_success', 'Successfully signed document ID 21 (Sheet 6.pdf).', '2025-05-22 06:28:43', NULL, NULL, NULL, NULL),
(293, 'sara', 'document_integrity_violation', 'Document integrity violation detected for Sheet 6.pdf. Stored hash: 106fb37baec5e6385915bd6ae097653a1968e0807fd53c9ab7afa04739dfb378, Current hash: adcd850e55310fe4da0fb2cbb480fc4d7b34420c2eab7d7c749b1b8f388a046d', '2025-05-22 06:29:13', NULL, NULL, NULL, NULL),
(294, 'sara', 'document_integrity_violation', 'Document integrity violation detected for Sheet 6.pdf. Stored hash: 106fb37baec5e6385915bd6ae097653a1968e0807fd53c9ab7afa04739dfb378, Current hash: adcd850e55310fe4da0fb2cbb480fc4d7b34420c2eab7d7c749b1b8f388a046d', '2025-05-22 06:31:15', NULL, NULL, NULL, NULL),
(295, 'sara', 'download', 'Downloaded file: Sheet 6.pdf', '2025-05-22 06:35:47', NULL, NULL, NULL, NULL),
(296, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:52:57', NULL, NULL, NULL, NULL),
(297, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:53:10', NULL, NULL, NULL, NULL),
(298, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:53:18', NULL, NULL, NULL, NULL),
(299, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:53:25', NULL, NULL, NULL, NULL),
(300, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:53:32', NULL, NULL, NULL, NULL),
(301, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:53:47', NULL, NULL, NULL, NULL),
(302, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:53:56', NULL, NULL, NULL, NULL),
(303, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:54:06', NULL, NULL, NULL, NULL),
(304, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:54:13', NULL, NULL, NULL, NULL),
(305, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:58:05', NULL, NULL, NULL, NULL),
(306, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:58:25', NULL, NULL, NULL, NULL),
(307, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:58:31', NULL, NULL, NULL, NULL),
(308, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:58:41', NULL, NULL, NULL, NULL),
(309, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:58:49', NULL, NULL, NULL, NULL),
(310, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:58:56', NULL, NULL, NULL, NULL),
(311, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:59:00', NULL, NULL, NULL, NULL),
(312, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:59:06', NULL, NULL, NULL, NULL),
(313, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:59:10', NULL, NULL, NULL, NULL),
(314, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:59:13', NULL, NULL, NULL, NULL),
(315, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:59:20', NULL, NULL, NULL, NULL),
(316, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:59:39', NULL, NULL, NULL, NULL),
(317, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 06:59:47', NULL, NULL, NULL, NULL),
(318, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 07:00:02', NULL, NULL, NULL, NULL),
(319, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 07:00:11', NULL, NULL, NULL, NULL),
(320, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 07:00:23', NULL, NULL, NULL, NULL),
(321, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 07:00:29', NULL, NULL, NULL, NULL),
(322, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 07:00:36', NULL, NULL, NULL, NULL),
(323, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 07:00:41', NULL, NULL, NULL, NULL),
(324, 'anonymous', 'login_github_initiate', 'Initiated GitHub login process', '2025-05-22 07:00:46', NULL, NULL, NULL, NULL),
(325, 'sara', 'login_manual_password_success', 'Password verified for user sara. Proceeding to 2FA.', '2025-05-22 07:02:22', NULL, NULL, NULL, NULL),
(326, 'sara', 'login_manual_2fa_success', 'User sara successfully completed 2FA and logged in manually.', '2025-05-22 07:02:48', NULL, NULL, NULL, NULL),
(327, 'user', 'password_change', 'Password changed successfully', '2025-05-22 07:03:33', NULL, NULL, NULL, NULL),
(328, 'user', 'profile_update', 'Updated profile information', '2025-05-22 07:03:33', NULL, NULL, NULL, NULL),
(329, 'eman', 'login_manual_password_success', 'Password verified for user eman. Proceeding to 2FA.', '2025-05-22 07:03:55', NULL, NULL, NULL, NULL),
(330, 'eman', 'login_manual_2fa_success', 'User eman successfully completed 2FA and logged in manually.', '2025-05-22 07:04:16', NULL, NULL, NULL, NULL),
(331, 'admin', 'password_change', 'Password changed successfully', '2025-05-22 07:05:51', NULL, NULL, NULL, NULL),
(332, 'admin', 'profile_update', 'Updated profile information', '2025-05-22 07:05:51', NULL, NULL, NULL, NULL),
(333, 'user2', 'register_success', 'User registered successfully.', '2025-05-22 07:13:43', NULL, NULL, NULL, NULL),
(334, 'user2', 'qr_code_success', 'Generated QR code for 2FA for user user2', '2025-05-22 07:13:44', NULL, NULL, NULL, NULL),
(335, 'user2', 'login_manual_password_success', 'Password verified for user user2. Proceeding to 2FA.', '2025-05-22 07:14:05', NULL, NULL, NULL, NULL),
(336, 'user2', 'login_manual_2fa_success', 'User user2 successfully completed 2FA and logged in manually.', '2025-05-22 07:14:13', NULL, NULL, NULL, NULL),
(337, 'user2', 'upload', 'Uploaded file: SecureDocs.pdf', '2025-05-22 07:14:25', NULL, NULL, NULL, NULL),
(338, 'user2', 'sign_document_success', 'Successfully signed document ID 22 (SecureDocs.pdf).', '2025-05-22 07:16:00', NULL, NULL, NULL, NULL),
(339, 'admin', 'login_manual_password_success', 'Password verified for user admin. Proceeding to 2FA.', '2025-05-22 07:16:24', NULL, NULL, NULL, NULL),
(340, 'admin', 'login_manual_2fa_success', 'User admin successfully completed 2FA and logged in manually.', '2025-05-22 07:16:41', NULL, NULL, NULL, NULL),
(341, 'soso', 'register_success', 'User registered successfully.', '2025-05-23 20:39:50', NULL, NULL, NULL, NULL),
(342, 'soso', 'qr_code_error', 'Error generating or serving QR code: No module named \'Image\'', '2025-05-23 20:39:50', NULL, NULL, NULL, NULL),
(343, 'soso', 'qr_code_success', 'Generated QR code for 2FA for user soso', '2025-05-23 20:41:43', NULL, NULL, NULL, NULL),
(344, 'soso', 'login_manual_password_success', 'Password verified for user soso. Proceeding to 2FA.', '2025-05-23 20:42:10', NULL, NULL, NULL, NULL),
(345, 'soso', 'login_manual_2fa_success', 'User soso successfully completed 2FA and logged in manually.', '2025-05-23 20:42:18', NULL, NULL, NULL, NULL),
(346, 'Yehia', 'register_success', 'User registered successfully as patient.', '2025-05-24 20:10:50', NULL, NULL, NULL, NULL),
(347, 'Yehia', 'qr_code_success', 'Generated QR code for 2FA for user Yehia', '2025-05-24 20:10:51', NULL, NULL, NULL, NULL),
(348, 'Yehia', 'qr_code_success', 'Generated QR code for 2FA for user Yehia', '2025-05-24 20:11:33', NULL, NULL, NULL, NULL),
(349, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-24 20:11:55', NULL, NULL, NULL, NULL),
(350, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-24 20:12:04', NULL, NULL, NULL, NULL),
(351, 'admin', 'register_failed', 'Registration failed: Username or email already exists.', '2025-05-24 20:17:35', NULL, NULL, NULL, NULL),
(352, 'admin', 'register_success', 'User registered successfully as patient.', '2025-05-24 20:17:52', NULL, NULL, NULL, NULL),
(353, 'admin', 'qr_code_success', 'Generated QR code for 2FA for user admin', '2025-05-24 20:17:52', NULL, NULL, NULL, NULL),
(354, 'admin', 'login_manual_password_success', 'Password verified for user admin. Proceeding to 2FA.', '2025-05-24 20:18:28', NULL, NULL, NULL, NULL),
(355, 'admin', 'login_manual_2fa_success', 'User admin successfully completed 2FA and logged in manually.', '2025-05-24 20:18:35', NULL, NULL, NULL, NULL),
(356, 'Yehia', 'login_manual_failed', 'Failed login attempt for user Yehia', '2025-05-24 20:30:02', NULL, NULL, NULL, NULL),
(357, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-24 20:30:13', NULL, NULL, NULL, NULL),
(358, 'Yehia', 'login_manual_2fa_failed', 'User Yehia failed 2FA. Invalid code.', '2025-05-24 20:30:16', NULL, NULL, NULL, NULL),
(359, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-24 20:30:23', NULL, NULL, NULL, NULL),
(360, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-24 20:31:20', NULL, NULL, NULL, NULL),
(361, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-24 20:31:26', NULL, NULL, NULL, NULL),
(362, 'admin', 'login_manual_password_success', 'Password verified for user admin. Proceeding to 2FA.', '2025-05-24 20:32:03', NULL, NULL, NULL, NULL),
(363, 'admin', 'login_manual_2fa_success', 'User admin successfully completed 2FA and logged in manually.', '2025-05-24 20:32:09', NULL, NULL, NULL, NULL),
(364, 'admin', 'admin_delete_user_success', 'Admin deleted user with ID 6.', '2025-05-24 20:34:36', NULL, NULL, NULL, NULL),
(365, 'admin', 'user_created', 'Created new patient account: sarsorti', '2025-05-24 20:50:14', NULL, NULL, NULL, NULL),
(366, 'admin', 'admin_edit_user_success', 'Admin updated user ID 28 (Username: sarsorti, Role: doctor)', '2025-05-24 20:58:08', NULL, NULL, NULL, NULL),
(367, 'admin', 'admin_edit_user_success', 'Admin updated user ID 26 (Username: Yehia, Role: patient)', '2025-05-24 21:02:55', NULL, NULL, NULL, NULL),
(368, 'admin', 'error', 'Error updating profile: tuple indices must be integers or slices, not str', '2025-05-24 21:07:29', NULL, NULL, NULL, NULL),
(369, 'admin', 'error', 'Error updating profile: tuple indices must be integers or slices, not str', '2025-05-24 21:09:13', NULL, NULL, NULL, NULL),
(370, 'admin', 'profile_update', 'Updated profile information', '2025-05-24 21:12:00', NULL, NULL, NULL, NULL),
(371, 'admin', 'user_created', 'Created new doctor account: tarek', '2025-05-24 21:14:01', NULL, NULL, NULL, NULL),
(372, 'admin', 'admin_delete_user_success', 'Admin deleted user with ID 29.', '2025-05-24 21:14:19', NULL, NULL, NULL, NULL),
(373, 'Yehia', 'login_manual_failed', 'Failed login attempt for user Yehia', '2025-05-24 21:14:53', NULL, NULL, NULL, NULL),
(374, 'Yehia', 'login_manual_failed', 'Failed login attempt for user Yehia', '2025-05-24 21:15:05', NULL, NULL, NULL, NULL),
(375, 'yehia', 'login_manual_failed', 'Failed login attempt for user yehia', '2025-05-24 21:15:11', NULL, NULL, NULL, NULL),
(376, 'Yehia', 'login_manual_failed', 'Failed login attempt for user Yehia', '2025-05-24 21:15:25', NULL, NULL, NULL, NULL),
(377, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-24 21:15:32', NULL, NULL, NULL, NULL),
(378, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-24 21:18:53', NULL, NULL, NULL, NULL),
(379, 'sara', 'register_failed', 'Registration failed: Username or email already exists.', '2025-05-24 21:19:55', NULL, NULL, NULL, NULL),
(380, 'sara', 'register_success', 'User registered successfully as doctor.', '2025-05-24 21:20:21', NULL, NULL, NULL, NULL),
(381, 'sara', 'qr_code_success', 'Generated QR code for 2FA for user sara', '2025-05-24 21:20:21', NULL, NULL, NULL, NULL),
(382, 'sara', 'login_manual_password_success', 'Password verified for user sara. Proceeding to 2FA.', '2025-05-24 21:20:41', NULL, NULL, NULL, NULL),
(383, 'sara', 'login_manual_2fa_success', 'User sara successfully completed 2FA and logged in manually.', '2025-05-24 21:20:45', NULL, NULL, NULL, NULL),
(384, 'sara', 'login_manual_password_success', 'Password verified for user sara. Proceeding to 2FA.', '2025-05-24 21:23:43', NULL, NULL, NULL, NULL),
(385, 'sara', 'login_manual_2fa_success', 'User sara successfully completed 2FA and logged in manually.', '2025-05-24 21:23:54', NULL, NULL, NULL, NULL),
(386, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-24 21:28:05', NULL, NULL, NULL, NULL),
(387, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-24 21:28:19', NULL, NULL, NULL, NULL),
(388, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-24 21:36:58', NULL, NULL, NULL, NULL),
(389, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-24 21:37:08', NULL, NULL, NULL, NULL),
(390, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-24 21:42:37', NULL, NULL, NULL, NULL),
(391, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-24 21:42:51', NULL, NULL, NULL, NULL),
(392, 'admin', 'login_manual_password_success', 'Password verified for user admin. Proceeding to 2FA.', '2025-05-24 21:50:08', NULL, NULL, NULL, NULL),
(393, 'admin', 'login_manual_2fa_success', 'User admin successfully completed 2FA and logged in manually.', '2025-05-24 21:50:20', NULL, NULL, NULL, NULL),
(394, 'admin', 'admin_edit_user_success', 'Admin updated user ID 26 (Username: Yehia, Role: patient)', '2025-05-24 21:51:09', NULL, NULL, NULL, NULL),
(395, 'admin', 'profile_update', 'Updated profile information', '2025-05-24 21:51:51', NULL, NULL, NULL, NULL),
(396, 'Yehia', 'login_manual_password_success', 'Password verified for user Yehia. Proceeding to 2FA.', '2025-05-24 21:52:08', NULL, NULL, NULL, NULL),
(397, 'Yehia', 'login_manual_2fa_failed', 'User Yehia failed 2FA. Invalid code.', '2025-05-24 21:52:19', NULL, NULL, NULL, NULL),
(398, 'Yehia', 'login_manual_2fa_success', 'User Yehia successfully completed 2FA and logged in manually.', '2025-05-24 21:52:26', NULL, NULL, NULL, NULL),
(399, 'sara', 'login_manual_password_success', 'Password verified for user sara. Proceeding to 2FA.', '2025-05-24 21:53:08', NULL, NULL, NULL, NULL),
(400, 'sara', 'login_manual_2fa_success', 'User sara successfully completed 2FA and logged in manually.', '2025-05-24 21:53:13', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medical_records`
--

CREATE TABLE `medical_records` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `record_date` datetime NOT NULL,
  `diagnosis` text NOT NULL,
  `treatment` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `prescription_date` datetime NOT NULL,
  `medication_name` varchar(100) NOT NULL,
  `dosage` varchar(50) NOT NULL,
  `frequency` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `instructions` text DEFAULT NULL,
  `status` enum('active','completed','cancelled') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','patient','doctor') DEFAULT 'patient',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `2fa_secret` varchar(255) DEFAULT NULL,
  `auth0_id` varchar(255) DEFAULT NULL,
  `profile_photo` longblob DEFAULT NULL,
  `private_key` text DEFAULT NULL,
  `public_key` text DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `license_number` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('M','F','O') DEFAULT NULL,
  `blood_type` varchar(5) DEFAULT NULL,
  `emergency_contact` varchar(100) DEFAULT NULL,
  `emergency_phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`, `2fa_secret`, `auth0_id`, `profile_photo`, `private_key`, `public_key`, `first_name`, `last_name`, `phone`, `specialization`, `license_number`, `date_of_birth`, `gender`, `blood_type`, `emergency_contact`, `emergency_phone`) VALUES
(0, 'admin', 'admin@mail.com', '$2b$12$jyBl5T4sDY3VQ5H1fj/ZO.RzN3R2awwkUhKHvT37OzBCnKb1t3Jm2', 'admin', '2025-05-24 20:17:52', 'GWMAB2JKUDNHYAYSQWQH4MSBUVHFA7FO', NULL, 0x61646d696e5f57686174734170705f496d6167655f323032352d30352d31345f61745f30302e35302e32355f36656363663564372e6a7067, NULL, NULL, 'None', 'None', '20060561515', NULL, NULL, '2025-05-25', '', 'A+', 'None', '20060561515'),
(5, 'shadwa', 'shadwaahmed20@yahoo.com', '$2b$12$bxS9zOXPw0EnwIX.DP3R9OB0U1Rr7MNlN4M8ieaL4BbxuW/C9zZDm', 'admin', '2025-05-12 16:14:50', NULL, NULL, NULL, '-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC6YIPb9VkaqQxq\nUXmPCxnd8Rhm5F9kx0zJAsnrDKRY/LcWFguTvZ/fRs0SY4ilDgH9ru3vZJtJsDRx\nW2Meph8SKjWX12vFASoe03IQp0tdF+Da2nqnSMIEGZliPgi03MCpnluXLFBV6yhN\nJ/bOPfZ2WkxGLApZEJ32z3wnqPUasWuBjkRlPJ4r1jsQ8pXeinEfXy63E7xBZdwu\ntiqTLRYrrNL5/DgR/LT98NOXJhIHeRpKbJyOqJeHCThadAqSEbTCXPh1dIpHE6p8\ntyj4iFkOfaoKZznixurtzEu9aS5y5G8WplA3gFNxETjyq9m7X0o0PJsfKYsfAmn8\ntbNBbLMhAgMBAAECggEAZLniqY7IsELqhc8wriEmwq8ZLAqCj7mygvRx4gl8DOfP\nny0c5qTV8VqXXDfU0rdmVg8jYnzx+/ox7Y2hXSAUrMGJI132TYtakzxdaiiv70kH\naeAn557H1GVtYw35sJ2ZtlHyWBpH9JdZuZE+rqoIOGCG1mnY0dfMN2ZdSCXlCZ4q\nmugQRHCnpDo2N02iuAnAV8xgd0RcKmn1deIgMRt+E9q/ar8kPJfdnQyK582ci1mJ\n77L1oe9wyL3bfjwYsUFZdTJNBOT/MOG0WQ6upmB3qeL/yu/vWIqm2tN2B4W17kO4\nzgMf6tOPQA2MEzkQnjTt2AsPEPV3DpQH2gJ3Nxv3LQKBgQDr0w0yJTQdcIF5TsGR\nH/halh2tsMgZWxFjWT+0aVVelnfCsmI+CTeITVS3dC6wWVtpP4eXKL3pjayM7p6W\nQxIRhZp/BCXrTGz3mmlTGhARwcChOKg9sdhpejBGPevpguAVlhZIyi2Qb4vIL/hM\ne8nof63IjgVP6hN4Ih8Qa0cSrwKBgQDKUnuVi8QoFYqzn+O9OmSqgY9yPTpJXSdH\nGcwF82fLPz+xk/khWRO9IyPGeH7zO6gWLcp+KQeQUTfObLJmdSkteo8KQ4iZ+nbI\nx1KWD9s0XiF+0fb/ipePYh2yHIk0zi3bruwGQaoHdn1SoTMfcxPNUdH3tdVA4Vf9\naSdXZ0lLLwKBgQCU2VQc8KqiYl72yKUZCwrhcpstBMZoarjg8nZpU4sU9viEpb+o\n1Hx+xgDRAr5thRlTp0vYN1kXz9q34e2rfo4rDR9lSKL+j/C/oHEWiP7XlmoV2QMo\nXdbxTLSnwXHkpDz4oxFRxHtaDW43Xz/kVsYswFpamnnz5RWA4FinLm9f9QKBgDzO\nt4gFvsnRV6OO7ZKk5zZ7xBIwpsD/91sePLyZIFvswYbsk1bbf9w7oHf5JSaTinxH\n/PEYAcb1MhGfh6rVka+ygyUxkO++YE8N4Rtq3pYJqIWGM3cwP0b/1S7/9pjhUtUQ\n6K0ktSaTDS11d3j/TDdMXQ/XHaXnVFu8a++QAm5PAoGBANiY5b5KLQaKajQcLn8u\nAZ1CJFycE4cD8AyPLG+uHbOobjpYXRJKM0+TqZH62ELDbDhKA8W+eoe7vmZR+pZM\ntBxnQLtZ2AejH4pvLERXCfR7ct22pKJtu3rLAx3Mu56AmvpX0vmNg5CoQkm0sEyN\n22bLzJFzCFMq6arpulfZeHLX\n-----END PRIVATE KEY-----\n', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAumCD2/VZGqkMalF5jwsZ\n3fEYZuRfZMdMyQLJ6wykWPy3FhYLk72f30bNEmOIpQ4B/a7t72SbSbA0cVtjHqYf\nEio1l9drxQEqHtNyEKdLXRfg2tp6p0jCBBmZYj4ItNzAqZ5blyxQVesoTSf2zj32\ndlpMRiwKWRCd9s98J6j1GrFrgY5EZTyeK9Y7EPKV3opxH18utxO8QWXcLrYqky0W\nK6zS+fw4Efy0/fDTlyYSB3kaSmycjqiXhwk4WnQKkhG0wlz4dXSKRxOqfLco+IhZ\nDn2qCmc54sbq7cxLvWkucuRvFqZQN4BTcRE48qvZu19KNDybHymLHwJp/LWzQWyz\nIQIDAQAB\n-----END PUBLIC KEY-----\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Yehia', 'yehia@gmail.com', '$2b$12$JTDGglCqONmgnP7ruunZX.c.aq0tJA1PRXNOgAzPUDWcaeBG3tla6', 'patient', '2025-05-24 20:10:50', '6XCZ5MZ46YV3ILG3PMPYR4FPX2EQTBIB', NULL, NULL, NULL, NULL, 'Yehia', 'Selim', '01110290654', NULL, NULL, '2004-06-16', '', 'A+', 'Sara', '45456365651'),
(28, 'sarsorti', 'sara@mail.com', '$2b$12$oLVKzWEk5jYtMjCyqSrCo.VrJtgByrZOG9uMEy.pNuFK2OlChJLlK', 'doctor', '2025-05-24 20:50:14', '2NHDJQ2R7ISAJ6EWKU4HDJVZFUQXUDUG', NULL, NULL, NULL, NULL, 'Sara', 'Atalla', '20060561515', 'None', 'None', '2002-06-16', '', 'O+', 'Yehia Tarek Mohamed Selim', '01110290654'),
(30, 'sara', 'sara@gmail.com', '$2b$12$0D.al69ODda42hAfGWFvR.X3eVwX3hfah1f3TMGZgz0duFjwcqeYS', 'doctor', '2025-05-24 21:20:21', 'L2AQW6LVWGBB67GNADY2ABI6TKG4FUYN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_appointments_patient` (`patient_id`),
  ADD KEY `idx_appointments_doctor` (`doctor_id`),
  ADD KEY `idx_appointments_date` (`appointment_date`);

--
-- Indexes for table `doctor_patient_assignments`
--
ALTER TABLE `doctor_patient_assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_assignment` (`doctor_id`,`patient_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `idx_doctor_patient_assignments` (`doctor_id`,`patient_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `signed_by` (`signed_by`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_medical_records_patient` (`patient_id`),
  ADD KEY `idx_medical_records_doctor` (`doctor_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prescriptions_patient` (`patient_id`),
  ADD KEY `idx_prescriptions_doctor` (`doctor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_patient_assignments`
--
ALTER TABLE `doctor_patient_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `medical_records`
--
ALTER TABLE `medical_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_patient_assignments`
--
ALTER TABLE `doctor_patient_assignments`
  ADD CONSTRAINT `doctor_patient_assignments_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `doctor_patient_assignments_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `documents_ibfk_2` FOREIGN KEY (`signed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD CONSTRAINT `medical_records_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `medical_records_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
