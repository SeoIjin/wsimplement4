-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2025 at 06:37 PM
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
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `usertype` varchar(55) NOT NULL DEFAULT '',
  `account_status` varchar(20) DEFAULT 'pending',
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `contact_number` int(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `id_type` varchar(100) DEFAULT NULL,
  `resident_type` varchar(50) DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `usertype`, `account_status`, `first_name`, `middle_name`, `last_name`, `contact_number`, `email`, `password`, `barangay`, `id_type`, `resident_type`, `file_path`, `profile_picture`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'pending', 'Admin', 'Test', 'User', 0, 'admin@gov.ph', 'admin123', 'Barangay 170', 'government-id', 'resident', 'uploads/default.jpg', NULL, '2025-01-01 00:00:00', '2025-11-24 06:05:54'),
(2, '', 'approved', 'John', 'Dela', 'Cruz', 2147483647, 'john@gmail.com', 'password123', 'Barangay 170', 'government-id', 'resident', 'uploads/john_id.jpg', 'uploads/profile_pictures/profile_2_1764090359.png', '2025-01-15 00:00:00', '2025-11-25 17:05:59'),
(3, '', 'approved', 'Shou', 'Nicol', 'Ballesteros', 0, 'shou123@gmail.com', 'pogi', 'Sangandaan', 'passport', 'resident', 'uploads/6918b4726a53c_1763226738.png', NULL, '2025-11-15 17:12:18', '2025-11-25 10:18:16'),
(6, '', 'approved', 'Shou', 'Nicol', 'Ballesteros', 0, 'shouballesteros4@gmail.com', 'tyrondruglord', 'Sangandaan', 'sss-id', 'non-resident', 'uploads/69234a44e6477_1763920452.png', NULL, '2025-11-23 17:54:12', '2025-11-24 15:16:14'),
(7, '', 'approved', 'Christien', 'Michael', 'Jimenez', 0, 'tien@gmail.com', 'tientien', 'Sangandaan', 'philhealth-id', 'non-resident', 'uploads/6923e772d81ec_1763960690.png', NULL, '2025-11-24 05:04:50', '2025-11-24 11:10:17'),
(8, '', 'pending', 'karl', 'steaven', 'navidad', 0, 'karl@gmail.com', 'karldota', 'Sangandaan', 'government-id', 'non-resident', 'uploads/6923f51ac0300_1763964186.png', NULL, '2025-11-24 06:03:06', '2025-11-24 06:03:06'),
(9, '', 'approved', 'shou', 'nicol', 'ballesteros', 0, 'shouballesteros5@gmail.com', 'pogiako', 'Sangandaan', 'sss-id', 'resident', 'uploads/6923fe5103005_1763966545.JPG', NULL, '2025-11-24 06:42:25', '2025-11-24 10:19:49'),
(10, '', 'approved', 'airam', 'jesse', 'licerio', 0, 'airamjesse@gmail.com', 'airammae', 'Sangandaan', 'umid', 'non-resident', 'uploads/69240b744f635_1763969908.jpg', NULL, '2025-11-24 07:38:28', '2025-11-25 10:06:13'),
(11, '', 'pending', 'leah', 'erica', 'banguilan', 2147483647, 'shouballesteros9@gmail.com', 'leaherica', 'Sangandaan', 'sss-id', 'non-resident', 'uploads/692468ecc29a0_1763993836.png', NULL, '2025-11-24 14:17:16', '2025-11-24 14:17:16'),
(12, '', 'approved', 'jesus', 'jes', 'cuzon', 2147483647, 'ballesteros.shou.nicol@gmail.com', 'jespogi', 'Sangandaan Premium', 'sss-id', 'resident', 'uploads/6924724629668_1763996230.png', NULL, '2025-11-24 14:57:10', '2025-11-24 14:59:57'),
(13, '', 'pending', 'jhamir', 'santiago', 'go', 2147483647, 'taewonkim301@gmail.com', 'jhamir', 'sangandaan gsis', 'sss-id', 'non-resident', 'uploads/6924918792a0f_1764004231.png', NULL, '2025-11-24 17:10:31', '2025-11-24 17:10:31'),
(15, '', 'pending', 'test', 'test', 'test', 2147483647, 'test@gmail.com', 'test123', 'Sangandaan', 'sss-id', 'non-resident', 'uploads/692581d4a77fe_1764065748.JPG', NULL, '2025-11-25 10:15:48', '2025-11-25 10:15:48'),
(16, '', 'pending', 'test', 'test', 'test', 2147483647, 'test1@gmail.com', 'test123', 'Sangandaan', 'umid', 'non-resident', 'uploads/692581ed2a7c8_1764065773.JPG', NULL, '2025-11-25 10:16:13', '2025-11-25 10:16:13'),
(17, '', 'pending', 'test', 'test', 'test', 2147483647, 'test2@gmail.com', 'test123', 'Sangandaan', 'drivers-license', 'resident', 'uploads/6925820c177ac_1764065804.png', NULL, '2025-11-25 10:16:44', '2025-11-25 10:16:44'),
(18, '', 'pending', 'test', 'test', 'test', 2147483647, 'test3@gmail.com', 'test123', 'Sangandaan', 'pwd-id', 'non-resident', 'uploads/692582441aac6_1764065860.png', NULL, '2025-11-25 10:17:40', '2025-11-25 10:17:40'),
(19, '', 'pending', 'test', 'test', 'test', 2147483647, 'test4@gmail.com', 'test123', 'Sangandaan', 'government-id', 'non-resident', 'uploads/6925825ae0a65_1764065882.png', NULL, '2025-11-25 10:18:02', '2025-11-25 10:18:02'),
(20, '', 'approved', 'mae', 'czarina', 'anne', 2147483647, 'ballesteros.136512150091@depedqc.ph', 'shou123', 'Sangandaan', 'philhealth-id', 'non-resident', 'uploads/6925e4c39d1d2_1764091075.png', 'uploads/profile_pictures/profile_20_1764091133.png', '2025-11-25 17:17:55', '2025-11-25 17:18:53');

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `action_type` enum('LOGIN','LOGOUT','REQUEST_UPDATE','REQUEST_DELETE','STATUS_CHANGE','NOTIFICATION_ADD','NOTIFICATION_DELETE','USER_VIEW','PRIORITY_CHANGE','ACCOUNT_APPROVAL','ACCOUNT_REJECTION') NOT NULL,
  `action_description` text NOT NULL,
  `target_type` varchar(50) DEFAULT NULL COMMENT 'Type of target (request, user, notification, etc.)',
  `target_id` varchar(50) DEFAULT NULL COMMENT 'ID of the affected item',
  `old_value` text DEFAULT NULL COMMENT 'Previous value before change',
  `new_value` text DEFAULT NULL COMMENT 'New value after change',
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`id`, `admin_id`, `admin_email`, `action_type`, `action_description`, `target_type`, `target_id`, `old_value`, `new_value`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000006 from \'\' to \'HIGH\'', 'request', 'BHR-2025-000006', '', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 20:20:11'),
(2, 1, 'Unknown', 'STATUS_CHANGE', 'Updated request BHR-2025-000005 status from \'IN PROGRESS\' to \'READY\'', 'request', 'BHR-2025-000005', 'IN PROGRESS', 'READY', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 20:20:50'),
(3, 1, 'Unknown', 'NOTIFICATION_DELETE', 'Deleted notification: \'Health and Wellness Seminar\'', 'notification', '2', 'Health and Wellness Seminar', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 20:21:10'),
(4, 1, 'admin@gov.qc.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 20:22:21'),
(5, 1, 'admin@gov.qc.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 20:29:36'),
(6, 1, 'admin@gov.qc.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 20:46:19'),
(7, 1, 'admin@gov.qc.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 20:54:51'),
(8, 1, 'admin@gov.qc.ph', 'NOTIFICATION_ADD', 'Added new NEWS notification: \'domain bukas\'', 'notification', NULL, NULL, 'domain bukas', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 20:58:53'),
(9, 1, 'admin@gov.qc.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 21:16:30'),
(10, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000007 from \'\' to \'MEDIUM\'', 'request', 'BHR-2025-000007', '', 'MEDIUM', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 21:20:46'),
(11, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000007 from \'MEDIUM\' to \'HIGH\'', 'request', 'BHR-2025-000007', 'MEDIUM', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 21:21:04'),
(12, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000007 from \'HIGH\' to \'MEDIUM\'', 'request', 'BHR-2025-000007', 'HIGH', 'MEDIUM', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 21:23:51'),
(13, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000007 from \'MEDIUM\' to \'LOW\'', 'request', 'BHR-2025-000007', 'MEDIUM', 'LOW', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 21:24:28'),
(14, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000007 from \'LOW\' to \'HIGH\'', 'request', 'BHR-2025-000007', 'LOW', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 21:24:51'),
(15, 1, 'Unknown', 'STATUS_CHANGE', 'Updated request BHR-2025-000007 status from \'PENDING\' to \'COMPLETED\'', 'request', 'BHR-2025-000007', 'PENDING', 'COMPLETED', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 21:24:56'),
(16, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000006 from \'HIGH\' to \'MEDIUM\'', 'request', 'BHR-2025-000006', 'HIGH', 'MEDIUM', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 21:25:03'),
(17, 1, 'Unknown', 'STATUS_CHANGE', 'Updated request BHR-2025-000006 status from \'COMPLETED\' to \'PENDING\'', 'request', 'BHR-2025-000006', 'COMPLETED', 'PENDING', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 21:25:08'),
(18, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000006 from \'MEDIUM\' to \'LOW\'', 'request', 'BHR-2025-000006', 'MEDIUM', 'LOW', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-23 21:25:22'),
(19, 1, 'Unknown', 'STATUS_CHANGE', 'Updated request BHR-2025-000007 status from \'COMPLETED\' to \'PENDING\'', 'request', 'BHR-2025-000007', 'COMPLETED', 'PENDING', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 05:35:02'),
(20, 1, 'Unknown', 'STATUS_CHANGE', 'Updated request BHR-2025-000007 status from \'PENDING\' to \'READY\'', 'request', 'BHR-2025-000007', 'PENDING', 'READY', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 05:35:14'),
(21, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000007 from \'HIGH\' to \'MEDIUM\'', 'request', 'BHR-2025-000007', 'HIGH', 'MEDIUM', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 05:35:24'),
(22, 1, 'Unknown', 'STATUS_CHANGE', 'Updated request BHR-2025-000005 status from \'READY\' to \'IN PROGRESS\'', 'request', 'BHR-2025-000005', 'READY', 'IN PROGRESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 05:52:22'),
(23, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000005 from \'\' to \'HIGH\'', 'request', 'BHR-2025-000005', '', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 05:52:23'),
(24, 1, 'Unknown', 'STATUS_CHANGE', 'Updated request BHR-2025-000004 status from \'READY\' to \'PENDING\'', 'request', 'BHR-2025-000004', 'READY', 'PENDING', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 05:52:38'),
(25, 1, 'Unknown', 'STATUS_CHANGE', 'Updated request BHR-2025-000007 status from \'READY\' to \'COMPLETED\'', 'request', 'BHR-2025-000007', 'READY', 'COMPLETED', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 05:53:04'),
(26, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000007 from \'MEDIUM\' to \'LOW\'', 'request', 'BHR-2025-000007', 'MEDIUM', 'LOW', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 05:53:04'),
(27, 1, 'Unknown', 'STATUS_CHANGE', 'Updated request BHR-2025-000003 status from \'IN PROGRESS\' to \'COMPLETED\'', 'request', 'BHR-2025-000003', 'IN PROGRESS', 'COMPLETED', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 07:07:18'),
(28, 1, 'Unknown', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000003 from \'\' to \'HIGH\'', 'request', 'BHR-2025-000003', '', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 07:07:18'),
(29, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 07:09:08'),
(30, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 07:22:27'),
(31, 1, 'Unknown', 'NOTIFICATION_DELETE', 'Deleted notification: \'Free Medical Check-up\'', 'notification', '1', 'Free Medical Check-up', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 07:33:23'),
(32, 1, 'Unknown', 'NOTIFICATION_ADD', 'Added new NEWS notification: \'testing\'', 'notification', NULL, NULL, 'testing', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 07:33:34'),
(33, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 07:34:56'),
(34, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 07:45:39'),
(35, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 07:47:48'),
(36, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:18:02'),
(37, 1, 'admin@gov.ph', '', 'Approved account for user: shouballesteros5@gmail.com', 'account', '9', 'pending', 'approved', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:19:49'),
(38, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:30:57'),
(39, 1, 'admin@gov.ph', 'ACCOUNT_APPROVAL', 'Approved account for user: john@gmail.com', 'account', '2', 'pending', 'approved', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:31:03'),
(40, 1, 'admin@gov.ph', 'ACCOUNT_REJECTION', 'Rejected account registration for: tyron123@gmail.com (Tyron Chavez)', 'account', '4', 'pending', 'rejected', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:31:07'),
(41, 1, 'admin@gov.ph', 'STATUS_CHANGE', 'Updated request BHR-2025-000003 status from \'COMPLETED\' to \'IN PROGRESS\'', 'request', 'BHR-2025-000003', 'COMPLETED', 'IN PROGRESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:35:11'),
(42, 1, 'admin@gov.ph', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000003 from \'HIGH\' to \'LOW\'', 'request', 'BHR-2025-000003', 'HIGH', 'LOW', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:35:11'),
(43, 1, 'admin@gov.ph', 'STATUS_CHANGE', 'Updated request BHR-2025-000002 status from \'COMPLETED\' to \'IN PROGRESS\'', 'request', 'BHR-2025-000002', 'COMPLETED', 'IN PROGRESS', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:35:41'),
(44, 1, 'admin@gov.ph', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000002 from \'\' to \'HIGH\'', 'request', 'BHR-2025-000002', '', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:35:41'),
(45, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:59:56'),
(46, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 10:59:58'),
(47, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:10:05'),
(48, 1, 'admin@gov.ph', 'ACCOUNT_APPROVAL', 'Approved account for user: tien@gmail.com', 'account', '7', 'pending', 'approved', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:10:17'),
(49, 1, 'admin@gov.ph', 'NOTIFICATION_ADD', 'Added new EVENT notification: \'implementing na\'', 'notification', NULL, NULL, 'implementing na', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:12:25'),
(50, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:12:29'),
(51, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:13:13'),
(52, 1, 'admin@gov.ph', 'STATUS_CHANGE', 'Updated request BHR-2025-000008 status from \'PENDING\' to \'READY\' with message: game sah', 'request', 'BHR-2025-000008', 'PENDING', 'READY', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:13:32'),
(53, 1, 'admin@gov.ph', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000008 from \'\' to \'HIGH\'', 'request', 'BHR-2025-000008', '', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:13:32'),
(54, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:13:38'),
(55, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:17:18'),
(56, 1, 'admin@gov.ph', 'STATUS_CHANGE', 'Updated request BHR-2025-000009 status from \'PENDING\' to \'COMPLETED\'', 'request', 'BHR-2025-000009', 'PENDING', 'COMPLETED', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:18:00'),
(57, 1, 'admin@gov.ph', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000009 from \'\' to \'HIGH\'', 'request', 'BHR-2025-000009', '', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:18:00'),
(58, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 11:18:06'),
(59, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 14:20:35'),
(60, 1, 'admin@gov.ph', 'STATUS_CHANGE', 'Updated request BHR-2025-000010 status from \'PENDING\' to \'COMPLETED\'', 'request', 'BHR-2025-000010', 'PENDING', 'COMPLETED', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 14:20:50'),
(61, 1, 'admin@gov.ph', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000010 from \'\' to \'HIGH\'', 'request', 'BHR-2025-000010', '', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 14:20:50'),
(62, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 14:20:56'),
(63, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 14:59:49'),
(64, 1, 'admin@gov.ph', 'ACCOUNT_APPROVAL', 'Approved account for user: ballesteros.shou.nicol@gmail.com', 'account', '12', 'pending', 'approved', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 14:59:57'),
(65, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 15:00:02'),
(66, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 15:05:28'),
(67, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 15:06:15'),
(68, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 15:16:09'),
(69, 1, 'admin@gov.ph', 'ACCOUNT_APPROVAL', 'Approved account for user: shouballesteros4@gmail.com', 'account', '6', 'pending', 'approved', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 15:16:14'),
(70, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 15:16:16'),
(71, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 17:10:37'),
(72, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 17:10:52'),
(73, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-24 17:12:00'),
(74, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 09:53:17'),
(75, 1, 'admin@gov.ph', 'ACCOUNT_APPROVAL', 'Approved account for user: airamjesse@gmail.com', 'account', '10', 'pending', 'approved', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:06:13'),
(76, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:15:15'),
(77, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:16:49'),
(78, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:17:19'),
(79, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:18:09'),
(80, 1, 'admin@gov.ph', 'ACCOUNT_APPROVAL', 'Approved account for user: shou123@gmail.com', 'account', '3', 'pending', 'approved', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:18:16'),
(81, 1, 'admin@gov.ph', 'STATUS_CHANGE', 'Updated request BHR-2025-000003 status from \'IN PROGRESS\' to \'READY\'', 'request', 'BHR-2025-000003', 'IN PROGRESS', 'READY', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:43:56'),
(82, 1, 'admin@gov.ph', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000003 from \'LOW\' to \'HIGH\'', 'request', 'BHR-2025-000003', 'LOW', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:43:56'),
(83, 1, 'admin@gov.ph', 'STATUS_CHANGE', 'Updated request BHR-2025-000003 status from \'READY\' to \'PENDING\'', 'request', 'BHR-2025-000003', 'READY', 'PENDING', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:44:16'),
(84, 1, 'admin@gov.ph', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000003 from \'HIGH\' to \'LOW\'', 'request', 'BHR-2025-000003', 'HIGH', 'LOW', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:44:16'),
(85, 1, 'admin@gov.ph', 'STATUS_CHANGE', 'Updated request BHR-2025-000012 status from \'PENDING\' to \'COMPLETED\'', 'request', 'BHR-2025-000012', 'PENDING', 'COMPLETED', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:47:30'),
(86, 1, 'admin@gov.ph', 'PRIORITY_CHANGE', 'Changed priority for request BHR-2025-000012 from \'MEDIUM\' to \'HIGH\'', 'request', 'BHR-2025-000012', 'MEDIUM', 'HIGH', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:47:30'),
(87, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:47:46'),
(88, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 10:56:32'),
(89, 1, 'admin@gov.ph', 'NOTIFICATION_ADD', 'Added new NEWS notification: \'Vaccine\'', 'notification', NULL, NULL, 'Vaccine', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:03:58'),
(90, 1, 'admin@gov.ph', 'NOTIFICATION_DELETE', 'Deleted notification: \'Vaccine\'', 'notification', '12', 'Vaccine', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:06:02'),
(91, 1, 'admin@gov.ph', 'NOTIFICATION_DELETE', 'Deleted notification: \'ml\'', 'notification', '5', 'ml', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:06:06'),
(92, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:16:32'),
(93, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:19:49'),
(94, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:22:02'),
(95, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:22:43'),
(96, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:22:59'),
(97, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:36:25'),
(98, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:39:54'),
(99, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:40:06'),
(100, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:50:53'),
(101, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:54:41'),
(102, 1, 'admin@gov.ph', 'NOTIFICATION_ADD', 'Added new NEWS notification: \'test\'', 'notification', NULL, NULL, 'test', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 11:55:31'),
(103, 1, 'admin@gov.ph', '', 'Added new barangay official: \'Karl Navidad\' as Dota gods', 'official', NULL, NULL, 'Karl Navidad - Dota gods', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 12:01:35'),
(104, 1, 'admin@gov.ph', '', 'Deleted barangay official: \'Karl Navidad\' (Dota gods)', 'official', '7', 'Karl Navidad - Dota gods', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 12:01:47'),
(105, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 12:01:54'),
(106, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 12:02:01'),
(107, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 15:08:53'),
(108, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 16:01:33'),
(109, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 16:01:38'),
(110, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 16:03:38'),
(111, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 16:05:03'),
(112, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 16:32:16'),
(113, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 16:35:59'),
(114, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 16:36:05'),
(115, 1, 'admin@gov.ph', 'LOGIN', 'Admin logged into the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 17:18:06'),
(116, 1, 'admin@gov.ph', 'ACCOUNT_APPROVAL', 'Approved account for user: ballesteros.136512150091@depedqc.ph', 'account', '20', 'pending', 'approved', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 17:18:28'),
(117, 1, 'admin@gov.ph', 'LOGOUT', 'Admin logged out from the system', 'system', NULL, NULL, NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-25 17:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `barangay_officials`
--

CREATE TABLE `barangay_officials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangay_officials`
--

INSERT INTO `barangay_officials` (`id`, `name`, `position`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 'Hon. Maria Santos', 'Barangay Captain', 1, '2025-11-25 11:17:52', '2025-11-25 11:17:52'),
(2, 'Ms. Ana Cruz', 'Secretary', 2, '2025-11-25 11:17:52', '2025-11-25 11:17:52'),
(3, 'Mr. Pedro Garcia', 'Treasurer', 3, '2025-11-25 11:41:19', '2025-11-25 11:41:19'),
(4, 'Shou Ballesteros', 'Lead Dev', 4, '2025-11-25 11:50:34', '2025-11-25 11:50:34'),
(5, 'Airam Licerio', 'Figma Gods', 5, '2025-11-25 11:55:01', '2025-11-25 11:55:01'),
(6, 'Tyron Chavez', 'Drug Lord', 6, '2025-11-25 11:56:16', '2025-11-25 11:56:16');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `type` enum('NEWS','EVENT') NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `title`, `date`, `description`, `created_at`, `updated_at`) VALUES
(6, 'NEWS', 'dota', 'December 29, 2025', 'rarara', '2025-11-16 15:49:08', '2025-11-16 15:49:08'),
(8, 'NEWS', 'test', 'test', 'test', '2025-11-17 20:27:40', '2025-11-17 20:27:40'),
(9, 'NEWS', 'domain bukas', '12132134', 'daws', '2025-11-23 20:58:53', '2025-11-23 20:58:53'),
(10, 'NEWS', 'testing', 'November 21, 2025', 'wawa', '2025-11-24 07:33:34', '2025-11-24 07:33:34'),
(11, 'EVENT', 'implementing na', 'November 24, 2025', 'buying domain and implementing', '2025-11-24 11:12:24', '2025-11-24 11:12:24'),
(13, 'NEWS', 'test', 'test', 'test', '2025-11-25 11:55:31', '2025-11-25 11:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NOT NULL DEFAULT (current_timestamp() + interval 15 minute),
  `used` tinyint(1) DEFAULT 0,
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `otp`, `created_at`, `expires_at`, `used`, `reset_token`) VALUES
(12, 'admin@gov.qc.ph', '639117', '2025-11-23 20:45:24', '2025-11-23 21:45:24', 0, NULL),
(16, 'shouballesteros5@gmail.com', '284435', '2025-11-24 07:35:06', '2025-11-24 08:35:06', 0, NULL),
(21, 'shouballesteros4@gmail.com', '120469', '2025-11-25 09:24:27', '2025-11-25 10:24:27', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `ticket_id` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `priority` varchar(55) NOT NULL DEFAULT '',
  `contact` varchar(15) NOT NULL,
  `requesttype` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `status` enum('PENDING','UNDER REVIEW','IN PROGRESS','READY','COMPLETED') DEFAULT 'PENDING',
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `ticket_id`, `user_id`, `fullname`, `priority`, `contact`, `requesttype`, `description`, `status`, `submitted_at`, `updated_at`) VALUES
(7, 'BHR-2025-000002', 2, 'michael', 'HIGH', '09167039130', 'Clearance', 'hahaha', 'IN PROGRESS', '2025-11-16 12:18:55', '2025-11-24 10:35:41'),
(8, 'BHR-2025-000003', 2, 'airam licerio', 'LOW', '09167039130', 'indigency', 'dwdsadaw', 'PENDING', '2025-11-16 12:19:07', '2025-11-25 10:44:16'),
(9, 'BHR-2025-000004', 2, 'john@gmail.com', '', 'N/A', 'Barangay Certificate of Household Membership', 'dwasd', 'PENDING', '2025-11-16 16:40:41', '2025-11-24 05:52:38'),
(13, 'BHR-2025-000005', 2, 'john@gmail.com', 'HIGH', '09167039130', 'Barangay Clearance', 'haha', 'IN PROGRESS', '2025-11-17 20:33:56', '2025-11-24 05:52:21'),
(14, 'BHR-2025-000006', 2, 'john@gmail.com', 'LOW', '09167039130', 'Barangay Construction / Renovation Permit', 'test', 'PENDING', '2025-11-17 20:34:10', '2025-11-23 21:25:22'),
(15, 'BHR-2025-000007', 2, 'john@gmail.com', 'LOW', '09167039130', 'Barangay Certification for PWD', 'wawa', 'COMPLETED', '2025-11-23 20:31:26', '2025-11-24 05:53:02'),
(16, 'BHR-2025-000008', 9, 'shouballesteros5@gmail.com', 'HIGH', '09167039130', 'Barangay Event Permit (Sound Permit, Activity Perm', 'urgent', 'READY', '2025-11-24 11:12:57', '2025-11-24 11:13:32'),
(17, 'BHR-2025-000009', 6, 'shouballesteros4@gmail.com', 'HIGH', '09167039130', 'Clearance of No Objection', 'pa shuk', 'COMPLETED', '2025-11-24 11:16:37', '2025-11-24 11:18:00'),
(18, 'BHR-2025-000010', 11, 'shouballesteros9@gmail.com', 'HIGH', '09167039130', 'Barangay Certificate of No Derogatory Record', 'dwadas', 'COMPLETED', '2025-11-24 14:20:26', '2025-11-24 14:20:50'),
(19, 'BHR-2025-000011', 2, 'john@gmail.com', 'LOW', '0', 'Barangay Certificate for Livelihood Program Applic', 'dasda', 'PENDING', '2025-11-24 15:40:41', '2025-11-24 15:40:41'),
(20, 'BHR-2025-000012', 2, 'john@gmail.com', 'HIGH', '0', 'Barangay Certification for Solo Parent (Referral f', 'for school', 'COMPLETED', '2025-11-25 09:26:26', '2025-11-25 10:47:30'),
(21, 'BHR-2025-000013', 2, 'john@gmail.com', 'MEDIUM', '0', 'Barangay Business Clearance', 'dada', 'PENDING', '2025-11-25 10:54:33', '2025-11-25 10:54:33'),
(22, 'BHR-2025-000014', 10, 'airamjesse@gmail.com', 'HIGH', '0', 'Barangay Blotter / Incident Report Copy', 'gago', 'PENDING', '2025-11-25 10:54:53', '2025-11-25 10:54:53'),
(23, 'BHR-2025-000015', 10, 'airamjesse@gmail.com', 'MEDIUM', '0', 'Barangay Clearance for Street Vending', 'gaga', 'PENDING', '2025-11-25 10:54:58', '2025-11-25 10:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `request_updates`
--

CREATE TABLE `request_updates` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `message` text DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT 'Admin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_updates`
--

INSERT INTO `request_updates` (`id`, `request_id`, `status`, `message`, `updated_by`, `created_at`) VALUES
(2, 15, 'PENDING', '', 'Admin', '2025-11-24 05:35:02'),
(3, 15, 'READY', '', 'Admin', '2025-11-24 05:35:14'),
(4, 13, 'IN PROGRESS', '', 'Admin', '2025-11-24 05:52:21'),
(5, 13, 'IN PROGRESS', '', 'Admin', '2025-11-24 05:52:23'),
(6, 13, 'IN PROGRESS', '', 'Admin', '2025-11-24 05:52:24'),
(7, 13, 'IN PROGRESS', '', 'Admin', '2025-11-24 05:52:25'),
(8, 13, 'IN PROGRESS', '', 'Admin', '2025-11-24 05:52:26'),
(9, 13, 'IN PROGRESS', '', 'Admin', '2025-11-24 05:52:27'),
(10, 13, 'IN PROGRESS', '', 'Admin', '2025-11-24 05:52:27'),
(11, 13, 'IN PROGRESS', '', 'Admin', '2025-11-24 05:52:28'),
(12, 9, 'PENDING', '', 'Admin', '2025-11-24 05:52:38'),
(13, 15, 'COMPLETED', '', 'Admin', '2025-11-24 05:53:03'),
(14, 8, 'COMPLETED', '', 'Admin', '2025-11-24 07:07:18'),
(15, 8, 'IN PROGRESS', '', 'Admin', '2025-11-24 10:35:11'),
(16, 7, 'IN PROGRESS', '', 'Admin', '2025-11-24 10:35:41'),
(17, 16, 'READY', 'game sah', 'Admin', '2025-11-24 11:13:32'),
(18, 17, 'COMPLETED', '', 'Admin', '2025-11-24 11:18:00'),
(19, 18, 'COMPLETED', '', 'Admin', '2025-11-24 14:20:50'),
(20, 8, 'READY', '', 'Admin', '2025-11-25 10:43:56'),
(21, 8, 'PENDING', '', 'Admin', '2025-11-25 10:44:16'),
(22, 20, 'COMPLETED', '', 'Admin', '2025-11-25 10:47:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_usertype` (`usertype`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admin_id` (`admin_id`),
  ADD KEY `idx_action_type` (`action_type`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_target` (`target_type`,`target_id`),
  ADD KEY `idx_admin_action_date` (`admin_id`,`action_type`,`created_at`),
  ADD KEY `idx_account_actions` (`action_type`,`target_type`,`target_id`);

--
-- Indexes for table `barangay_officials`
--
ALTER TABLE `barangay_officials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_expires_at` (`expires_at`),
  ADD KEY `idx_reset_token` (`email`),
  ADD KEY `idx_email_used` (`email`,`used`,`expires_at`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_id` (`ticket_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_submitted_at` (`submitted_at`);

--
-- Indexes for table `request_updates`
--
ALTER TABLE `request_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_request_id` (`request_id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `barangay_officials`
--
ALTER TABLE `barangay_officials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `request_updates`
--
ALTER TABLE `request_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD CONSTRAINT `audit_trail_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `account` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_updates`
--
ALTER TABLE `request_updates`
  ADD CONSTRAINT `request_updates_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `requests` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
