-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Mer 07 Mars 2018 à 14:53
-- Version du serveur: 5.6.11
-- Version de PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `quanlybenhvien`
--
CREATE DATABASE IF NOT EXISTS `quanlybenhvien` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quanlybenhvien`;

-- --------------------------------------------------------

--
-- Structure de la table `accountant`
--

CREATE TABLE IF NOT EXISTS `accountant` (
  `accountant_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`accountant_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `accountant`
--

INSERT INTO `accountant` (`accountant_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Madhuri Pilat', 'accountant@accountant.com', 'accountant', 'Mumbai, India', '9800000000');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Administrator', 'admin@admin.com', 'admin', 'Admin Address', '0901 551 781');

-- --------------------------------------------------------

--
-- Structure de la table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_timestamp` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_timestamp`, `doctor_id`, `patient_id`) VALUES
(1, 1449097200, 1, 2),
(2, 1450220400, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `bed`
--

CREATE TABLE IF NOT EXISTS `bed` (
  `bed_id` int(11) NOT NULL AUTO_INCREMENT,
  `bed_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` longtext NOT NULL COMMENT 'ward,cabin,ICU',
  `status` int(11) NOT NULL DEFAULT '0',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bed_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `bed`
--

INSERT INTO `bed` (`bed_id`, `bed_number`, `type`, `status`, `description`) VALUES
(1, 'W1', 'ward', 0, 'ward1'),
(2, 'W2', 'ward', 0, 'ward 2'),
(3, 'I1', 'icu', 0, 'icu 1');

-- --------------------------------------------------------

--
-- Structure de la table `bed_allotment`
--

CREATE TABLE IF NOT EXISTS `bed_allotment` (
  `bed_allotment_id` int(11) NOT NULL AUTO_INCREMENT,
  `bed_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `allotment_timestamp` int(11) NOT NULL,
  `discharge_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`bed_allotment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `bed_allotment`
--

INSERT INTO `bed_allotment` (`bed_allotment_id`, `bed_id`, `patient_id`, `allotment_timestamp`, `discharge_timestamp`) VALUES
(1, 1, 2, 1449702000, 1449874800);

-- --------------------------------------------------------

--
-- Structure de la table `blood_bank`
--

CREATE TABLE IF NOT EXISTS `blood_bank` (
  `blood_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`blood_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `blood_bank`
--

INSERT INTO `blood_bank` (`blood_group_id`, `blood_group`, `status`) VALUES
(1, 'A+', '55'),
(2, 'A-', '42'),
(3, 'B+', '98'),
(4, 'B-', '63'),
(5, 'AB+', '47'),
(6, 'AB-', '65'),
(7, 'O+', '28'),
(8, 'O-', '64');

-- --------------------------------------------------------

--
-- Structure de la table `blood_donor`
--

CREATE TABLE IF NOT EXISTS `blood_donor` (
  `blood_donor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_donation_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`blood_donor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `blood_donor`
--

INSERT INTO `blood_donor` (`blood_donor_id`, `name`, `blood_group`, `sex`, `age`, `phone`, `email`, `address`, `last_donation_timestamp`) VALUES
(1, 'Sudhir Thakur', 'A+', 'male', 25, '9800000000', 'donor@blooddonor.com', 'Mumbai, India', 1413237600);

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `department`
--

INSERT INTO `department` (`department_id`, `name`, `description`) VALUES
(1, 'Anesthesiology', 'Anesthesiology'),
(2, 'Bacteriological Laboratory', 'Bacteriological Laboratory'),
(3, 'Physical Therapy', 'Physical Therapy'),
(4, 'Plastic Surgery', 'Plastic Surgery');

-- --------------------------------------------------------

--
-- Structure de la table `diagnosis_report`
--

CREATE TABLE IF NOT EXISTS `diagnosis_report` (
  `diagnosis_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_type` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'xray,blood test',
  `document_type` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'text,photo',
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `laboratorist_id` int(11) NOT NULL,
  PRIMARY KEY (`diagnosis_report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `profile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `name`, `email`, `password`, `address`, `phone`, `department_id`, `profile`) VALUES
(1, 'Dr. Prashant Patil', 'doctor@doctor.com', 'doctor', 'Mumbai, India', '9800000000', 4, 'profile details here');

-- --------------------------------------------------------

--
-- Structure de la table `email_template`
--

CREATE TABLE IF NOT EXISTS `email_template` (
  `email_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `task` longtext CHARACTER SET latin1 NOT NULL,
  `subject` longtext CHARACTER SET latin1 NOT NULL,
  `body` longtext CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`email_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `patient_id`, `title`, `description`, `amount`, `creation_timestamp`, `status`) VALUES
(1, 1, 'Blood Test', 'Blood test for maleria, Nov 2015', 500, 1448985663, 'unpaid'),
(2, 2, 'Fracture', 'Fracture bandage.', 1200, 1448985702, 'paid');

-- --------------------------------------------------------

--
-- Structure de la table `laboratorist`
--

CREATE TABLE IF NOT EXISTS `laboratorist` (
  `laboratorist_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`laboratorist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `laboratorist`
--

INSERT INTO `laboratorist` (`laboratorist_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Trần Tuấn', 'trantuan1234@gmail.com', 'laboratorist', 'Thủ Đức', '0901 551 781');

-- --------------------------------------------------------

--
-- Structure de la table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phrase_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=234 ;

--
-- Contenu de la table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'admin_dashboard', 'admin dashboard'),
(2, 'login', 'Đăng nhập'),
(3, 'email', 'Email'),
(4, 'password', 'Mật Khẩu'),
(5, 'forgot_password?', 'Quên mật khẩu?'),
(6, 'account_type', 'Quyền hạn'),
(7, 'admin', 'admin'),
(8, 'doctor', 'Bác sỹ'),
(9, 'patient', 'Bệnh nhân'),
(10, 'pharmacist', 'Dược sĩ'),
(11, 'laboratorist', 'Nhân công'),
(12, 'accountant', 'Kế toán'),
(13, 'monitor_hospital', 'Giám sát bệnh nhân'),
(14, 'nurse', 'Y tá'),
(15, 'department', 'Nhân sự'),
(16, 'dashboard', 'Thống kê'),
(17, 'settings', 'Cài đặt'),
(18, 'profile', 'Thông Tin'),
(19, 'settings_updated', 'Cập nhật cài đặt'),
(20, 'logout', 'Thoát'),
(21, 'logged_out', 'Thoát ra'),
(22, 'reset_password', 'Đặt lại mật khẩu'),
(23, 'reset', 'Đặt lại'),
(24, 'account', 'Tài khoản'),
(25, 'select_language', 'Cài đặt ngôn ngữ'),
(26, 'panel', 'Bảng điều khiển'),
(27, 'view_appointment', 'Xem cuộc hẹn'),
(28, 'view_payment', 'xem thanh toán'),
(29, 'view_bed_status', 'xem tình trạng giường ngủ'),
(30, 'view_blood_bank', 'xem ngân hàng máu'),
(31, 'view_medicine', 'xem thuốc'),
(32, 'view_operation', 'xem hoạt động'),
(33, 'view_birth_report', 'xem báo cáo sinh'),
(34, 'view_death_report', 'xem báo cáo về cái chết'),
(35, 'manage_email_template', 'quản lý mẫu email'),
(36, 'manage_noticeboard', 'quản lý bảng thông báo'),
(37, 'system_settings', 'Cài đặt hệ thống'),
(38, 'manage_language', 'quản lý ngôn ngữ'),
(39, 'backup_restore', 'phục hồi dữ liệu đã lưu'),
(40, 'appointment', 'cuộc hẹn'),
(41, 'payment', 'thanh toán'),
(42, 'blood_bank', 'ngân hàng máu'),
(43, 'medicine', 'dược phẩm'),
(44, 'operation_report', 'báo cáo hoạt động'),
(45, 'birth_report', 'báo cáo sinh'),
(46, 'death_report', 'báo cáo về cái chết'),
(47, 'bed_allotment', 'giường ngủ'),
(48, 'noticeboard', 'bảng ghi chú'),
(49, 'language', 'ngôn ngữ'),
(50, 'backup', 'sao lưu'),
(51, 'calendar_schedule', 'Lịch'),
(52, 'manage_department', 'quản lý bộ phận'),
(53, 'department_list', 'danh sách phòng'),
(54, 'add_department', 'thêm bộ phận'),
(55, 'department_name', 'Tên bộ phận'),
(56, 'description', 'sự miêu tả'),
(57, 'options', 'lựa chọn'),
(58, 'edit', 'chỉnh sửa'),
(59, 'delete', 'xóa bỏ'),
(60, 'department_description', 'mô tả bộ phận'),
(61, 'manage_doctor', 'quản lý bác sĩ'),
(62, 'doctor_list', 'danh sách bác sĩ'),
(63, 'add_doctor', 'thêm bác sĩ'),
(64, 'doctor_name', 'tên bác sĩ'),
(65, 'name', 'Tên'),
(66, 'address', 'địa chỉ nhà'),
(67, 'phone', 'điện thoại'),
(68, 'manage_patient', 'quản lý bệnh nhân'),
(69, 'patient_list', 'danh sách bệnh nhân'),
(70, 'add_patient', 'thêm kiên nhẫn'),
(71, 'patient_name', 'tên bệnh nhân'),
(72, 'age', 'tuổi tác'),
(73, 'sex', 'Giới tính'),
(74, 'blood_group', 'nhóm máu'),
(75, 'birth_date', 'ngày sinh'),
(76, 'male', 'Nam giới'),
(77, 'female', 'Nữ giới'),
(78, 'manage_nurse', 'quản lý y tá'),
(79, 'nurse_list', 'danh sách y tá'),
(80, 'add_nurse', 'thêm y tá'),
(81, 'nurse_name', 'tên y tá'),
(82, 'manage_pharmacist', 'quản lý dược sĩ'),
(83, 'pharmacist_list', 'danh sách dược sĩ'),
(84, 'add_pharmacist', 'thêm dược sĩ'),
(85, 'pharmacist_name', 'tên dược sĩ'),
(86, 'manage_laboratorist', 'quản lý lao động, eo'),
(87, 'laboratorist_list', 'danh sách lao động, eo'),
(88, 'add_laboratorist', 'thêm lao động viên, eo'),
(89, 'laboratorist_name', 'tên nhà xưởng, sl'),
(90, 'manage_accountant', 'quản lý kế toán'),
(91, 'accountant_list', 'danh sách kế toán'),
(92, 'add_accountant', 'thêm kế toán'),
(93, 'accountant_name', 'tên kế toán'),
(94, 'phrase_list', 'danh sách cụm từ'),
(95, 'add_phrase', 'thêm cụm từ'),
(96, 'add_language', 'thêm ngôn ngữ'),
(97, 'phrase', 'cụm từ'),
(98, 'delete_language', 'xoá ngôn ngữ'),
(99, 'update_phrase', 'cập nhật cụm từ'),
(100, 'time', 'thời gian'),
(101, 'amount', 'số lượng'),
(102, 'payment_type', 'hình thức thanh toán'),
(103, 'transaction_id', 'ID giao dịch'),
(104, 'invoice_id', 'ID hóa đơn'),
(105, 'method', 'phương pháp'),
(106, 'bed_list', 'danh sách giường ngủ'),
(107, 'bed_id', 'giường id'),
(108, 'bed_type', 'giường loại'),
(109, 'allotment_time', 'thời gian phân bổ'),
(110, 'discharge_time', 'thời gian xả'),
(111, 'bed_number', 'số giường'),
(112, 'type', 'kiểu'),
(113, 'blood_donor_list', 'danh sách các nhà tài trợ máu'),
(114, 'last_donation_date', 'ngày tặng cuối cùng'),
(115, 'status', 'trạng thái'),
(116, 'category', 'thể loại'),
(117, 'price', 'giá bán'),
(118, 'manufacturing_company', 'công ty sản xuất'),
(119, 'view_operation_report', 'xem báo cáo hoạt động'),
(120, 'view_report', 'xem báo cáo'),
(121, 'date', 'ngày'),
(122, 'noticeboard_list', 'danh sách thông báo'),
(123, 'add_noticeboard', 'thêm bảng thông báo'),
(124, 'title', 'chức vụ'),
(125, 'notice', 'để ý'),
(126, 'system_name', 'Tên hệ thống'),
(127, 'save', 'Lưu'),
(128, 'system_email', 'email hệ thống'),
(129, 'system_title', 'tiêu đề hệ thống'),
(130, 'paypal_email', 'paypal email'),
(131, 'currency', 'tiền tệ'),
(132, 'restore', 'phục hồi'),
(133, 'report', 'bài báo cáo'),
(134, 'all', 'Tất cả'),
(135, 'upload_&_restore_from_backup', 'tải lên và khôi phục lại từ bản sao lưu'),
(136, 'manage_profile', 'quản lý hồ sơ'),
(137, 'update_profile', 'cập nhật hồ sơ'),
(138, 'change_password', 'đổi mật khẩu'),
(139, 'new_password', 'mật khẩu mới'),
(140, 'confirm_new_password', 'xác nhận mật khẩu mới'),
(141, 'update_password', 'cập nhật mật khẩu'),
(142, 'option', 'Tùy chọn'),
(143, 'edit_phrase', 'edit phrase'),
(144, 'edit_noticeboard', 'edit noticeboard'),
(145, 'doctor_dashboard', 'bảng điều khiển bác sĩ'),
(146, 'manage_appointment', 'quản lý cuộc hẹn'),
(147, 'manage_prescription', 'quản lý theo toa'),
(148, 'manage_report', 'quản lý báo cáo'),
(149, 'prescription', 'đơn thuốc'),
(150, 'edit_patient', 'chỉnh sửa bệnh nhân'),
(151, 'appointment_list', 'danh sách cuộc hẹn'),
(152, 'add_appointment', 'bổ nhiệm bổ nhiệm'),
(153, 'edit_appointment', 'chỉnh sửa cuộc hẹn'),
(154, 'prescription_list', 'danh sách toa'),
(155, 'add_prescription', 'thêm đơn thuốc'),
(156, 'case_history', 'lịch sử ca bệnh'),
(157, 'add_description', 'thêm mô tả'),
(158, 'medication', 'thuốc men'),
(159, 'medication_from_pharmacist', 'thuốc từ dược sĩ'),
(160, 'edit_prescription', 'chỉnh sửa đơn thuốc'),
(161, 'diagnosis_report', 'báo cáo chẩn đoán'),
(162, 'report_type', 'loại báo cáo'),
(163, 'document_type', 'loại tài liệu'),
(164, 'download', 'download'),
(165, 'manage_bed_allotment', 'quản lý phân chia giường'),
(166, 'bed_allotment_list', 'danh sách giường ngủ'),
(167, 'add_bed_allotment', 'thêm phân bổ giường'),
(168, 'allotment_date_time', 'ngày giờ phân bổ'),
(169, 'discharge_date_time', 'ngày xả ngày'),
(170, 'operation', 'hoạt động'),
(171, 'birth', 'Sinh'),
(172, 'death', 'tử vong'),
(173, 'other', 'khác'),
(174, 'add_report', 'thêm báo cáo'),
(175, 'patient_dashboard', 'bảng điều khiển bệnh nhân'),
(176, 'view_prescription', 'xem toa thuốc'),
(177, 'view_doctor', 'view doctor'),
(178, 'admit_history', 'thừa nhận lịch sử'),
(179, 'operation_history', 'lịch sử hoạt động'),
(180, 'view_invoice', 'xem hóa đơn'),
(181, 'payment_history', 'lịch sử thanh toán'),
(182, 'view_admit_history', 'xem thừa nhận lịch sử'),
(183, 'view_operation_history', 'xem lịch sử hoạt động'),
(184, 'invoice_list', 'danh sách hóa đơn'),
(185, 'creation_timestamp', 'dấu thời gian tạo'),
(186, 'nurse_dashboard', 'bảng điều khiển y tá'),
(187, 'bed_ward', 'giường bệnh'),
(188, 'manage_bed', 'quản lý giường'),
(189, 'manage_blood_bank', 'quản lý ngân hàng máu'),
(190, 'manage_blood_donor', 'quản lý người hiến máu'),
(191, 'add_bed', 'thêm giường'),
(192, 'ward', 'khu vực'),
(193, 'cabin', 'cabin'),
(194, 'icu', 'icu'),
(195, 'edit_bed', 'chỉnh sửa giường'),
(196, 'edit_bed_allotment', 'chỉnh sửa phân bổ giường'),
(197, 'blood_bank_list', 'danh sách ngân hàng máu'),
(198, 'edit_blood_bank', 'chỉnh sửa ngân hàng máu'),
(199, 'add_blood_donor', 'thêm người cho máu'),
(200, 'edit_blood_donor', 'chỉnh sửa hiến máu'),
(201, 'pharmacist_dashboard', 'bảng điều khiển dược sĩ'),
(202, 'medicine_category', 'loại thuốc'),
(203, 'manage_medicine', 'quản lý dược phẩm'),
(204, 'provide_medication', 'cung cấp thuốc men'),
(205, 'manage_medicine_category', 'quản lý loại thuốc'),
(206, 'medicine_category_list', 'danh mục loại thuốc'),
(207, 'add_medicine_category', 'thêm loại thuốc'),
(208, 'medicine_category_name', 'tên loại dược phẩm'),
(209, 'medicine_category_description', 'mô tả loại dược phẩm'),
(210, 'medicine_list', 'danh sách thuốc'),
(211, 'add_medicine', 'thêm thuốc'),
(212, 'medicine_name', 'tên thuốc'),
(213, 'medicine_catogory', 'loại thuốc'),
(214, 'edit_medicine_category', 'chỉnh sửa loại thuốc'),
(215, 'edit_medicine', 'chỉnh sửa thuốc'),
(216, 'laboratorist_dashboard', 'bảng điều khiển lao động, eo'),
(217, 'add_diagnosis_report', 'thêm báo cáo chẩn đoán'),
(218, 'report_status', 'báo cáo tình trạng'),
(219, 'add_diagnostic_report', 'thêm báo cáo chẩn đoán'),
(220, 'image', 'image'),
(221, 'doc', 'doc'),
(222, 'pdf', 'pdf'),
(223, 'excel', 'excel'),
(224, 'upload_document', 'tải lên tài liệu'),
(225, 'accountant_dashboard', 'bảng điều khiển kế toán'),
(226, 'invoice / take_payment', 'hóa đơn / thanh toán'),
(227, 'manage_invoice', 'quản lý hoá đơn'),
(228, 'add_invoice', 'thêm hoá đơn'),
(229, 'unpaid', 'chưa thanh toán'),
(230, 'take_cash_payment', 'thanh toán bằng tiền mặt'),
(231, 'paid', 'đã thanh toán'),
(232, 'edit_invoice', 'chỉnh sửa hóa đơn'),
(233, 'edit_nurse', '');

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `medicine_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `medicine_category_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  `manufacturing_company` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `medicine`
--

INSERT INTO `medicine` (`medicine_id`, `name`, `medicine_category_id`, `description`, `price`, `manufacturing_company`, `status`) VALUES
(1, 'Aber C 500', 2, 'Vitamin C 500gm', '25', 'Company Cipla', '50');

-- --------------------------------------------------------

--
-- Structure de la table `medicine_category`
--

CREATE TABLE IF NOT EXISTS `medicine_category` (
  `medicine_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`medicine_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `medicine_category`
--

INSERT INTO `medicine_category` (`medicine_category_id`, `name`, `description`) VALUES
(1, 'Allergy Liquids', 'Allergic medicines'),
(2, 'Vitamins Tablets', 'Vitamins tablets only');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_from_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_from_id` int(11) NOT NULL,
  `user_to_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `noticeboard`
--

CREATE TABLE IF NOT EXISTS `noticeboard` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`) VALUES
(1, 'Christmas Holidays', '25th will be holiday.', 1450998000),
(2, 'Chairmans Birthday', '17 Jan is Chairmans bithday.', 1453849200);

-- --------------------------------------------------------

--
-- Structure de la table `nurse`
--

CREATE TABLE IF NOT EXISTS `nurse` (
  `nurse_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`nurse_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `nurse`
--

INSERT INTO `nurse` (`nurse_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Preeti Goswami', 'nurse@nurse.com', 'nurse', 'Mumbai, India', '9800000000');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `account_opening_timestamp` int(11) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `patient`
--

INSERT INTO `patient` (`patient_id`, `name`, `email`, `password`, `address`, `phone`, `sex`, `birth_date`, `age`, `blood_group`, `account_opening_timestamp`) VALUES
(1, 'Anurag Basu', 'patient@patient.com', 'patient', 'Mumbai, India', '9800000000', 'male', '03/04/1981', 34, 'B+', 1448984171);

-- --------------------------------------------------------

--
-- Structure de la table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `transaction_id`, `invoice_id`, `patient_id`, `method`, `description`, `amount`, `timestamp`) VALUES
(1, 'Fracture', '573319', 2, 2, 'cash', 'Fracture bandage.', 1200, 1448985709);

-- --------------------------------------------------------

--
-- Structure de la table `pharmacist`
--

CREATE TABLE IF NOT EXISTS `pharmacist` (
  `pharmacist_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pharmacist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `pharmacist`
--

INSERT INTO `pharmacist` (`pharmacist_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Manoj Hedao', 'pharmacist@pharmacist.com', 'pharmacist', 'Mumbai, India', '9800000000');

-- --------------------------------------------------------

--
-- Structure de la table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_timestamp` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `case_history` longtext COLLATE utf8_unicode_ci NOT NULL,
  `medication` longtext COLLATE utf8_unicode_ci NOT NULL,
  `medication_from_pharmacist` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`prescription_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `creation_timestamp`, `doctor_id`, `patient_id`, `case_history`, `medication`, `medication_from_pharmacist`, `description`) VALUES
(1, 1448984647, 1, 1, 'Case history details here of patient Anurag Basu<br>', 'Medication details here of patient Anurag Basu<br>', 'Medication from pharmacist details here of patient Anurag Basu<br>', 'Additional description here of patient Anurag Basu<br>'),
(2, 1452125702, 1, 1, 'Case history of patient here<br>', 'Medication for patient here<br>', 'medication from pharmacists here<br>', 'Description and notes here');

-- --------------------------------------------------------

--
-- Structure de la table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'operation,birth,death',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Kiến Thức Việt'),
(7, 'system_email', 'quoctuan1588@gmail.com'),
(2, 'system_title', 'Kiến Thức Việt'),
(3, 'address', 'quoctuan1588@gmail.com'),
(4, 'phone', '0901 551 781'),
(5, 'paypal_email', 'quoctuan1588@gmail.com'),
(6, 'currency', 'VNĐ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
