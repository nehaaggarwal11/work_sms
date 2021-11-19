#
# TABLE STRUCTURE FOR: alumni_events
#

DROP TABLE IF EXISTS `alumni_events`;

CREATE TABLE `alumni_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `session_id` int(11) NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `event_notification_message` text NOT NULL,
  `show_onwebsite` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: alumni_students
#

DROP TABLE IF EXISTS `alumni_students`;

CREATE TABLE `alumni_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `current_email` varchar(255) NOT NULL,
  `current_phone` varchar(255) NOT NULL,
  `occupation` text NOT NULL,
  `address` text NOT NULL,
  `student_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `alumni_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: attendence_type
#

DROP TABLE IF EXISTS `attendence_type`;

CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `key_value` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '2016-06-23 23:41:37', '0000-00-00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Late With Excuse', '<b class=\"text text-warning\">E</b>', 'no', '2018-05-29 13:49:48', '0000-00-00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '2016-06-23 23:42:28', '0000-00-00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '2016-10-11 17:05:40', '0000-00-00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Holiday', 'H', 'yes', '2016-10-11 17:05:01', '0000-00-00');
INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2016-06-23 23:42:28', '0000-00-00');


#
# TABLE STRUCTURE FOR: book_issues
#

DROP TABLE IF EXISTS `book_issues`;

CREATE TABLE `book_issues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `duereturn_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT '0',
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `book_issues` (`id`, `book_id`, `duereturn_date`, `return_date`, `issue_date`, `is_returned`, `member_id`, `is_active`, `created_at`) VALUES (1, 1, '2022-03-04', '2021-10-20', '2021-10-20', 1, 1, 'no', '2021-10-20 15:55:06');
INSERT INTO `book_issues` (`id`, `book_id`, `duereturn_date`, `return_date`, `issue_date`, `is_returned`, `member_id`, `is_active`, `created_at`) VALUES (2, 1, '2021-11-15', NULL, '2021-11-15', 0, 1, 'no', '2021-11-15 00:04:31');
INSERT INTO `book_issues` (`id`, `book_id`, `duereturn_date`, `return_date`, `issue_date`, `is_returned`, `member_id`, `is_active`, `created_at`) VALUES (3, 7, '2021-12-01', NULL, '2021-11-15', 0, 3, 'no', '2021-11-15 00:07:19');


#
# TABLE STRUCTURE FOR: books
#

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) NOT NULL,
  `book_no` varchar(50) NOT NULL,
  `isbn_no` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `rack_no` varchar(100) NOT NULL,
  `publish` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text,
  `available` varchar(10) DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `books` (`id`, `book_title`, `book_no`, `isbn_no`, `subject`, `rack_no`, `publish`, `author`, `qty`, `perunitcost`, `postdate`, `description`, `available`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'C++ with oops', 'b121', 'sa1', '1', '1', 'xzy', 'das', 2, '100.00', '2021-11-16', 'asasa', 'yes', 'no', '2021-11-14 23:59:02', NULL);
INSERT INTO `books` (`id`, `book_title`, `book_no`, `isbn_no`, `subject`, `rack_no`, `publish`, `author`, `qty`, `perunitcost`, `postdate`, `description`, `available`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Science Fiction', 'b523', 'sa2', '2', '2', 'wqq', 'sdad', 3, '200.00', '2021-11-16', 'sasasasa', 'No', 'no', '2021-11-15 00:05:48', NULL);
INSERT INTO `books` (`id`, `book_title`, `book_no`, `isbn_no`, `subject`, `rack_no`, `publish`, `author`, `qty`, `perunitcost`, `postdate`, `description`, `available`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Code with java', 'b56', 'sa13', '12', '3', 'ddw', 'wsa', 6, '315.00', '0000-00-00', 'sasasasasxcsxdsas', 'yes', 'no', '2021-10-20 15:51:22', NULL);
INSERT INTO `books` (`id`, `book_title`, `book_no`, `isbn_no`, `subject`, `rack_no`, `publish`, `author`, `qty`, `perunitcost`, `postdate`, `description`, `available`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Engineering Drawing', 'b652', 'sa1546', '1325', '3', 'dasd', 'ssa', 4, '452.00', '0000-00-00', 'sdasdasdadada', 'yes', 'no', '2021-10-20 15:51:22', NULL);
INSERT INTO `books` (`id`, `book_title`, `book_no`, `isbn_no`, `subject`, `rack_no`, `publish`, `author`, `qty`, `perunitcost`, `postdate`, `description`, `available`, `is_active`, `created_at`, `updated_at`) VALUES (7, 'sas', 'b56', 'sa13', '12', '3', 'ddw', 'wsa', 6, '315.00', '0000-00-00', 'sasasasasxcsxdsas', 'yes', 'no', '2021-10-21 11:31:28', NULL);


#
# TABLE STRUCTURE FOR: categories
#

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'general', 'no', '2021-10-09 14:32:16', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'Category', 'no', '2021-11-12 05:19:16', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (7, NULL, 'no', '2021-11-12 05:19:21', NULL);


#
# TABLE STRUCTURE FOR: certificates
#

DROP TABLE IF EXISTS `certificates`;

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certificate_name` varchar(100) NOT NULL,
  `certificate_text` text NOT NULL,
  `left_header` varchar(100) NOT NULL,
  `center_header` varchar(100) NOT NULL,
  `right_header` varchar(100) NOT NULL,
  `left_footer` varchar(100) NOT NULL,
  `right_footer` varchar(100) NOT NULL,
  `center_footer` varchar(100) NOT NULL,
  `background_image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  `created_for` tinyint(1) NOT NULL COMMENT '1 = staff, 2 = students',
  `status` tinyint(1) NOT NULL,
  `header_height` int(11) NOT NULL,
  `content_height` int(11) NOT NULL,
  `footer_height` int(11) NOT NULL,
  `content_width` int(11) NOT NULL,
  `enable_student_image` tinyint(1) NOT NULL COMMENT '0=no,1=yes',
  `enable_image_height` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `certificates` (`id`, `certificate_name`, `certificate_text`, `left_header`, `center_header`, `right_header`, `left_footer`, `right_footer`, `center_footer`, `background_image`, `created_at`, `updated_at`, `created_for`, `status`, `header_height`, `content_height`, `footer_height`, `content_width`, `enable_student_image`, `enable_image_height`) VALUES (1, 'Sample Transfer Certificate', 'This is certify that <b>[name]</b> has born on [dob]  <br> and have following details [present_address] [guardian] [created_at] [admission_no] [roll_no] [class] [section] [gender] [admission_date] [category] [cast] [father_name] [mother_name] [religion] [email] [phone] .<br>We wish best of luck for future endeavors.', 'Reff. No.....1111111.........', 'To Whomever It May Concern', 'Date: _10__/_10__/__2019__', '.................................<br>admin', '.................................<br>principal', '.................................<br>admin', 'sampletc121.png', '2019-12-21 20:44:34', '0000-00-00', 2, 1, 360, 400, 480, 810, 1, 230);
INSERT INTO `certificates` (`id`, `certificate_name`, `certificate_text`, `left_header`, `center_header`, `right_header`, `left_footer`, `right_footer`, `center_footer`, `background_image`, `created_at`, `updated_at`, `created_for`, `status`, `header_height`, `content_height`, `footer_height`, `content_width`, `enable_student_image`, `enable_image_height`) VALUES (2, 'test', '[name] [dob] [present_address] [guardian] [created_at] [admission_no] [roll_no] [class] [section] [gender] [admission_date] [category] [cast] [father_name] [mother_name] [religion] [email] [phone]', 'Schiil', 'Main Content', 'Contact', 'footer left', 'right', 'center', 'heading-title-pattern.png', '2021-10-20 17:18:48', NULL, 2, 1, 100, 300, 500, 800, 0, 0);


#
# TABLE STRUCTURE FOR: chat_connections
#

DROP TABLE IF EXISTS `chat_connections`;

CREATE TABLE `chat_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_user_one` int(11) NOT NULL,
  `chat_user_two` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_user_one` (`chat_user_one`),
  KEY `chat_user_two` (`chat_user_two`),
  CONSTRAINT `chat_connections_ibfk_1` FOREIGN KEY (`chat_user_one`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_connections_ibfk_2` FOREIGN KEY (`chat_user_two`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: chat_messages
#

DROP TABLE IF EXISTS `chat_messages`;

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `chat_user_id` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `is_first` int(1) DEFAULT '0',
  `is_read` int(1) NOT NULL DEFAULT '0',
  `chat_connection_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chat_user_id` (`chat_user_id`),
  KEY `chat_connection_id` (`chat_connection_id`),
  CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`chat_user_id`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`chat_connection_id`) REFERENCES `chat_connections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: chat_users
#

DROP TABLE IF EXISTS `chat_users`;

CREATE TABLE `chat_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `create_staff_id` int(11) DEFAULT NULL,
  `create_student_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `student_id` (`student_id`),
  KEY `create_staff_id` (`create_staff_id`),
  KEY `create_student_id` (`create_student_id`),
  CONSTRAINT `chat_users_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_users_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_users_ibfk_3` FOREIGN KEY (`create_staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chat_users_ibfk_4` FOREIGN KEY (`create_student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: class_sections
#

DROP TABLE IF EXISTS `class_sections`;

CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (8, 5, 1, 'no', '2021-11-12 02:55:55', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (9, 5, 2, 'no', '2021-11-12 02:55:55', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (10, 5, 3, 'no', '2021-11-12 02:55:55', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (11, 6, 1, 'no', '2021-11-12 02:56:05', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (12, 6, 2, 'no', '2021-11-12 02:56:05', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (13, 7, 1, 'no', '2021-11-12 02:56:17', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (14, 7, 2, 'no', '2021-11-12 02:56:17', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (15, 7, 3, 'no', '2021-11-12 02:56:17', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (16, 8, 1, 'no', '2021-11-12 02:57:19', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (17, 8, 2, 'no', '2021-11-12 02:57:19', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (18, 8, 3, 'no', '2021-11-12 02:57:19', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (19, 9, 1, 'no', '2021-11-12 02:57:58', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (20, 9, 2, 'no', '2021-11-12 02:57:58', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (21, 9, 3, 'no', '2021-11-12 02:57:58', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (22, 10, 1, 'no', '2021-11-12 02:58:25', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (23, 10, 2, 'no', '2021-11-12 02:58:25', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (24, 10, 3, 'no', '2021-11-12 02:58:25', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (25, 11, 1, 'no', '2021-11-12 02:58:35', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (26, 12, 1, 'no', '2021-11-12 02:58:50', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (27, 13, 1, 'no', '2021-11-12 02:58:56', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (28, 13, 2, 'no', '2021-11-12 02:59:08', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (29, 13, 3, 'no', '2021-11-12 02:59:08', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (30, 14, 1, 'no', '2021-11-12 02:59:17', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (31, 14, 2, 'no', '2021-11-12 02:59:17', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (32, 15, 1, 'no', '2021-11-12 02:59:26', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (33, 15, 2, 'no', '2021-11-12 02:59:26', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (34, 16, 1, 'no', '2021-11-12 02:59:33', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (35, 16, 2, 'no', '2021-11-12 02:59:33', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (36, 16, 3, 'no', '2021-11-12 02:59:33', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (37, 17, 1, 'no', '2021-11-12 02:59:44', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (38, 17, 2, 'no', '2021-11-12 02:59:44', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (39, 17, 3, 'no', '2021-11-12 02:59:44', NULL);


#
# TABLE STRUCTURE FOR: class_teacher
#

DROP TABLE IF EXISTS `class_teacher`;

CREATE TABLE `class_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `class_teacher` (`id`, `class_id`, `staff_id`, `section_id`, `session_id`) VALUES (1, 5, 10, 2, 15);


#
# TABLE STRUCTURE FOR: classes
#

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Nursery', 'no', '2021-11-12 02:55:55', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'LKG ', 'no', '2021-11-12 02:56:05', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (7, 'UKG', 'no', '2021-11-12 02:56:17', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (8, '1st', 'no', '2021-11-12 02:57:38', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (9, '2nd', 'no', '2021-11-12 02:57:58', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (10, '3rd', 'no', '2021-11-12 02:58:25', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (11, '4th', 'no', '2021-11-12 02:58:35', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (12, '5th', 'no', '2021-11-12 02:58:50', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (13, '6th', 'no', '2021-11-12 02:58:56', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (14, '7th', 'no', '2021-11-12 02:59:17', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (15, '8th', 'no', '2021-11-12 02:59:26', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (16, '9th', 'no', '2021-11-12 02:59:33', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (17, '10', 'no', '2021-11-12 02:59:44', NULL);


#
# TABLE STRUCTURE FOR: complaint
#

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(255) NOT NULL,
  `source` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `complaint` (`id`, `complaint_type`, `source`, `name`, `contact`, `email`, `date`, `description`, `action_taken`, `assigned`, `note`, `image`) VALUES (1, 'Complain Type1', 'Complain Source', 'hjnk', 'fsdf', '', '2021-11-27', 'xcv', 'xcv', 'xcvx', 'vx', '');


#
# TABLE STRUCTURE FOR: complaint_type
#

DROP TABLE IF EXISTS `complaint_type`;

CREATE TABLE `complaint_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `complaint_type` (`id`, `complaint_type`, `description`, `created_at`) VALUES (1, 'Complain Type1', '', '2021-11-12 04:55:56');
INSERT INTO `complaint_type` (`id`, `complaint_type`, `description`, `created_at`) VALUES (2, 'Complain Type2', '', '2021-11-12 04:56:01');


#
# TABLE STRUCTURE FOR: conference_staff
#

DROP TABLE IF EXISTS `conference_staff`;

CREATE TABLE `conference_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conference_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `conference_id` (`conference_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `conference_staff_ibfk_1` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE,
  CONSTRAINT `conference_staff_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `conference_staff` (`id`, `conference_id`, `staff_id`, `created_at`) VALUES (1, 2, 9, '2021-10-28 05:47:13');
INSERT INTO `conference_staff` (`id`, `conference_id`, `staff_id`, `created_at`) VALUES (2, 3, 9, '2021-10-28 05:48:27');


#
# TABLE STRUCTURE FOR: conferences
#

DROP TABLE IF EXISTS `conferences`;

CREATE TABLE `conferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purpose` varchar(20) NOT NULL DEFAULT 'class',
  `staff_id` int(11) DEFAULT NULL,
  `created_id` int(10) NOT NULL,
  `title` text,
  `date` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `section_id` int(10) DEFAULT NULL,
  `session_id` int(10) NOT NULL,
  `host_video` int(1) NOT NULL DEFAULT '1',
  `client_video` int(1) NOT NULL DEFAULT '1',
  `description` varchar(50) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `return_response` text,
  `api_type` varchar(30) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `created_id` (`created_id`),
  CONSTRAINT `conferences_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `conferences_ibfk_2` FOREIGN KEY (`created_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `conferences` (`id`, `purpose`, `staff_id`, `created_id`, `title`, `date`, `duration`, `password`, `subject`, `class_id`, `section_id`, `session_id`, `host_video`, `client_video`, `description`, `timezone`, `return_response`, `api_type`, `status`, `created_at`) VALUES (1, 'class', 9, 1, 'zoom class 1', '2021-11-03 16:47:00', 3, 'l4exs', NULL, 1, 1, 15, 1, 1, 'dasdasdasdas', 'Asia/Kolkata', '{\"uuid\":\"APUH6IOWTVS9JvWu5+jeiw==\",\"id\":83676036231,\"host_id\":\"h7nvA_GaSRiDH8vn7mJr3g\",\"host_email\":\"gursharan.smartdesignhut@gmail.com\",\"topic\":\"zoom class 1\",\"type\":2,\"status\":\"waiting\",\"start_time\":\"2021-11-03T05:47:00Z\",\"duration\":3,\"timezone\":\"Asia\\/Kolkata\",\"created_at\":\"2021-10-28T11:18:58Z\",\"start_url\":\"https:\\/\\/us05web.zoom.us\\/s\\/83676036231?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Img3bnZBX0dhU1JpREg4dm43bUpyM2ciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI4MzY3NjAzNjIzMSIsInN0ayI6IlliTGtyeWZiN1VxUEJ1d2lkVnMwVDRjdnJ4ODV4TFZzeEloYXBPd0Z1WkEuQUcuNzRkcklZNDI4S001eHNtMVZrc0lqN2c1M0RJcnhocklndElSZnFPZzlxV3FKNmFpd1Q1eDd5RmtmMmRnc3I4UXpkRk1RazNEbnNBVVNrR28uRmNvYldISldMeG1wOExhanUwYTczZy4tX1h1NzYtS2tXc1RfMWZWIiwiZXhwIjoxNjM1NDI3MTM4LCJpYXQiOjE2MzU0MTk5MzgsImFpZCI6IjJKVVhadFE4UkE2ZW85N1dieTdwNmciLCJjaWQiOiIifQ.Hs0eI8MwjCAU_0-L9CSbrprdswM9sVVK4f6Mz0YNp_M\",\"join_url\":\"https:\\/\\/us05web.zoom.us\\/j\\/83676036231?pwd=aUZFSnRhc0QrcGgzNWxDWEVyN1JYZz09\",\"password\":\"l4exs\",\"h323_password\":\"886194\",\"pstn_password\":\"886194\",\"encrypted_password\":\"aUZFSnRhc0QrcGgzNWxDWEVyN1JYZz09\",\"settings\":{\"host_video\":true,\"participant_video\":true,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":false,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":false,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"alternative_hosts_email_notification\":true,\"device_testing\":false},\"pre_schedule\":false}', 'global', 0, '2021-10-28 04:18:58');
INSERT INTO `conferences` (`id`, `purpose`, `staff_id`, `created_id`, `title`, `date`, `duration`, `password`, `subject`, `class_id`, `section_id`, `session_id`, `host_video`, `client_video`, `description`, `timezone`, `return_response`, `api_type`, `status`, `created_at`) VALUES (2, 'meeting', NULL, 1, 'godaddy 1', '2021-10-28 18:17:00', 123, 'eSTDz', NULL, NULL, NULL, 0, 1, 1, 'dasdsdas', 'Asia/Kolkata', '{\"uuid\":\"upPLwCFqSeKaupi0IoVFgQ==\",\"id\":81130442858,\"host_id\":\"h7nvA_GaSRiDH8vn7mJr3g\",\"host_email\":\"gursharan.smartdesignhut@gmail.com\",\"topic\":\"godaddy 1\",\"type\":2,\"status\":\"waiting\",\"start_time\":\"2021-10-28T12:47:13Z\",\"duration\":123,\"timezone\":\"Asia\\/Kolkata\",\"created_at\":\"2021-10-28T12:47:13Z\",\"start_url\":\"https:\\/\\/us05web.zoom.us\\/s\\/81130442858?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Img3bnZBX0dhU1JpREg4dm43bUpyM2ciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI4MTEzMDQ0Mjg1OCIsInN0ayI6ImlNTnpWbjF3S0pzdHFIdHRWVDB4Q1NCaEVISmpsaFZBNEVSNmJETE5XWmcuQUcuOXlZaVdaeDlnTEU4TFBPRk96b0dibERJSUVsR1djdmJyWlpYWmI0SnhQaGU1emR2V241STZLYS0xQjhCenRkeU4xYllvR0NXRmp6ZTV6RS0uTzBCVTloVFVEWVZqMExWSmt4THpnUS5YbUpITUdjdG1zWGZsMTNkIiwiZXhwIjoxNjM1NDMyNDMzLCJpYXQiOjE2MzU0MjUyMzMsImFpZCI6IjJKVVhadFE4UkE2ZW85N1dieTdwNmciLCJjaWQiOiIifQ.pzmYZUSZJP1mOECdLfKkRAjoJBwg-GBKgay0FHXNMHU\",\"join_url\":\"https:\\/\\/us05web.zoom.us\\/j\\/81130442858?pwd=Z29PYUplMlJJcUk1OHB6SVU5RlZUdz09\",\"password\":\"eSTDz\",\"h323_password\":\"751751\",\"pstn_password\":\"751751\",\"encrypted_password\":\"Z29PYUplMlJJcUk1OHB6SVU5RlZUdz09\",\"settings\":{\"host_video\":true,\"participant_video\":true,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":false,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":false,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"alternative_hosts_email_notification\":true,\"device_testing\":false},\"pre_schedule\":false}', 'global', 2, '2021-10-28 21:08:32');
INSERT INTO `conferences` (`id`, `purpose`, `staff_id`, `created_id`, `title`, `date`, `duration`, `password`, `subject`, `class_id`, `section_id`, `session_id`, `host_video`, `client_video`, `description`, `timezone`, `return_response`, `api_type`, `status`, `created_at`) VALUES (3, 'meeting', NULL, 1, 'diwali on zoom on godaddy', '2021-11-24 18:18:00', 122, 'Hextk', NULL, NULL, NULL, 0, 1, 1, 'hello', 'Asia/Kolkata', '{\"uuid\":\"DBg+UgGfTUOhgvJVJy9uBQ==\",\"id\":84804462910,\"host_id\":\"h7nvA_GaSRiDH8vn7mJr3g\",\"host_email\":\"gursharan.smartdesignhut@gmail.com\",\"topic\":\"diwali on zoom on godaddy\",\"type\":2,\"status\":\"waiting\",\"start_time\":\"2021-11-24T07:18:00Z\",\"duration\":122,\"timezone\":\"Asia\\/Kolkata\",\"created_at\":\"2021-10-28T12:48:27Z\",\"start_url\":\"https:\\/\\/us05web.zoom.us\\/s\\/84804462910?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Img3bnZBX0dhU1JpREg4dm43bUpyM2ciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI4NDgwNDQ2MjkxMCIsInN0ayI6Im1zbUJXQldoNWY5ZzM1WVlONEZnQ2FxbGRmNlI0aFJadTJCa2RFUTduYzAuQUcuUUFZRkJJZWdTUTNBY1gyTVNjVG1yWFlJNnZhejZlRDNuZFZhTzhCSXJfMjNyb1ZXQkxBRnhKLUFwTTFITVI3MkR1LVdHdmdseFhGY25yZDUudUdXT0ZTOXZUZ2FxajR6czZDMUlBZy5jUGtlSk1WNE9HV21XbGFYIiwiZXhwIjoxNjM1NDMyNTA3LCJpYXQiOjE2MzU0MjUzMDcsImFpZCI6IjJKVVhadFE4UkE2ZW85N1dieTdwNmciLCJjaWQiOiIifQ.C_pE_2-bmT-sj2lzbY7MvNAR7dpdbJVyoj0fdnzm8yE\",\"join_url\":\"https:\\/\\/us05web.zoom.us\\/j\\/84804462910?pwd=c3QxZnFvQndQelAvblgyUlNqdlNKQT09\",\"password\":\"Hextk\",\"h323_password\":\"043364\",\"pstn_password\":\"043364\",\"encrypted_password\":\"c3QxZnFvQndQelAvblgyUlNqdlNKQT09\",\"settings\":{\"host_video\":true,\"participant_video\":true,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":false,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":false,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"alternative_hosts_email_notification\":true,\"device_testing\":false},\"pre_schedule\":false}', 'global', 2, '2021-10-28 21:08:30');
INSERT INTO `conferences` (`id`, `purpose`, `staff_id`, `created_id`, `title`, `date`, `duration`, `password`, `subject`, `class_id`, `section_id`, `session_id`, `host_video`, `client_video`, `description`, `timezone`, `return_response`, `api_type`, `status`, `created_at`) VALUES (4, 'class', 9, 1, 'class meeting on zoom on godaddy', '2021-10-29 18:21:00', 22, '4PPv9', NULL, 1, 1, 15, 1, 1, 'dddd', 'Asia/Kolkata', '{\"uuid\":\"vSilpIcMQdKt2Y89crxclQ==\",\"id\":81540816991,\"host_id\":\"h7nvA_GaSRiDH8vn7mJr3g\",\"host_email\":\"gursharan.smartdesignhut@gmail.com\",\"topic\":\"class meeting on zoom on godaddy\",\"type\":2,\"status\":\"waiting\",\"start_time\":\"2021-10-29T07:21:00Z\",\"duration\":22,\"timezone\":\"Asia\\/Kolkata\",\"created_at\":\"2021-10-28T12:51:15Z\",\"start_url\":\"https:\\/\\/us05web.zoom.us\\/s\\/81540816991?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Img3bnZBX0dhU1JpREg4dm43bUpyM2ciLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsIm1udW0iOiI4MTU0MDgxNjk5MSIsInN0ayI6IlVyZy1faG5xOGxTb3VuT1YzTzZzdmdUVkJwLS1hZE5XWHFteWI2MWNQSDAuQUcuWkJFR3M0VXAzV1hkcFhqc0dCTzN2QUw2UUF3UlRwQTMxQXVGTVl0Q0l1ZVhFYWZJRmMyd2dZMEd0ZDRZYmhVZW45YzIzQnJJYUVnVGtfNWEuNzZ4WC1tM2hGQy1TY0xGSDlseFRWZy4yUlVTTC04TURUU01BeERaIiwiZXhwIjoxNjM1NDMyNjc1LCJpYXQiOjE2MzU0MjU0NzUsImFpZCI6IjJKVVhadFE4UkE2ZW85N1dieTdwNmciLCJjaWQiOiIifQ.4IQXhCO-F3yLiWuZLBBzX58bBEmVXQGzMC3VAEWbQgs\",\"join_url\":\"https:\\/\\/us05web.zoom.us\\/j\\/81540816991?pwd=Ri9TMEgxZEtHT3pUT0dNYnlDK1dFUT09\",\"password\":\"4PPv9\",\"h323_password\":\"941357\",\"pstn_password\":\"941357\",\"encrypted_password\":\"Ri9TMEgxZEtHT3pUT0dNYnlDK1dFUT09\",\"settings\":{\"host_video\":true,\"participant_video\":true,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":false,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":false,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"alternative_hosts_email_notification\":true,\"device_testing\":false},\"pre_schedule\":false}', 'global', 0, '2021-10-28 05:51:15');


#
# TABLE STRUCTURE FOR: conferences_history
#

DROP TABLE IF EXISTS `conferences_history`;

CREATE TABLE `conferences_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conference_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `total_hit` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `confernce_id` (`conference_id`),
  KEY `staff_id` (`staff_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `conferences_history_ibfk_1` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE,
  CONSTRAINT `conferences_history_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `conferences_history_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: content_for
#

DROP TABLE IF EXISTS `content_for`;

CREATE TABLE `content_for` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `content_for` (`id`, `role`, `content_id`, `user_id`, `created_at`) VALUES (4, 'Teacher', 3, NULL, '2021-11-14 22:56:37');
INSERT INTO `content_for` (`id`, `role`, `content_id`, `user_id`, `created_at`) VALUES (5, 'student', 3, NULL, '2021-11-14 22:56:37');
INSERT INTO `content_for` (`id`, `role`, `content_id`, `user_id`, `created_at`) VALUES (6, 'Super Admin', 4, NULL, '2021-11-14 23:08:48');
INSERT INTO `content_for` (`id`, `role`, `content_id`, `user_id`, `created_at`) VALUES (7, 'student', 4, NULL, '2021-11-14 23:08:48');
INSERT INTO `content_for` (`id`, `role`, `content_id`, `user_id`, `created_at`) VALUES (8, 'Super Admin', 5, NULL, '2021-11-14 23:15:18');
INSERT INTO `content_for` (`id`, `role`, `content_id`, `user_id`, `created_at`) VALUES (9, 'student', 5, NULL, '2021-11-14 23:15:18');


#
# TABLE STRUCTURE FOR: contents
#

DROP TABLE IF EXISTS `contents`;

CREATE TABLE `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `cls_sec_id` int(10) NOT NULL,
  `file` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `contents` (`id`, `title`, `type`, `is_public`, `class_id`, `cls_sec_id`, `file`, `created_by`, `note`, `is_active`, `created_at`, `updated_at`, `date`) VALUES (3, 'Content test tea', 'study_material', 'Yes', 0, 0, 'uploads/school_content/material/3.pdf', 10, 'tea test', 'no', '2021-11-14 22:56:37', NULL, '2021-11-15');
INSERT INTO `contents` (`id`, `title`, `type`, `is_public`, `class_id`, `cls_sec_id`, `file`, `created_by`, `note`, `is_active`, `created_at`, `updated_at`, `date`) VALUES (4, 'Upload Content', 'syllabus', 'Yes', 0, 0, 'uploads/school_content/material/4.png', 1, 'czxc', 'no', '2021-11-14 23:08:48', NULL, '2021-11-15');
INSERT INTO `contents` (`id`, `title`, `type`, `is_public`, `class_id`, `cls_sec_id`, `file`, `created_by`, `note`, `is_active`, `created_at`, `updated_at`, `date`) VALUES (5, 'Upload  new', 'other_download', 'Yes', 0, 0, 'uploads/school_content/material/5.png', 1, 'zxcz', 'no', '2021-11-14 23:15:18', NULL, '2021-11-16');


#
# TABLE STRUCTURE FOR: custom_field_values
#

DROP TABLE IF EXISTS `custom_field_values`;

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_field_id` (`custom_field_id`),
  CONSTRAINT `custom_field_values_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: custom_fields
#

DROP TABLE IF EXISTS `custom_fields`;

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `belong_to` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `bs_column` int(10) DEFAULT NULL,
  `validation` int(11) DEFAULT '0',
  `field_values` text,
  `show_table` varchar(100) DEFAULT NULL,
  `visible_on_table` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: department
#

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (1, 'Computer Science', 'yes');


#
# TABLE STRUCTURE FOR: disable_reason
#

DROP TABLE IF EXISTS `disable_reason`;

CREATE TABLE `disable_reason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `disable_reason` (`id`, `reason`, `created_at`) VALUES (1, 'Disable Reason1', '2021-11-12 05:30:10');
INSERT INTO `disable_reason` (`id`, `reason`, `created_at`) VALUES (2, 'Disable Reason2', '2021-11-12 05:30:15');
INSERT INTO `disable_reason` (`id`, `reason`, `created_at`) VALUES (3, 'Disable Reason3', '2021-11-12 05:30:18');


#
# TABLE STRUCTURE FOR: dispatch_receive
#

DROP TABLE IF EXISTS `dispatch_receive`;

CREATE TABLE `dispatch_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `dispatch_receive` (`id`, `reference_no`, `to_title`, `address`, `note`, `from_title`, `date`, `image`, `created_at`, `updated_at`, `type`) VALUES (1, ' xcvxc', 'xvcxcv', 'v xcvx ', 'cvx cvx', ' cvxcvxcv', '2021-11-20', '', '2021-11-12 05:05:10', NULL, 'dispatch');


#
# TABLE STRUCTURE FOR: email_config
#

DROP TABLE IF EXISTS `email_config`;

CREATE TABLE `email_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `is_active`, `created_at`) VALUES (1, 'smtp', 'mail.wingdinginfotech.com ', '465', 'school_test_smtp@wingdinginfotech.com', 'Smart@1234', 'ssl', 'yes', '2021-10-28 05:41:05');


#
# TABLE STRUCTURE FOR: enquiry
#

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `reference` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `note` text NOT NULL,
  `source` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `assigned` varchar(100) NOT NULL,
  `class` int(11) NOT NULL,
  `no_of_child` varchar(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `enquiry` (`id`, `name`, `contact`, `address`, `reference`, `date`, `description`, `follow_up_date`, `note`, `source`, `email`, `assigned`, `class`, `no_of_child`, `status`) VALUES (1, 'Name', 'cvxcvxc', 'xcv', 'Complain Reference1', '2021-11-12', 'xcv', '2021-11-12', 'xcv', 'Complain Source1', 'xcxcv', 'xcv', 5, '5', 'active');


#
# TABLE STRUCTURE FOR: enquiry_type
#

DROP TABLE IF EXISTS `enquiry_type`;

CREATE TABLE `enquiry_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: events
#

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(200) NOT NULL,
  `event_description` varchar(300) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: exam_group_class_batch_exam_students
#

DROP TABLE IF EXISTS `exam_group_class_batch_exam_students`;

CREATE TABLE `exam_group_class_batch_exam_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_class_batch_exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `roll_no` int(6) NOT NULL DEFAULT '0',
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_class_batch_exam_id` (`exam_group_class_batch_exam_id`),
  KEY `student_id` (`student_id`),
  KEY `student_session_id` (`student_session_id`),
  CONSTRAINT `exam_group_class_batch_exam_students_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_class_batch_exam_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_class_batch_exam_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `exam_group_class_batch_exam_students` (`id`, `exam_group_class_batch_exam_id`, `student_id`, `student_session_id`, `roll_no`, `is_active`, `created_at`, `updated_at`) VALUES (4, 3, 3, 5, 0, 0, '2021-11-14 21:31:43', NULL);


#
# TABLE STRUCTURE FOR: exam_group_class_batch_exam_subjects
#

DROP TABLE IF EXISTS `exam_group_class_batch_exam_subjects`;

CREATE TABLE `exam_group_class_batch_exam_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `subject_id` int(10) NOT NULL,
  `date_from` date NOT NULL,
  `time_from` time NOT NULL,
  `duration` varchar(50) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `max_marks` float(10,2) DEFAULT NULL,
  `min_marks` float(10,2) DEFAULT NULL,
  `credit_hours` float(10,2) DEFAULT '0.00',
  `date_to` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `exam_group_class_batch_exam_subjects` (`id`, `exam_group_class_batch_exams_id`, `subject_id`, `date_from`, `time_from`, `duration`, `room_no`, `max_marks`, `min_marks`, `credit_hours`, `date_to`, `is_active`, `created_at`, `updated_at`) VALUES (4, 3, 1, '2021-11-14', '09:59:16', '3', '400', '100.00', '30.00', '1.00', NULL, 0, '2021-11-14 21:31:14', NULL);
INSERT INTO `exam_group_class_batch_exam_subjects` (`id`, `exam_group_class_batch_exams_id`, `subject_id`, `date_from`, `time_from`, `duration`, `room_no`, `max_marks`, `min_marks`, `credit_hours`, `date_to`, `is_active`, `created_at`, `updated_at`) VALUES (5, 3, 2, '2021-11-15', '09:00:49', '3', '300', '100.00', '30.00', '0.00', NULL, 0, '2021-11-14 21:31:14', NULL);


#
# TABLE STRUCTURE FOR: exam_group_class_batch_exams
#

DROP TABLE IF EXISTS `exam_group_class_batch_exams`;

CREATE TABLE `exam_group_class_batch_exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam` varchar(250) DEFAULT NULL,
  `session_id` int(10) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `description` text,
  `exam_group_id` int(11) DEFAULT NULL,
  `is_publish` int(1) DEFAULT '0',
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_id` (`exam_group_id`),
  CONSTRAINT `exam_group_class_batch_exams_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `exam_group_class_batch_exams` (`id`, `exam`, `session_id`, `date_from`, `date_to`, `description`, `exam_group_id`, `is_publish`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Eng', 15, NULL, NULL, '', 1, 1, 1, '2021-11-14 21:35:11', NULL);


#
# TABLE STRUCTURE FOR: exam_group_exam_connections
#

DROP TABLE IF EXISTS `exam_group_exam_connections`;

CREATE TABLE `exam_group_exam_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_id` int(11) DEFAULT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `exam_weightage` float(10,2) DEFAULT '0.00',
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_id` (`exam_group_id`),
  KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`),
  CONSTRAINT `exam_group_exam_connections_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_exam_connections_ibfk_2` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: exam_group_exam_results
#

DROP TABLE IF EXISTS `exam_group_exam_results`;

CREATE TABLE `exam_group_exam_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_class_batch_exam_student_id` int(11) NOT NULL,
  `exam_group_class_batch_exam_subject_id` int(11) DEFAULT NULL,
  `attendence` varchar(10) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT '0.00',
  `note` text,
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  `exam_group_student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_class_batch_exam_subject_id` (`exam_group_class_batch_exam_subject_id`),
  KEY `exam_group_student_id` (`exam_group_student_id`),
  KEY `exam_group_class_batch_exam_student_id` (`exam_group_class_batch_exam_student_id`),
  CONSTRAINT `exam_group_exam_results_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_subject_id`) REFERENCES `exam_group_class_batch_exam_subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_exam_results_ibfk_2` FOREIGN KEY (`exam_group_student_id`) REFERENCES `exam_group_students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_exam_results_ibfk_3` FOREIGN KEY (`exam_group_class_batch_exam_student_id`) REFERENCES `exam_group_class_batch_exam_students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `exam_group_exam_results` (`id`, `exam_group_class_batch_exam_student_id`, `exam_group_class_batch_exam_subject_id`, `attendence`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`, `exam_group_student_id`) VALUES (2, 4, 4, 'present', '30.00', '', 0, '2021-11-14 21:35:40', NULL, NULL);
INSERT INTO `exam_group_exam_results` (`id`, `exam_group_class_batch_exam_student_id`, `exam_group_class_batch_exam_subject_id`, `attendence`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`, `exam_group_student_id`) VALUES (3, 4, 5, 'present', '31.00', '', 0, '2021-11-14 21:35:53', NULL, NULL);


#
# TABLE STRUCTURE FOR: exam_group_students
#

DROP TABLE IF EXISTS `exam_group_students`;

CREATE TABLE `exam_group_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(10) DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_id` (`exam_group_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `exam_group_students_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: exam_groups
#

DROP TABLE IF EXISTS `exam_groups`;

CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `description` text,
  `is_active` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Exam Group 1', 'basic_system', '', 0, '2021-11-14 21:19:55', NULL);


#
# TABLE STRUCTURE FOR: exam_results
#

DROP TABLE IF EXISTS `exam_results`;

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendence` varchar(10) NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_schedule_id` (`exam_schedule_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: exam_schedules
#

DROP TABLE IF EXISTS `exam_schedules`;

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) DEFAULT NULL,
  `end_from` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_subject_id` (`teacher_subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: exams
#

DROP TABLE IF EXISTS `exams`;

CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: expense_head
#

DROP TABLE IF EXISTS `expense_head`;

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (1, 'Expense Head1', '', 'yes', 'no', '2021-11-12 05:33:44', NULL);


#
# TABLE STRUCTURE FOR: expenses
#

DROP TABLE IF EXISTS `expenses`;

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `expenses` (`id`, `exp_head_id`, `name`, `invoice_no`, `date`, `amount`, `documents`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (1, 1, 'xc', 'zxc', '2021-12-04', '500.53', NULL, '', 'yes', 'no', '2021-11-12 05:35:40', NULL);
INSERT INTO `expenses` (`id`, `exp_head_id`, `name`, `invoice_no`, `date`, `amount`, `documents`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (2, 1, 'cvbcvb', 'vbcvb', '2021-11-12', '323.00', NULL, '', 'yes', 'no', '2021-11-12 05:36:13', NULL);


#
# TABLE STRUCTURE FOR: fee_groups
#

DROP TABLE IF EXISTS `fee_groups`;

CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `is_system` int(1) NOT NULL DEFAULT '0',
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `is_active`, `created_at`) VALUES (1, 'Fees Group1', 0, '', 'no', '2021-11-12 03:28:50');


#
# TABLE STRUCTURE FOR: fee_groups_feetype
#

DROP TABLE IF EXISTS `fee_groups_feetype`;

CREATE TABLE `fee_groups_feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `fine_type` varchar(50) NOT NULL DEFAULT 'none',
  `due_date` date DEFAULT NULL,
  `fine_percentage` float(10,2) NOT NULL DEFAULT '0.00',
  `fine_amount` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fee_session_group_id` (`fee_session_group_id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `feetype_id` (`feetype_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `amount`, `fine_type`, `due_date`, `fine_percentage`, `fine_amount`, `is_active`, `created_at`) VALUES (1, 1, 1, 1, 15, '300.00', 'percentage', '2021-11-12', '2.00', '6.00', 'no', '2021-11-12 03:29:16');


#
# TABLE STRUCTURE FOR: fee_receipt_no
#

DROP TABLE IF EXISTS `fee_receipt_no`;

CREATE TABLE `fee_receipt_no` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: fee_session_groups
#

DROP TABLE IF EXISTS `fee_session_groups`;

CREATE TABLE `fee_session_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES (1, 1, 15, 'no', '2021-11-12 03:29:16');


#
# TABLE STRUCTURE FOR: feecategory
#

DROP TABLE IF EXISTS `feecategory`;

CREATE TABLE `feecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: feemasters
#

DROP TABLE IF EXISTS `feemasters`;

CREATE TABLE `feemasters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: fees_discounts
#

DROP TABLE IF EXISTS `fees_discounts`;

CREATE TABLE `fees_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: fees_reminder
#

DROP TABLE IF EXISTS `fees_reminder`;

CREATE TABLE `fees_reminder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminder_type` varchar(10) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `is_active` int(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `fees_reminder` (`id`, `reminder_type`, `day`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'before', 2, 0, '2020-02-28 19:08:32', NULL);
INSERT INTO `fees_reminder` (`id`, `reminder_type`, `day`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'before', 5, 0, '2020-02-28 19:08:36', NULL);
INSERT INTO `fees_reminder` (`id`, `reminder_type`, `day`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'after', 2, 0, '2020-02-28 19:08:40', NULL);
INSERT INTO `fees_reminder` (`id`, `reminder_type`, `day`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'after', 5, 0, '2020-02-28 19:08:44', NULL);


#
# TABLE STRUCTURE FOR: feetype
#

DROP TABLE IF EXISTS `feetype`;

CREATE TABLE `feetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_system` int(1) NOT NULL DEFAULT '0',
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `feetype` (`id`, `is_system`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES (1, 0, NULL, 'Fees Type1', '001', 'no', '2021-11-12 03:28:40', NULL, '');


#
# TABLE STRUCTURE FOR: follow_up
#

DROP TABLE IF EXISTS `follow_up`;

CREATE TABLE `follow_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `next_date` date NOT NULL,
  `response` text NOT NULL,
  `note` text NOT NULL,
  `followup_by` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: front_cms_media_gallery
#

DROP TABLE IF EXISTS `front_cms_media_gallery`;

CREATE TABLE `front_cms_media_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_media_gallery` (`id`, `image`, `thumb_path`, `dir_path`, `img_name`, `thumb_name`, `created_at`, `file_type`, `file_size`, `vid_url`, `vid_title`) VALUES (1, NULL, 'uploads/gallery/media/thumb/', 'uploads/gallery/media/', 'mobile games background7 by nj365 on DeviantArt.jpg', 'mobile games background7 by nj365 on DeviantArt.jpg', '2021-10-20 17:35:33', 'image/jpeg', '50229', '', '');
INSERT INTO `front_cms_media_gallery` (`id`, `image`, `thumb_path`, `dir_path`, `img_name`, `thumb_name`, `created_at`, `file_type`, `file_size`, `vid_url`, `vid_title`) VALUES (2, NULL, 'uploads/gallery/media/thumb/', 'uploads/gallery/media/', 'desktop-img.png', 'desktop-img.png', '2021-10-20 17:35:42', 'image/png', '108813', '', '');
INSERT INTO `front_cms_media_gallery` (`id`, `image`, `thumb_path`, `dir_path`, `img_name`, `thumb_name`, `created_at`, `file_type`, `file_size`, `vid_url`, `vid_title`) VALUES (3, NULL, 'uploads/gallery/media/thumb/', 'uploads/gallery/media/', 'screencapture-localhost-schoolmgmt-site-login-2021-10-18-17_07_18.pdf', 'screencapture-localhost-schoolmgmt-site-login-2021-10-18-17_07_18.pdf', '2021-10-20 17:36:07', 'application/pdf', '11809065', '', '');
INSERT INTO `front_cms_media_gallery` (`id`, `image`, `thumb_path`, `dir_path`, `img_name`, `thumb_name`, `created_at`, `file_type`, `file_size`, `vid_url`, `vid_title`) VALUES (8, NULL, 'uploads/gallery/media/thumb/', 'uploads/gallery/media/', 'ezgif.com-gif-maker.gif', 'ezgif.com-gif-maker.gif', '2021-10-21 14:55:41', 'image/gif', '720537', '', '');
INSERT INTO `front_cms_media_gallery` (`id`, `image`, `thumb_path`, `dir_path`, `img_name`, `thumb_name`, `created_at`, `file_type`, `file_size`, `vid_url`, `vid_title`) VALUES (36, NULL, 'uploads/gallery/media/thumb/', 'uploads/gallery/media/', 'Carrera_Homepage_V2a_R2.jpg', 'Carrera_Homepage_V2a_R2.jpg', '2021-10-21 15:21:39', 'image/jpeg', '3375994', '', '');


#
# TABLE STRUCTURE FOR: front_cms_menu_items
#

DROP TABLE IF EXISTS `front_cms_menu_items`;

CREATE TABLE `front_cms_menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ext_url` text,
  `open_new_tab` int(11) DEFAULT '0',
  `ext_url_link` text,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (1, 1, 'Home', 1, 0, NULL, NULL, NULL, 'home', 1, 0, NULL, 'no', '2019-12-03 03:41:50');
INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (2, 1, 'Contact Us', 76, 0, NULL, NULL, NULL, 'contact-us', 5, 0, NULL, 'no', '2021-10-20 17:49:19');
INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (3, 1, 'Complain', 2, 0, NULL, NULL, NULL, 'complain', 3, 0, NULL, 'no', '2019-12-03 03:41:52');
INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (4, 1, 'Admission', 0, 0, '1', NULL, 'http://yourschoolurl.com/online_admission', 'admssion', 2, 0, NULL, 'no', '2019-12-21 21:03:00');
INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (5, 1, 'Gallery', 0, 0, '1', NULL, 'http://localhost/final-with-our-logo/read/test-gallery', 'gallery', 4, 0, NULL, 'no', '2021-10-20 17:50:01');


#
# TABLE STRUCTURE FOR: front_cms_menus
#

DROP TABLE IF EXISTS `front_cms_menus`;

CREATE TABLE `front_cms_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` text,
  `open_new_tab` int(10) NOT NULL DEFAULT '0',
  `ext_url` text NOT NULL,
  `ext_url_link` text NOT NULL,
  `publish` int(11) NOT NULL DEFAULT '0',
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES (1, 'Main Menu', 'main-menu', 'Main menu', 0, '', '', 0, 'default', 'no', '2018-04-20 20:24:49');
INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES (2, 'Bottom Menu', 'bottom-menu', 'Bottom Menu', 0, '', '', 0, 'default', 'no', '2018-04-20 20:24:55');


#
# TABLE STRUCTURE FOR: front_cms_page_contents
#

DROP TABLE IF EXISTS `front_cms_page_contents`;

CREATE TABLE `front_cms_page_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: front_cms_pages
#

DROP TABLE IF EXISTS `front_cms_pages`;

CREATE TABLE `front_cms_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int(1) DEFAULT '0',
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` text,
  `meta_description` text,
  `meta_keyword` text,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext,
  `publish_date` date NOT NULL,
  `publish` int(10) DEFAULT '0',
  `sidebar` int(10) DEFAULT '0',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (1, 'default', 1, 'Home', 'page/home', 'page', 'home', '', '', '', '', '<p>home page</p>', '0000-00-00', 1, NULL, 'no', '2019-12-02 20:53:47');
INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<p>[form-builder:complain]</p>', '0000-00-00', 1, NULL, 'no', '2019-11-13 15:46:36');
INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (54, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>', '0000-00-00', 0, NULL, 'no', '2018-05-18 20:16:04');
INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (76, 'default', 0, 'Contact us', 'page/contact-us', 'page', 'contact-us', '', '', '', '', '<section class=\"contact\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<h2 class=\"col-md-12 col-sm-12\">Send In Your Query</h2>\r\n\r\n\r\n\r\n<div class=\"col-md-12 col-sm-12\">[form-builder:contact_us]<!--./row--></div>\r\n<!--./col-md-12--></div>\r\n<!--./row--></div>\r\n<!--./container--></section>\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/pin.svg\" />\r\n<h3>Our Location</h3>\r\n\r\n<p>350 Fifth Avenue, 34th floor New York NY 10118-3299 USA</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/phone.svg\" />\r\n<h3>CALL US</h3>\r\n\r\n<p>E-mail : info@abcschool.com</p>\r\n\r\n<p>Mobile : +91-9009987654</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/clock.svg\" />\r\n<h3>Working Hours</h3>\r\n\r\n<p>Mon-Fri : 9 am to 5 pm</p>\r\n\r\n<p>Sat : 9 am to 3 pm</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-12 col-sm-12\">\r\n<div class=\"mapWrapper fullwidth\"><iframe frameborder=\"0\" height=\"500\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://maps.google.com/maps?f=q&source=s_q&hl=EN&q=time+square&aq=&sll=40.716558,-73.931122&sspn=0.40438,1.056747&ie=UTF8&rq=1&ev=p&split=1&radius=33.22&hq=time+square&hnear=&ll=37.061753,-95.677185&spn=0.438347,0.769043&z=9&output=embed\" width=\"100%\"></iframe></div>\r\n</div>', '0000-00-00', 0, NULL, 'no', '2019-05-04 21:16:41');


#
# TABLE STRUCTURE FOR: front_cms_program_photos
#

DROP TABLE IF EXISTS `front_cms_program_photos`;

CREATE TABLE `front_cms_program_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) DEFAULT NULL,
  `media_gallery_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_program_photos` (`id`, `program_id`, `media_gallery_id`, `created_at`) VALUES (1, 3, 1, '2021-10-20 17:44:45');
INSERT INTO `front_cms_program_photos` (`id`, `program_id`, `media_gallery_id`, `created_at`) VALUES (2, 4, 2, '2021-10-20 17:45:48');
INSERT INTO `front_cms_program_photos` (`id`, `program_id`, `media_gallery_id`, `created_at`) VALUES (3, 4, 1, '2021-10-20 17:45:48');
INSERT INTO `front_cms_program_photos` (`id`, `program_id`, `media_gallery_id`, `created_at`) VALUES (4, 3, 2, '2021-10-20 17:52:35');


#
# TABLE STRUCTURE FOR: front_cms_programs
#

DROP TABLE IF EXISTS `front_cms_programs`;

CREATE TABLE `front_cms_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` text,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` text,
  `description` text,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `feature_image` text NOT NULL,
  `publish_date` date NOT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_programs` (`id`, `type`, `slug`, `url`, `title`, `date`, `event_start`, `event_end`, `event_venue`, `description`, `is_active`, `created_at`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `publish_date`, `publish`, `sidebar`) VALUES (1, 'notice', 'test-notice', 'read/test-notice', 'test notice', '2021-10-20', NULL, NULL, NULL, '<p>hjyjuyujytuvtcvytcvtyhvtyhrtyx6rt</p>', 'no', '2021-10-20 17:42:20', 'test notice', 'jhjtyybnuykbnuik i ', 'fddfdfd', 'http://localhost/final-with-our-logo/uploads/gallery/media/mobile games background7 by nj365 on DeviantArt.jpg', '0000-00-00', '0', NULL);
INSERT INTO `front_cms_programs` (`id`, `type`, `slug`, `url`, `title`, `date`, `event_start`, `event_end`, `event_venue`, `description`, `is_active`, `created_at`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `publish_date`, `publish`, `sidebar`) VALUES (2, 'events', 'test-event', 'read/test-event', 'test event', NULL, '2021-10-22', '2021-10-30', 'zirakpur', '<p>hdfdzfzfgzdfgdzfg</p>', 'no', '2021-10-22 00:22:21', 'test event ', 'jfghjgfjgfjtyryukiyurin riyui ryireeiyuirydf', 'jfghjfg', 'http://localhost/final-with-our-logo/uploads/gallery/media/desktop-img.png', '0000-00-00', '0', 1);
INSERT INTO `front_cms_programs` (`id`, `type`, `slug`, `url`, `title`, `date`, `event_start`, `event_end`, `event_venue`, `description`, `is_active`, `created_at`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `publish_date`, `publish`, `sidebar`) VALUES (3, 'banner', NULL, NULL, 'Banner Images', NULL, NULL, NULL, NULL, NULL, 'no', '2021-10-20 17:44:45', '', '', '', '', '0000-00-00', '0', 0);
INSERT INTO `front_cms_programs` (`id`, `type`, `slug`, `url`, `title`, `date`, `event_start`, `event_end`, `event_venue`, `description`, `is_active`, `created_at`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `publish_date`, `publish`, `sidebar`) VALUES (4, 'gallery', 'test-gallery', 'read/test-gallery', 'test gallery', NULL, NULL, NULL, NULL, '<p><a href=\"http://localhost/final-with-our-logo/uploads/gallery/media/screencapture-localhost-schoolmgmt-site-login-2021-10-18-17_07_18.pdf\">screencapture-localhost-schoolmgmt-site-login-2021-10-18-17_07_18.pdf</a></p>', 'no', '2021-10-20 17:45:48', '', '', '', '', '0000-00-00', '0', NULL);


#
# TABLE STRUCTURE FOR: front_cms_settings
#

DROP TABLE IF EXISTS `front_cms_settings`;

CREATE TABLE `front_cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int(10) DEFAULT '0',
  `is_active_front_cms` int(11) DEFAULT '0',
  `is_active_sidebar` int(1) DEFAULT '0',
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` text NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` text,
  `footer_text` varchar(500) DEFAULT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `fav_icon`, `created_at`) VALUES (1, 'default', NULL, NULL, NULL, NULL, '', '', '[\"news\",\"complain\"]', '', '', '', '', '', '', '', '', '', '', '2021-10-20 17:53:36');


#
# TABLE STRUCTURE FOR: general_calls
#

DROP TABLE IF EXISTS `general_calls`;

CREATE TABLE `general_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `call_dureation` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `call_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `general_calls` (`id`, `name`, `contact`, `date`, `description`, `follow_up_date`, `call_dureation`, `note`, `call_type`) VALUES (1, 'xzczx', 'zxcz', '2021-11-12', 'zxc', '2021-11-02', 'xcv', 'xcv', 'Incoming');


#
# TABLE STRUCTURE FOR: gmeet
#

DROP TABLE IF EXISTS `gmeet`;

CREATE TABLE `gmeet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purpose` varchar(20) NOT NULL DEFAULT 'class',
  `staff_id` int(11) DEFAULT NULL,
  `created_id` int(10) NOT NULL,
  `title` text,
  `date` datetime DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'manual',
  `api_data` text,
  `duration` int(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `url` text NOT NULL,
  `session_id` int(10) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `created_id` (`created_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `gmeet_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_ibfk_2` FOREIGN KEY (`created_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO `gmeet` (`id`, `purpose`, `staff_id`, `created_id`, `title`, `date`, `type`, `api_data`, `duration`, `subject`, `url`, `session_id`, `description`, `timezone`, `status`, `created_at`) VALUES (8, 'class', 1, 1, 'fdgdgdsfg', '2021-10-24 18:21:00', 'manual', NULL, 1, NULL, 'fsafs', 15, 'sfas', 'Asia/Kolkata', 0, '2021-10-21 18:22:18');
INSERT INTO `gmeet` (`id`, `purpose`, `staff_id`, `created_id`, `title`, `date`, `type`, `api_data`, `duration`, `subject`, `url`, `session_id`, `description`, `timezone`, `status`, `created_at`) VALUES (9, 'class', 1, 1, 'dasdsd', '2021-10-18 18:23:00', 'manual', NULL, 1, NULL, 'dasdddvd', 15, 'vzzz', 'Asia/Kolkata', 0, '2021-10-21 18:23:39');
INSERT INTO `gmeet` (`id`, `purpose`, `staff_id`, `created_id`, `title`, `date`, `type`, `api_data`, `duration`, `subject`, `url`, `session_id`, `description`, `timezone`, `status`, `created_at`) VALUES (10, 'meeting', NULL, 1, 'diwali Celebration', '2021-10-22 13:41:00', 'manual', NULL, 30, NULL, 'dasdsa.dasd.asd', 15, 'Duiwgdsfgd', 'Asia/Kolkata', 0, '2021-10-22 10:42:12');
INSERT INTO `gmeet` (`id`, `purpose`, `staff_id`, `created_id`, `title`, `date`, `type`, `api_data`, `duration`, `subject`, `url`, `session_id`, `description`, `timezone`, `status`, `created_at`) VALUES (11, 'class', 9, 1, 'gmeet on godaddy', '2021-11-10 18:21:00', 'manual', NULL, 17, NULL, 'gmeet.com', 15, 'dasdasdas', 'Asia/Kolkata', 0, '2021-10-28 05:52:17');


#
# TABLE STRUCTURE FOR: gmeet_history
#

DROP TABLE IF EXISTS `gmeet_history`;

CREATE TABLE `gmeet_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmeet_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `total_hit` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `gmeet_id` (`gmeet_id`),
  KEY `staff_id` (`staff_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `gmeet_history_ibfk_1` FOREIGN KEY (`gmeet_id`) REFERENCES `gmeet` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_history_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_history_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: gmeet_sections
#

DROP TABLE IF EXISTS `gmeet_sections`;

CREATE TABLE `gmeet_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmeet_id` int(11) NOT NULL,
  `cls_section_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cls_section_id` (`cls_section_id`),
  KEY `gmeet_id` (`gmeet_id`),
  CONSTRAINT `gmeet_sections_ibfk_1` FOREIGN KEY (`cls_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_sections_ibfk_2` FOREIGN KEY (`gmeet_id`) REFERENCES `gmeet` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: gmeet_settings
#

DROP TABLE IF EXISTS `gmeet_settings`;

CREATE TABLE `gmeet_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(200) DEFAULT NULL,
  `api_secret` varchar(200) DEFAULT NULL,
  `use_api` int(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `gmeet_settings` (`id`, `api_key`, `api_secret`, `use_api`, `created_at`) VALUES (1, '', '', 0, '2021-10-21 18:05:39');


#
# TABLE STRUCTURE FOR: gmeet_staff
#

DROP TABLE IF EXISTS `gmeet_staff`;

CREATE TABLE `gmeet_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmeet_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `gmeet_id` (`gmeet_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `gmeet_staff_ibfk_1` FOREIGN KEY (`gmeet_id`) REFERENCES `gmeet` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gmeet_staff_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `gmeet_staff` (`id`, `gmeet_id`, `staff_id`, `created_at`) VALUES (1, 10, 9, '2021-10-22 10:42:12');


#
# TABLE STRUCTURE FOR: grades
#

DROP TABLE IF EXISTS `grades`;

CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_type` varchar(250) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `grades` (`id`, `exam_type`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'basic_system', 'A', '5.0', '60.00', '70.00', '', 'no', '2021-11-14 21:20:38', NULL);
INSERT INTO `grades` (`id`, `exam_type`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'school_grade_system', 'B', '6.0', '50.00', '60.00', '', 'no', '2021-11-14 21:22:56', NULL);
INSERT INTO `grades` (`id`, `exam_type`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'coll_grade_system', 'c', '6.0', '50.00', '90.00', '', 'no', '2021-11-14 21:23:11', NULL);
INSERT INTO `grades` (`id`, `exam_type`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'gpa', 'D', '10.0', '90.00', '100.00', '', 'no', '2021-11-14 21:23:43', NULL);


#
# TABLE STRUCTURE FOR: homework
#

DROP TABLE IF EXISTS `homework`;

CREATE TABLE `homework` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(10) NOT NULL,
  `homework_date` date NOT NULL,
  `submit_date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `description` text,
  `create_date` date NOT NULL,
  `evaluation_date` date NOT NULL,
  `document` varchar(200) NOT NULL,
  `created_by` int(11) NOT NULL,
  `evaluated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_group_subject_id` (`subject_group_subject_id`),
  CONSTRAINT `homework_ibfk_1` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (1, 5, 1, 15, '2021-11-15', '2021-11-15', 10, 16, 0, '<p>test homework</p>', '2021-11-15', '2021-11-15', '1.png', 10, 10);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (2, 5, 1, 15, '2021-11-13', '2021-11-15', 10, 16, 0, '<p>hi test </p>', '2021-11-15', '2021-11-15', '2.png', 10, 10);


#
# TABLE STRUCTURE FOR: homework_evaluation
#

DROP TABLE IF EXISTS `homework_evaluation`;

CREATE TABLE `homework_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `homework_evaluation` (`id`, `homework_id`, `student_id`, `student_session_id`, `date`, `status`) VALUES (1, 1, 0, 5, '0000-00-00', 'Complete');
INSERT INTO `homework_evaluation` (`id`, `homework_id`, `student_id`, `student_session_id`, `date`, `status`) VALUES (2, 2, 0, 5, '0000-00-00', 'Complete');


#
# TABLE STRUCTURE FOR: hostel
#

DROP TABLE IF EXISTS `hostel`;

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `address` text,
  `intake` int(11) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `hostel` (`id`, `hostel_name`, `type`, `address`, `intake`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Savitri', 'Girls', 's+-da21das56666666666664 dasda asdw', 0, 'CSDASDASDA', 'no', '2021-10-20 17:01:57', NULL);


#
# TABLE STRUCTURE FOR: hostel_rooms
#

DROP TABLE IF EXISTS `hostel_rooms`;

CREATE TABLE `hostel_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT '0.00',
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `hostel_rooms` (`id`, `hostel_id`, `room_type_id`, `room_no`, `no_of_bed`, `cost_per_bed`, `title`, `description`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'R-2', 9, '500000.00', NULL, 'dasdasdas', '2021-10-20 17:03:08', NULL);


#
# TABLE STRUCTURE FOR: id_card
#

DROP TABLE IF EXISTS `id_card`;

CREATE TABLE `id_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` varchar(500) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_admission_no` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_class` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_blood_group` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_admission_no`, `enable_student_name`, `enable_class`, `enable_fathers_name`, `enable_mothers_name`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `status`) VALUES (1, 'Sample Student Identity Card', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1);
INSERT INTO `id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_admission_no`, `enable_student_name`, `enable_class`, `enable_fathers_name`, `enable_mothers_name`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `status`) VALUES (2, 'test', 'Mount Caramel', 'Address / Phone / Email *', 'background2.png', 'logo2.png', 'sign2.png', '#00ff67', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);


#
# TABLE STRUCTURE FOR: income
#

DROP TABLE IF EXISTS `income`;

CREATE TABLE `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: income_head
#

DROP TABLE IF EXISTS `income_head`;

CREATE TABLE `income_head` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: item
#

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item` (`id`, `item_category_id`, `name`, `unit`, `item_photo`, `description`, `created_at`, `updated_at`, `item_store_id`, `item_supplier_id`, `quantity`, `date`) VALUES (1, 1, 'Duster', '10', NULL, '', '2021-10-20 16:43:18', NULL, NULL, NULL, 0, '0000-00-00');


#
# TABLE STRUCTURE FOR: item_category
#

DROP TABLE IF EXISTS `item_category`;

CREATE TABLE `item_category` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES (1, 'Stationary', 'yes', 'stationary items', '2021-10-20 16:42:48', NULL);


#
# TABLE STRUCTURE FOR: item_issue
#

DROP TABLE IF EXISTS `item_issue`;

CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` varchar(100) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(2) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` varchar(10) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_category_id` (`item_category_id`),
  CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_issue` (`id`, `issue_type`, `issue_to`, `issue_by`, `issue_date`, `return_date`, `item_category_id`, `item_id`, `quantity`, `note`, `is_returned`, `created_at`, `is_active`) VALUES (1, '7', '1', 'Super Admin  (9000)', '2021-10-05', '2021-11-15', 1, 1, 2, 'lkhjlkjljklhjkl', 0, '2021-11-15 00:00:09', 'no');


#
# TABLE STRUCTURE FOR: item_stock
#

DROP TABLE IF EXISTS `item_stock`;

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `purchase_price` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_stock` (`id`, `item_id`, `supplier_id`, `symbol`, `store_id`, `quantity`, `purchase_price`, `date`, `attachment`, `description`, `is_active`, `created_at`) VALUES (1, 1, 1, '+', 1, 10, '20', '2021-10-20', 'uploads/inventory_items/1.png', 'l', 'yes', '2021-10-20 16:52:18');


#
# TABLE STRUCTURE FOR: item_store
#

DROP TABLE IF EXISTS `item_store`;

CREATE TABLE `item_store` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_store` (`id`, `item_store`, `code`, `description`) VALUES (1, 'stationary', 'st-001', 'Duster');


#
# TABLE STRUCTURE FOR: item_supplier
#

DROP TABLE IF EXISTS `item_supplier`;

CREATE TABLE `item_supplier` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_supplier` (`id`, `item_supplier`, `phone`, `email`, `address`, `contact_person_name`, `contact_person_phone`, `contact_person_email`, `description`) VALUES (1, 'Rajju di Hatti', '987654321', 'hatti@rajju.di', 'csd asda sa2312v ', 'Rajju', '9875624136', 'fsdafdsfsa@sfsfsfsfdsf.com', 'sfsdfsdaf');


#
# TABLE STRUCTURE FOR: languages
#

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Azerbaijan', 'az', 'az', 'no', 'no', '2019-11-20 16:53:12', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Albanian', 'sq', 'al', 'no', 'no', '2019-11-20 17:12:42', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Amharic', 'am', 'am', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'English', 'en', 'us', 'no', 'no', '2019-11-20 17:08:50', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Arabic', 'ar', 'sa', 'no', 'no', '2019-11-20 17:17:28', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (7, 'Afrikaans', 'af', 'af', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (8, 'Basque', 'eu', 'es', 'no', 'no', '2019-11-20 17:24:10', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (11, 'Bengali', 'bn', 'in', 'no', 'no', '2019-11-20 17:11:53', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (13, 'Bosnian', 'bs', 'bs', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (14, 'Welsh', 'cy', 'cy', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (15, 'Hungarian', 'hu', 'hu', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (16, 'Vietnamese', 'vi', 'vi', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (17, 'Haitian (Creole)', 'ht', 'ht', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (18, 'Galician', 'gl', 'gl', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (19, 'Dutch', 'nl', 'nl', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (21, 'Greek', 'el', 'gr', 'no', 'no', '2019-11-20 17:42:08', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (22, 'Georgian', 'ka', 'ge', 'no', 'no', '2019-11-20 17:41:40', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (23, 'Gujarati', 'gu', 'in', 'no', 'no', '2019-11-20 17:09:16', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (24, 'Danish', 'da', 'dk', 'no', 'no', '2019-11-20 17:33:25', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (25, 'Hebrew', 'he', 'il', 'no', 'no', '2019-11-20 17:43:50', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (26, 'Yiddish', 'yi', 'il', 'no', 'no', '2019-11-20 17:55:33', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (27, 'Indonesian', 'id', 'id', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (28, 'Irish', 'ga', 'ga', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (29, 'Italian', 'it', 'it', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (30, 'Icelandic', 'is', 'is', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (31, 'Spanish', 'es', 'es', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (33, 'Kannada', 'kn', 'kn', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (34, 'Catalan', 'ca', 'ca', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (36, 'Chinese', 'zh', 'cn', 'no', 'no', '2019-11-20 17:31:48', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (37, 'Korean', 'ko', 'kr', 'no', 'no', '2019-11-20 17:49:09', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (38, 'Xhosa', 'xh', 'ls', 'no', 'no', '2019-11-20 17:54:39', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (39, 'Latin', 'la', 'la', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (40, 'Latvian', 'lv', 'lv', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (41, 'Lithuanian', 'lt', 'lt', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (43, 'Malagasy', 'mg', 'mg', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (44, 'Malay', 'ms', 'ms', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (45, 'Malayalam', 'ml', 'ml', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (46, 'Maltese', 'mt', 'mt', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (47, 'Macedonian', 'mk', 'mk', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (48, 'Maori', 'mi', 'nz', 'no', 'no', '2019-11-20 17:50:27', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (49, 'Marathi', 'mr', 'in', 'no', 'no', '2019-11-20 17:09:51', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (51, 'Mongolian', 'mn', 'mn', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (52, 'German', 'de', 'de', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (53, 'Nepali', 'ne', 'ne', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (54, 'Norwegian', 'no', 'no', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (55, 'Punjabi', 'pa', 'in', 'no', 'no', '2019-11-20 17:10:16', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (57, 'Persian', 'fa', 'ir', 'no', 'no', '2019-11-20 17:51:17', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (59, 'Portuguese', 'pt', 'pt', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (60, 'Romanian', 'ro', 'ro', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (61, 'Russian', 'ru', 'ru', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (62, 'Cebuano', 'ceb', 'ph', 'no', 'no', '2019-11-20 17:29:12', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (64, 'Sinhala', 'si', 'si', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (65, 'Slovakian', 'sk', 'sk', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (66, 'Slovenian', 'sl', 'sl', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (67, 'Swahili', 'sw', 'ke', 'no', 'no', '2019-11-20 17:51:57', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (68, 'Sundanese', 'su', 'sd', 'no', 'no', '2019-12-03 16:36:57', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (70, 'Thai', 'th', 'th', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (71, 'Tagalog', 'tl', 'tl', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (72, 'Tamil', 'ta', 'in', 'no', 'no', '2019-11-20 17:10:53', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (74, 'Telugu', 'te', 'in', 'no', 'no', '2019-11-20 17:11:15', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (75, 'Turkish', 'tr', 'tr', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (77, 'Uzbek', 'uz', 'uz', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (79, 'Urdu', 'ur', 'pk', 'no', 'no', '2019-11-20 17:53:57', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (80, 'Finnish', 'fi', 'fi', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (81, 'French', 'fr', 'fr', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (82, 'Hindi', 'hi', 'in', 'no', 'no', '2019-11-20 17:06:34', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (84, 'Czech', 'cs', 'cz', 'no', 'no', '2019-11-20 17:32:36', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (85, 'Swedish', 'sv', 'sv', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (86, 'Scottish', 'gd', 'gd', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (87, 'Estonian', 'et', 'et', 'no', 'no', '2019-11-20 16:54:23', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (88, 'Esperanto', 'eo', 'br', 'no', 'no', '2019-11-21 10:19:18', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (89, 'Javanese', 'jv', 'id', 'no', 'no', '2019-11-20 17:48:29', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (90, 'Japanese', 'ja', 'jp', 'no', 'no', '2019-11-20 17:44:39', '0000-00-00');
INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES (91, 'Polish', 'pl', 'pl', 'no', 'no', '2020-06-15 08:55:27', NULL);


#
# TABLE STRUCTURE FOR: leave_types
#

DROP TABLE IF EXISTS `leave_types`;

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `leave_types` (`id`, `type`, `is_active`) VALUES (1, 'urgent work', 'yes');
INSERT INTO `leave_types` (`id`, `type`, `is_active`) VALUES (2, 'seek leave', 'yes');


#
# TABLE STRUCTURE FOR: lesson
#

DROP TABLE IF EXISTS `lesson`;

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) NOT NULL,
  `subject_group_class_sections_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `subject_group_subject_id` (`subject_group_subject_id`),
  KEY `subject_group_class_sections_id` (`subject_group_class_sections_id`),
  CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`subject_group_class_sections_id`) REFERENCES `subject_group_class_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`) VALUES (1, 15, 16, 13, 'Lesson 1', '2021-11-12 03:51:16');
INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`) VALUES (2, 15, 16, 13, 'Lesson 2', '2021-11-12 03:51:49');
INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`) VALUES (3, 15, 16, 13, 'Lesson 3', '2021-11-12 03:51:49');
INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`) VALUES (4, 15, 16, 13, 'Lesson 4', '2021-11-12 03:51:49');
INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`) VALUES (5, 15, 16, 13, 'Lesson 5', '2021-11-12 03:51:49');
INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`) VALUES (6, 15, 16, 13, 'Lesson 6', '2021-11-12 03:51:49');
INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`) VALUES (7, 15, 16, 13, 'Lesson 7', '2021-11-12 03:51:49');
INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`) VALUES (8, 15, 16, 13, 'Lesson 8', '2021-11-12 03:51:49');
INSERT INTO `lesson` (`id`, `session_id`, `subject_group_subject_id`, `subject_group_class_sections_id`, `name`, `created_at`) VALUES (9, 15, 16, 13, 'Lesson 9', '2021-11-12 03:51:49');


#
# TABLE STRUCTURE FOR: libarary_members
#

DROP TABLE IF EXISTS `libarary_members`;

CREATE TABLE `libarary_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `libarary_members` (`id`, `library_card_no`, `member_type`, `member_id`, `is_active`, `created_at`) VALUES (1, 'SCHOOL-1', 'student', 1, 'no', '2021-10-20 15:54:12');
INSERT INTO `libarary_members` (`id`, `library_card_no`, `member_type`, `member_id`, `is_active`, `created_at`) VALUES (2, 'lib001', 'teacher', 10, 'no', '2021-11-14 23:56:46');
INSERT INTO `libarary_members` (`id`, `library_card_no`, `member_type`, `member_id`, `is_active`, `created_at`) VALUES (3, 'lib002', 'student', 3, 'no', '2021-11-14 23:57:07');


#
# TABLE STRUCTURE FOR: logs
#

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `record_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `agent` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8;

INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (1, 'New Record inserted On sections id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 91.0', '2021-09-04 11:14:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (2, 'New Record inserted On sections id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 91.0', '2021-09-04 11:14:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (3, 'New Record inserted On sections id 3', 3, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 91.0', '2021-09-04 11:14:59', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (4, 'New Record inserted On subject groups id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 91.0', '2021-09-04 11:15:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (5, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 91.0', '2021-09-06 15:30:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (6, 'New Record inserted On subject groups id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 17:20:52', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (7, 'New Record inserted On subject groups id 3', 3, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 17:21:00', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (8, 'New Record inserted On subject groups id 4', 4, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 17:21:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (9, 'New Record inserted On school houses id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 18:00:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (10, 'New Record inserted On school houses id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 18:00:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (11, 'New Record inserted On school houses id 3', 3, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 18:16:02', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (12, 'New Record inserted On school houses id 4', 4, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 18:16:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (13, 'New Record inserted On school houses id 5', 5, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 18:20:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (14, 'New Record inserted On school houses id 6', 6, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 18:20:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (15, 'New Record inserted On school houses id 7', 7, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 18:22:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (16, 'New Record inserted On school houses id 8', 8, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-15 18:23:20', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (17, 'New Record inserted On sections id 4', 4, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 12:20:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (18, 'Record deleted On sections id 4', 4, 1, 'Delete', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 12:42:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (19, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 12:54:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (20, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 12:57:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (21, 'New Record inserted On students id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 12:57:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (22, 'New Record inserted On  student session id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 12:57:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (23, 'New Record inserted On users id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 12:57:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (24, 'New Record inserted On users id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 12:57:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (25, 'Record updated On students id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 12:57:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (26, 'Record updated On students id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 12:57:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (27, 'New Record inserted On students id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 13:06:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (28, 'New Record inserted On  student session id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 13:06:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (29, 'New Record inserted On users id 3', 3, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 13:06:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (30, 'New Record inserted On users id 4', 4, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 13:06:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (31, 'Record updated On students id 2', 2, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 13:06:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (32, 'New Record inserted On  online exam id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 13:19:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (33, 'New Record inserted On exam groups id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 13:20:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (34, 'New Record inserted On exam group exams name id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 13:20:32', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (35, 'New Record inserted On subjects id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 14:57:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (36, 'Record updated On subjects id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 14:58:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (37, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 16:33:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (38, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 92.0', '2021-09-24 16:36:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (39, 'New Record inserted On  categories id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-09 14:32:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (40, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-09 14:35:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (41, 'New Record inserted On admit cards id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-14 10:11:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (42, 'Record deleted On admit cards id 2', 2, 1, 'Delete', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-14 10:13:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (43, 'New Record inserted On  questions id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-14 10:22:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (44, 'New Record inserted On  onlineexam questions id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-14 10:22:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (45, 'New Record inserted On  questions id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-14 11:17:31', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (46, 'New Record inserted On  questions id 3', 3, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-14 11:38:43', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (47, 'Record deleted On questions id 30', 30, 1, 'Delete', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-14 16:03:59', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (48, 'Record deleted On questions id 29', 29, 1, 'Delete', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-14 16:04:02', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (49, 'Record deleted On questions id 28', 28, 1, 'Delete', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-14 16:04:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (50, 'Record deleted On questions id 31', 31, 1, 'Delete', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-14 16:19:37', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (51, 'New Record inserted On subject groups id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 15:21:00', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (52, 'New Record inserted On send notification id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 15:26:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (53, 'Record deleted On send notification id 1', 1, 1, 'Delete', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 15:26:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (54, 'New Record inserted On libarary members id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 15:54:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (55, 'New Record inserted On book issues id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 15:54:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (56, 'New Record inserted On item category id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 16:42:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (57, 'New Record inserted On item id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 16:43:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (58, 'New Record inserted On item supplier id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 16:48:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (59, 'New Record inserted On item store id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 16:50:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (60, 'New Record inserted On item stock id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 16:52:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (61, 'Record updated On  item stock id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 16:52:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (62, 'New Record inserted On item issue id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 16:53:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (63, 'New Record inserted On transport route id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 16:58:22', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (64, 'New Record inserted On vehicles id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 16:59:28', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (65, 'New Record inserted On vehicle routes id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 16:59:35', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (66, 'New Record inserted On hostel id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:01:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (67, 'New Record inserted On room types id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:02:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (68, 'New Record inserted On hostel rooms id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:03:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (69, 'New Record inserted On certificates id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:09:00', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (70, 'Record updated On  certificates id 2', 2, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:11:39', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (71, 'Record updated On  certificates id 2', 2, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:12:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (72, 'Record updated On  certificates id 2', 2, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:15:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (73, 'Record updated On  certificates id 2', 2, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:15:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (74, 'Record updated On  certificates id 2', 2, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:17:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (75, 'Record updated On  certificates id 2', 2, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:18:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (76, 'Record updated On  certificates id 2', 2, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:18:23', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (77, 'Record updated On  certificates id 2', 2, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:18:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (78, 'New Record inserted On id card id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:22:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (79, 'Record updated On  id card id 2', 2, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:22:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (80, 'New Record inserted On event id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:42:20', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (81, 'New Record inserted On event id 2', 2, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:44:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (82, 'New Record inserted On event id 3', 3, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:44:45', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (83, 'Record updated On Front CMS Setting id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:47:42', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (84, 'New Record inserted On Menu id 5', 5, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:49:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (85, 'Record updated On Menu id 5', 5, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:50:01', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (86, 'Record updated On Front CMS Setting id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:53:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (87, 'Record updated On sessions id 16', 16, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:55:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (88, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:55:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (89, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 17:56:20', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (90, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 18:04:20', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (91, 'New Record inserted On  student session id 3', 3, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 18:10:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (92, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 18:12:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (93, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 18:12:37', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (94, 'New Record inserted On custom fields id 1', 1, 1, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 18:17:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (95, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 18:20:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (96, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 18:20:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (97, 'Record updated On settings id 1', 1, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-20 18:20:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (98, 'Record deleted On books id 5', 5, 1, 'Delete', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-21 11:34:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (99, 'Record deleted On books id 6', 6, 1, 'Delete', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-21 11:34:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (100, 'Record deleted On books id 8', 8, 1, 'Delete', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-21 11:34:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (101, 'Record updated On notification setting id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (102, 'Record updated On notification setting id 2', 2, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (103, 'Record updated On notification setting id 3', 3, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (104, 'Record updated On notification setting id 4', 4, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (105, 'Record updated On notification setting id 5', 5, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (106, 'Record updated On notification setting id 6', 6, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (107, 'Record updated On notification setting id 7', 7, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (108, 'Record updated On notification setting id 8', 8, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (109, 'Record updated On notification setting id 9', 9, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (110, 'Record updated On notification setting id 10', 10, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (111, 'Record updated On notification setting id 11', 11, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:17:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (112, 'Record updated On permission group id 600', 600, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-21 17:43:59', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (113, 'Record updated On permission group id 600', 600, 1, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 93.0', '2021-10-21 17:44:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (114, 'New Record inserted On gmeet id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:58:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (115, 'New Record inserted On gmeet id 2', 2, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:58:22', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (116, 'New Record inserted On gmeet id 3', 3, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:58:45', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (117, 'New Record inserted On gmeet id 4', 4, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:58:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (118, 'New Record inserted On gmeet id 5', 5, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:58:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (119, 'Record deleted On gmeet id 5', 5, 1, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:58:54', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (120, 'Record deleted On gmeet id 4', 4, 1, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:58:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (121, 'Record deleted On gmeet id 3', 3, 1, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:58:59', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (122, 'Record deleted On gmeet id 2', 2, 1, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 17:59:02', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (123, 'New Record inserted On gmeet settings id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:05:39', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (124, 'Record updated On gmeet settings id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:05:43', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (125, 'Record updated On gmeet id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:07:03', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (126, 'Record updated On gmeet id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:07:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (127, 'Record updated On gmeet id 1', 1, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:07:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (128, 'New Record inserted On gmeet id 6', 6, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:21:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (129, 'New Record inserted On gmeet id 7', 7, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:21:20', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (130, 'Record deleted On gmeet id 7', 7, 1, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:21:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (131, 'Record deleted On gmeet id 6', 6, 1, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:21:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (132, 'New Record inserted On gmeet id 8', 8, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:22:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (133, 'Record deleted On gmeet id 1', 1, 1, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:22:29', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (134, 'New Record inserted On gmeet id 9', 9, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-21 18:23:39', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (135, 'New Record inserted On department id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-22 10:34:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (136, 'New Record inserted On  staff designation id 1', 1, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-22 10:35:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (137, 'Record updated On staff id 9', 9, 1, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-22 10:41:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (138, 'New Record inserted On gmeet id 10', 10, 1, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-22 10:42:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (139, 'Record updated On  event id 2', 2, 1, 'Update', '124.253.7.25', 'Windows 10', 'Firefox 93.0', '2021-10-22 00:22:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (140, 'New Record inserted On messages id 1', 1, 1, 'Insert', '124.253.7.25', 'Windows 10', 'Firefox 93.0', '2021-10-22 00:33:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (141, 'Record updated On  email config id 1', 1, 1, 'Update', '27.255.221.120', 'Windows 10', 'Firefox 93.0', '2021-10-22 00:38:31', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (142, 'New Record inserted On messages id 2', 2, 1, 'Insert', '27.255.221.120', 'Windows 10', 'Firefox 93.0', '2021-10-22 00:39:01', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (143, 'New Record inserted On messages id 3', 3, 1, 'Insert', '27.255.221.120', 'Windows 10', 'Firefox 93.0', '2021-10-22 00:42:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (144, 'Record updated On  email config id 1', 1, 1, 'Update', '27.255.221.120', 'Windows 10', 'Firefox 93.0', '2021-10-22 00:55:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (145, 'Record updated On  email config id 1', 1, 1, 'Update', '27.255.221.120', 'Windows 10', 'Firefox 93.0', '2021-10-22 00:56:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (146, 'New Record inserted On messages id 4', 4, 1, 'Insert', '27.255.221.120', 'Windows 10', 'Firefox 93.0', '2021-10-22 00:57:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (147, 'Record updated On settings id 1', 1, 1, 'Update', '27.255.220.148', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:16:01', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (148, 'Record updated On students id 1', 1, 1, 'Update', '27.255.220.148', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:17:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (149, 'Record updated On  student session id 1', 1, 1, 'Update', '27.255.220.148', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:17:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (150, 'Record updated On  email config id 1', 1, 1, 'Update', '27.255.220.148', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:18:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (151, 'New Record inserted On messages id 5', 5, 1, 'Insert', '27.255.220.148', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:20:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (152, 'Record updated On  email config id 1', 1, 1, 'Update', '27.255.220.148', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:23:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (153, 'New Record inserted On messages id 6', 6, 1, 'Insert', '27.255.220.148', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:24:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (154, 'New Record inserted On messages id 7', 7, 1, 'Insert', '27.255.220.148', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:24:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (155, 'New Record inserted On messages id 8', 8, 1, 'Insert', '27.255.220.148', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:28:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (156, 'New Record inserted On messages id 9', 9, 1, 'Insert', '27.255.220.148', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:28:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (157, 'New Record inserted On messages id 10', 10, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:39:45', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (158, 'New Record inserted On messages id 11', 11, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:39:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (159, 'New Record inserted On messages id 12', 12, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:40:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (160, 'New Record inserted On messages id 13', 13, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:40:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (161, 'New Record inserted On messages id 14', 14, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:41:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (162, 'New Record inserted On messages id 15', 15, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:41:23', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (163, 'New Record inserted On messages id 16', 16, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:41:34', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (164, 'Record updated On  email config id 1', 1, 1, 'Update', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:41:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (165, 'New Record inserted On messages id 17', 17, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:42:01', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (166, 'Record updated On  email config id 1', 1, 1, 'Update', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:43:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (167, 'New Record inserted On messages id 18', 18, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:43:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (168, 'New Record inserted On messages id 19', 19, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:44:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (169, 'New Record inserted On messages id 20', 20, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:44:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (170, 'New Record inserted On messages id 21', 21, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:44:37', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (171, 'New Record inserted On messages id 22', 22, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:45:02', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (172, 'New Record inserted On messages id 23', 23, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:45:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (173, 'New Record inserted On messages id 24', 24, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:47:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (174, 'Record updated On  email config id 1', 1, 1, 'Update', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:49:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (175, 'New Record inserted On messages id 25', 25, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:49:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (176, 'New Record inserted On messages id 26', 26, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:49:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (177, 'New Record inserted On messages id 27', 27, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:50:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (178, 'New Record inserted On messages id 28', 28, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:50:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (179, 'New Record inserted On messages id 29', 29, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:50:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (180, 'Record updated On  email config id 1', 1, 1, 'Update', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:51:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (181, 'New Record inserted On messages id 30', 30, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:51:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (182, 'New Record inserted On messages id 31', 31, 1, 'Insert', '124.253.6.29', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:52:35', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (183, 'New Record inserted On messages id 32', 32, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 04:59:23', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (184, 'New Record inserted On messages id 33', 33, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:04:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (185, 'New Record inserted On messages id 34', 34, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:04:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (186, 'New Record inserted On messages id 35', 35, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:06:45', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (187, 'New Record inserted On messages id 36', 36, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:12:02', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (188, 'New Record inserted On messages id 37', 37, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:12:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (189, 'New Record inserted On messages id 38', 38, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:30:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (190, 'Record updated On  email config id 1', 1, 1, 'Update', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:41:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (191, 'New Record inserted On messages id 39', 39, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:41:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (192, 'New Record inserted On messages id 40', 40, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:43:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (193, 'Record updated On settings id 1', 1, 1, 'Update', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:43:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (194, 'Record updated On settings id 1', 1, 1, 'Update', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:44:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (195, 'New Record inserted On messages id 41', 41, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:44:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (196, 'New Record inserted On gmeet id 11', 11, 1, 'Insert', '124.253.244.201', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-28 05:52:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (197, 'Record updated On staff id 10', 10, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:21:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (198, 'Record updated On staff id 10', 10, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:21:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (199, 'Record deleted On custom fields id 1', 1, 1, 'Delete', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:22:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (200, 'Record updated On staff id 10', 10, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:24:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (201, 'Record updated On staff id 10', 10, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:24:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (202, 'Record updated On staff id 10', 10, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:27:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (203, 'Record updated On staff id 10', 10, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:27:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (204, 'Record updated On staff id 10', 10, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:28:15', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (205, 'Record updated On staff id 10', 10, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:28:15', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (206, 'New Record inserted On staff payslip id 1', 1, 1, 'Insert', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:58:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (207, 'Record updated On staff payslip id 1', 1, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:59:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (208, 'New Record inserted On staff attendance id 1', 1, 1, 'Insert', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:59:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (209, 'New Record inserted On staff attendance id 2', 2, 1, 'Insert', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 05:59:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (210, 'New Record inserted On leave types id 1', 1, 1, 'Insert', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 06:02:15', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (211, 'New Record inserted On leave types id 2', 2, 1, 'Insert', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 06:02:22', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (212, 'Record updated On staff id 10', 10, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 06:02:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (213, 'Record updated On staff id 10', 10, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 06:02:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (214, 'New Record inserted On staff leave request id 1', 1, 10, 'Insert', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 06:03:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (215, 'Record updated On staff leave request id 1', 1, 1, 'Update', '124.253.246.244', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-11 06:03:35', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (216, 'New Record inserted On sections id 5', 5, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:51:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (217, 'Record updated On sections id 1', 1, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:51:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (218, 'Record updated On sections id 2', 2, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:51:52', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (219, 'Record updated On sections id 3', 3, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:51:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (220, 'Record deleted On classes id 1', 1, 1, 'Delete', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:52:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (221, 'Record deleted On classes id 2', 2, 1, 'Delete', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:52:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (222, 'Record deleted On classes id 3', 3, 1, 'Delete', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:53:00', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (223, 'Record deleted On classes id 4', 4, 1, 'Delete', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:53:02', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (224, 'New Record inserted On subject groups id 5', 5, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:55:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (225, 'New Record inserted On subject groups id 6', 6, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:56:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (226, 'New Record inserted On subject groups id 7', 7, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:56:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (227, 'New Record inserted On subject groups id 8', 8, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:57:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (228, 'New Record inserted On subject groups id 9', 9, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:57:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (229, 'New Record inserted On subject groups id 10', 10, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:58:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (230, 'New Record inserted On subject groups id 11', 11, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:58:35', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (231, 'New Record inserted On subject groups id 12', 12, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:58:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (232, 'New Record inserted On subject groups id 13', 13, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:58:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (233, 'Record updated On classes id 13', 13, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:59:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (234, 'New Record inserted On subject groups id 14', 14, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:59:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (235, 'New Record inserted On subject groups id 15', 15, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:59:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (236, 'New Record inserted On subject groups id 16', 16, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:59:33', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (237, 'New Record inserted On subject groups id 17', 17, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 02:59:44', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (238, 'Record updated On subjects id 1', 1, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:01:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (239, 'New Record inserted On subjects id 2', 2, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:02:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (240, 'New Record inserted On subjects id 3', 3, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:02:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (241, 'New Record inserted On subjects id 4', 4, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:02:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (242, 'New Record inserted On subjects id 5', 5, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:03:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (243, 'New Record inserted On subjects id 6', 6, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:04:13', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (244, 'New Record inserted On subject groups id 2', 2, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:06:13', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (245, 'New Record inserted On subject groups id 3', 3, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:06:28', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (246, 'New Record inserted On subject groups id 4', 4, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:06:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (247, 'New Record inserted On subject groups id 5', 5, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:07:01', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (248, 'New Record inserted On subject groups id 6', 6, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:07:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (249, 'New Record inserted On  subject timetable id 1', 1, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:09:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (250, 'New Record inserted On  subject timetable id 2', 2, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:10:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (251, 'New Record inserted On  online exam id 2', 2, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:13:42', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (252, 'New Record inserted On  onlineexam questions id 2', 2, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:14:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (253, 'New Record inserted On  onlineexam questions id 3', 3, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:14:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (254, 'New Record inserted On  onlineexam questions id 4', 4, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:14:52', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (255, 'New Record inserted On  onlineexam questions id 5', 5, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:14:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (256, 'New Record inserted On  onlineexam questions id 6', 6, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:14:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (257, 'Record updated On  online exam id 1', 1, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:15:52', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (258, 'New Record inserted On students id 3', 3, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:22:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (259, 'New Record inserted On  student session id 4', 4, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:22:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (260, 'New Record inserted On users id 5', 5, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:22:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (261, 'New Record inserted On users id 6', 6, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:22:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (262, 'Record updated On students id 3', 3, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:22:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (263, 'New Record inserted On  fee type id 1', 1, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:28:34', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (264, 'Record updated On  fee type id 1', 1, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:28:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (265, 'New Record inserted On  fee groups id 1', 1, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:28:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (266, 'New Record inserted On  fee groups feetype id 1', 1, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:29:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (267, 'Record updated On students id 3', 3, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:33:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (268, 'Record updated On  student session id 4', 4, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:33:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (269, 'New Record inserted On exam groups id 2', 2, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:34:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (270, 'New Record inserted On exam group exams name id 2', 2, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:34:43', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (271, 'Record updated On  online exam id 2', 2, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:37:35', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (272, 'New Record inserted On  onlineexam questions id 7', 7, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:37:47', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (273, 'New Record inserted On  onlineexam questions id 8', 8, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:37:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (274, 'New Record inserted On  onlineexam questions id 9', 9, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:37:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (275, 'New Record inserted On  onlineexam questions id 10', 10, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:37:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (276, 'New Record inserted On  onlineexam questions id 11', 11, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:37:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (277, 'New Record inserted On  onlineexam questions id 12', 12, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:37:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (278, 'Record updated On  online exam id 2', 2, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:38:13', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (279, 'Record updated On  online exam id 2', 2, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:40:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (280, 'New Record inserted On student apply leave id 1', 1, NULL, 'Insert', '49.156.67.42', 'Windows 10', 'Firefox 94.0', '2021-11-12 03:43:59', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (281, 'New Record inserted On lesson id 1', 1, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:51:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (282, 'Record updated On lesson id 1', 1, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:51:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (283, 'New Record inserted On lesson id 2', 2, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:51:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (284, 'New Record inserted On lesson id 3', 3, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:51:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (285, 'New Record inserted On lesson id 4', 4, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:51:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (286, 'New Record inserted On lesson id 5', 5, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:51:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (287, 'New Record inserted On lesson id 6', 6, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:51:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (288, 'New Record inserted On lesson id 7', 7, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:51:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (289, 'New Record inserted On lesson id 8', 8, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:51:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (290, 'New Record inserted On lesson id 9', 9, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:51:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (291, 'New Record inserted On topic id 1', 1, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:54:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (292, 'New Record inserted On topic id 2', 2, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:54:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (293, 'Record updated On  topic id 1', 1, 10, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:57:35', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (294, 'Record updated On  topic id 2', 2, 10, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:57:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (295, 'Record updated On  topic id 1', 1, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:58:02', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (296, 'Record updated On  topic id 1', 1, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:58:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (297, 'Record updated On  topic id 1', 1, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:58:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (298, 'Record updated On  topic id 1', 1, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 03:58:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (299, 'Record updated On settings id 1', 1, 1, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:05:31', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (300, 'Record updated On  student apply leave id 1', 1, NULL, 'Update', '49.156.67.42', 'Windows 10', 'Firefox 94.0', '2021-11-12 04:06:34', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (301, 'Record updated On  student apply leave id 1', 1, 10, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:07:01', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (302, 'Record updated On  student apply leave id 1', 1, 10, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:09:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (303, 'Record updated On  student apply leave id 1', 1, NULL, 'Update', '49.156.67.42', 'Windows 10', 'Firefox 94.0', '2021-11-12 04:10:42', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (304, 'Record updated On  student apply leave id 1', 1, NULL, 'Update', '49.156.67.42', 'Windows 10', 'Firefox 94.0', '2021-11-12 04:10:42', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (305, 'Record updated On  student apply leave id 1', 1, 10, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:11:23', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (306, 'Record updated On  student apply leave id 1', 1, 10, 'Update', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:11:23', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (307, 'New Record inserted On student apply leave id 2', 2, NULL, 'Insert', '49.156.67.42', 'Windows 10', 'Firefox 94.0', '2021-11-12 04:35:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (308, 'New Record inserted On topic id 3', 3, 1, 'Insert', '49.156.67.42', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:39:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (309, 'New Record inserted On  complaint_type id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:55:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (310, 'New Record inserted On  complaint_type id 2', 2, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:56:01', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (311, 'New Record inserted On source id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:56:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (312, 'New Record inserted On source id 2', 2, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:56:15', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (313, 'New Record inserted On reference id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:56:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (314, 'New Record inserted On reference id 2', 2, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:56:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (315, 'New Record inserted On  enquiry id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:58:33', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (316, 'New Record inserted On visitors purpose id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:59:54', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (317, 'New Record inserted On visitors purpose id 2', 2, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 04:59:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (318, 'New Record inserted On  visitors  id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:01:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (319, 'New Record inserted On  Phone Call Log id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:02:43', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (320, 'New Record inserted On  Admission Enquiry  Postal Dispatch id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:05:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (321, 'New Record inserted On  Complain id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:06:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (322, 'New Record inserted On  categories id 2', 2, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:17:35', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (323, 'New Record inserted On  categories id 3', 3, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:17:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (324, 'New Record inserted On  categories id 4', 4, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:17:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (325, 'Record updated On  categories id 2', 2, 1, 'Update', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:17:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (326, 'New Record inserted On  categories id 5', 5, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:18:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (327, 'Record deleted On categories id 2', 2, 1, 'Delete', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:18:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (328, 'Record deleted On categories id 3', 3, 1, 'Delete', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:18:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (329, 'Record deleted On categories id 5', 5, 1, 'Delete', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:18:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (330, 'Record deleted On categories id 4', 4, 1, 'Delete', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:18:20', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (331, 'New Record inserted On  categories id 6', 6, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:19:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (332, 'Record updated On  categories id 6', 6, 1, 'Update', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:19:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (333, 'New Record inserted On  categories id 7', 7, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:19:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (334, 'New Record inserted On disable reason id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:30:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (335, 'New Record inserted On disable reason id 2', 2, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:30:15', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (336, 'New Record inserted On disable reason id 3', 3, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:30:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (337, 'New Record inserted On  expense head id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:33:44', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (338, 'New Record inserted On  expenses   id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:34:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (339, 'Record updated On  expenses   id 1', 1, 1, 'Update', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:34:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (340, 'Record updated On  expenses   id 1', 1, 1, 'Update', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:35:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (341, 'Record updated On  expenses   id 1', 1, 1, 'Update', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:35:32', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (342, 'Record updated On  expenses   id 1', 1, 1, 'Update', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:35:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (343, 'New Record inserted On  expenses   id 2', 2, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:36:13', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (344, 'New Record inserted On  student attendences id 1', 1, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:38:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (345, 'New Record inserted On  student attendences id 2', 2, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:39:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (346, 'New Record inserted On  student attendences id 3', 3, 1, 'Insert', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:39:47', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (347, 'Record updated On  admit cards id 1', 1, 1, 'Update', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:41:47', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (348, 'Record deleted On exam groups id 2', 2, 1, 'Delete', '27.255.222.33', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-12 05:43:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (349, 'New Record inserted On  student attendences id 4', 4, 1, 'Insert', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:18:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (350, 'New Record inserted On  student attendences id 5', 5, 1, 'Insert', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:19:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (351, 'Record updated On  exam groups id 1', 1, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:19:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (352, 'New Record inserted On grades id 1', 1, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:20:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (353, 'Record deleted On exam groups exams name id 1', 1, 1, 'Delete', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:21:23', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (354, 'New Record inserted On grades id 2', 2, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:22:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (355, 'Record updated On grades id 2', 2, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:22:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (356, 'Record updated On grades id 2', 2, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:22:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (357, 'Record updated On grades id 2', 2, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:22:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (358, 'New Record inserted On grades id 3', 3, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:23:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (359, 'New Record inserted On grades id 4', 4, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:23:43', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (360, 'New Record inserted On exam group exams name id 3', 3, 1, 'Insert', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:29:00', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (361, 'Record updated On  exam group exams name id 3', 3, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 21:35:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (362, 'Record updated On students id 3', 3, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:24:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (363, 'Record updated On  student session id 5', 5, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:24:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (364, 'New Record inserted On homework id 1', 1, 10, 'Insert', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:25:34', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (365, 'Record updated On homework id 1', 1, 10, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:25:34', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (366, 'New Record inserted On contents id 1', 1, 1, 'Insert', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:28:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (367, 'Record updated On  contents id 1', 1, 1, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:28:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (368, 'Record updated On homework id 1', 1, 10, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:30:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (369, 'New Record inserted On contents id 2', 2, 10, 'Insert', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:54:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (370, 'Record updated On  contents id 2', 2, 10, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:54:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (371, 'New Record inserted On contents id 3', 3, 10, 'Insert', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:56:37', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (372, 'Record updated On  contents id 3', 3, 10, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:56:37', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (373, 'New Record inserted On homework id 2', 2, 10, 'Insert', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:59:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (374, 'Record updated On homework id 2', 2, 10, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:59:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (375, 'Record updated On homework id 2', 2, 10, 'Update', '124.253.0.93', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:59:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (376, 'Record updated On homework id 1', 1, 10, 'Update', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 22:59:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (377, 'Record updated On homework id 2', 2, 10, 'Update', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:00:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (378, 'Record deleted On contents id 1', 1, 1, 'Delete', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:08:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (379, 'Record deleted On contents id 2', 2, 1, 'Delete', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:08:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (380, 'New Record inserted On contents id 4', 4, 1, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:08:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (381, 'Record updated On  contents id 4', 4, 1, 'Update', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:08:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (382, 'New Record inserted On contents id 5', 5, 1, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:15:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (383, 'Record updated On  contents id 5', 5, 1, 'Update', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:15:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (384, 'New Record inserted On send notification id 2', 2, 1, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:18:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (385, 'New Record inserted On messages id 42', 42, 1, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:20:44', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (386, 'New Record inserted On messages id 43', 43, 1, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:21:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (387, 'New Record inserted On class teacher id 1', 1, 1, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:36:32', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (388, 'Record updated On staff rating id 1', 1, 1, 'Update', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:38:47', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (389, 'Record updated On staff rating id 2', 2, 1, 'Update', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:38:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (390, 'Record deleted On staff rating id 2', 2, 1, 'Delete', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:41:03', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (391, 'New Record inserted On libarary members id 2', 2, 1, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:56:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (392, 'New Record inserted On libarary members id 3', 3, 1, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:57:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (393, 'Record updated On books id 1', 1, 1, 'Update', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-14 23:59:02', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (394, 'Record updated On  item issue id 1', 1, 1, 'Update', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-15 00:00:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (395, 'New Record inserted On  staff designation id 2', 2, 1, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-15 00:01:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (396, 'Record updated On staff id 11', 11, 1, 'Update', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-15 00:02:42', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (397, 'New Record inserted On book issues id 2', 2, 11, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-15 00:04:31', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (398, 'Record updated On books id 2', 2, 11, 'Update', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-15 00:05:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (399, 'New Record inserted On book issues id 3', 3, 11, 'Insert', '124.253.108.55', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-15 00:07:19', NULL);


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `message` text,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT '0',
  `group_list` text,
  `user_list` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (1, 'testing mail', '<p>testing contetn</p>\r\n', '1', '0', '0', '1', 0, NULL, '[{\"category\":\"staff\",\"user_id\":\"9\",\"email\":\"gursharan.dfr@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"7894566132\"},{\"category\":\"staff\",\"user_id\":\"1\",\"email\":\"gursharan.smartdesignhut@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"\"}]', '2021-10-22 00:33:08', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (2, 'smtp test', '<p>.kl.klll</p>\r\n', '1', '0', '0', '1', 0, NULL, '[{\"category\":\"staff\",\"user_id\":\"1\",\"email\":\"gursharan.smartdesignhut@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"\"},{\"category\":\"staff\",\"user_id\":\"9\",\"email\":\"gursharan.dfr@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"7894566132\"}]', '2021-10-22 00:39:01', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (3, 'test smtp again with console log', '<p>cdasdasdasdasd</p>\r\n', '1', '0', '0', '1', 0, NULL, '[{\"category\":\"staff\",\"user_id\":\"1\",\"email\":\"gursharan.smartdesignhut@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"\"},{\"category\":\"staff\",\"user_id\":\"9\",\"email\":\"gursharan.dfr@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"7894566132\"}]', '2021-10-22 00:42:46', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (4, 'TESTING WITH NEW SMTP SETTINGS', '<p>DSFASFDFSDFDASF</p>\r\n', '1', '0', '0', '1', 0, NULL, '[{\"category\":\"staff\",\"user_id\":\"1\",\"email\":\"gursharan.smartdesignhut@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"\"},{\"category\":\"staff\",\"user_id\":\"9\",\"email\":\"gursharan.dfr@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"7894566132\"}]', '2021-10-22 00:57:10', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (5, 'test from server', '<p>dasdadasdas</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:20:40', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (6, 'dasdsdsdas', '<p>dasdasdasdasdas</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:24:08', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (7, 'check ', '<p>tehs</p>\r\n', '1', '0', '0', '1', 0, NULL, '[{\"category\":\"staff\",\"user_id\":\"1\",\"email\":\"gursharan.smartdesignhut@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"\"}]', '2021-10-28 04:24:49', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (8, 'fasdfdasf', '<p>fasdfasf</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:28:26', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (9, 'fasdfdasf', '<p>fasdfasf</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:28:27', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (10, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:39:45', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (11, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:39:46', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (12, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:40:14', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (13, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:40:38', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (14, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:41:06', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (15, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:41:23', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (16, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:41:34', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (17, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:42:01', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (18, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:43:19', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (19, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:44:10', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (20, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:44:25', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (21, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:44:37', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (22, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:45:02', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (23, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:45:41', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (24, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:47:49', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (25, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:49:36', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (26, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:49:41', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (27, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:50:09', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (28, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:50:38', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (29, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:50:48', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (30, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:51:25', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (31, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:52:35', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (32, '123', '<p>qwerty</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 04:59:23', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (33, 'hhuuihlihui', '<p>qwertyjhkjhkj</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 05:04:12', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (34, 'hhuuihlihui', '<p>qwertyjhkjhkj</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 05:04:14', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (35, 'hhuuihlihui', '<p>qwertyjhkjhkj</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 05:06:45', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (36, 'dsaddasdsd', '<p>qwertyjhkjhkj</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 05:12:02', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (37, 'dsaddasdsd', '<p>qwertyjhkjhkj</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 05:12:04', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (38, 'dsaddasdsd', '<p>qwertyjhkjhkj</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 05:30:05', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (39, 'dsaddasdsd', '<p>qwertyjhkjhkj</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 05:41:10', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (40, 'test massge', '<p>dasdasdasdasdasda</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-10-28 05:43:10', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (41, 'test 2 ', '<p>xzcvxzcvxzcvxz</p>\r\n', '1', '0', '0', '1', 0, NULL, '[{\"category\":\"staff\",\"user_id\":\"1\",\"email\":\"gursharan.smartdesignhut@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"\"},{\"category\":\"staff\",\"user_id\":\"9\",\"email\":\"gursharan.dfr@gmail.com\",\"guardianEmail\":\"\",\"mobileno\":\"7894566132\"}]', '2021-10-28 05:44:57', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (42, 'Send Email', '<p>Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message *</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-11-14 23:20:44', NULL);
INSERT INTO `messages` (`id`, `title`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES (43, 'Send Email', '<p>Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message * Message *</p>\r\n', '1', '0', '1', '0', 0, '[]', NULL, '2021-11-14 23:21:27', NULL);


#
# TABLE STRUCTURE FOR: migrations
#

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: multi_class_students
#

DROP TABLE IF EXISTS `multi_class_students`;

CREATE TABLE `multi_class_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `student_session_id` (`student_session_id`),
  CONSTRAINT `multi_class_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `multi_class_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: notification_roles
#

DROP TABLE IF EXISTS `notification_roles`;

CREATE TABLE `notification_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_notification_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `send_notification_id` (`send_notification_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `notification_roles` (`id`, `send_notification_id`, `role_id`, `is_active`, `created_at`) VALUES (3, 2, 1, 0, '2021-11-14 23:18:10');
INSERT INTO `notification_roles` (`id`, `send_notification_id`, `role_id`, `is_active`, `created_at`) VALUES (4, 2, 2, 0, '2021-11-14 23:18:10');
INSERT INTO `notification_roles` (`id`, `send_notification_id`, `role_id`, `is_active`, `created_at`) VALUES (5, 2, 3, 0, '2021-11-14 23:18:10');
INSERT INTO `notification_roles` (`id`, `send_notification_id`, `role_id`, `is_active`, `created_at`) VALUES (6, 2, 4, 0, '2021-11-14 23:18:10');
INSERT INTO `notification_roles` (`id`, `send_notification_id`, `role_id`, `is_active`, `created_at`) VALUES (7, 2, 6, 0, '2021-11-14 23:18:10');
INSERT INTO `notification_roles` (`id`, `send_notification_id`, `role_id`, `is_active`, `created_at`) VALUES (8, 2, 7, 0, '2021-11-14 23:18:10');


#
# TABLE STRUCTURE FOR: notification_setting
#

DROP TABLE IF EXISTS `notification_setting`;

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `is_notification` int(11) NOT NULL DEFAULT '0',
  `display_notification` int(11) NOT NULL DEFAULT '0',
  `display_sms` text,
  `subject` text,
  `template_id` text,
  `template` longtext NOT NULL,
  `variables` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (1, 'student_admission', '1', '0', 0, 0, '', '', '', 'Dear {{firstname}} {{lastname}} your admission is confirm in Class: {{class}} Section:  {{section}} for Session: {{current_session_name}} for more detail contact System Admin\r\n{{firstname}} {{lastname}} {{class}} {{section}} {{admission_no}} {{roll_no}} {{admission_date}} {{mobileno}} {{email}} {{dob}} {{guardian_name}} {{guardian_relation}} {{guardian_phone}} {{father_name}} {{father_phone}} {{blood_group}} {{mother_name}} {{gender}} {{guardian_email}}', '{{firstname}}  {{lastname}}  {{class}}  {{section}}  {{admission_no}}  {{roll_no}}  {{admission_date}}   {{mobileno}}  {{email}}  {{dob}}  {{guardian_name}}  {{guardian_relation}}  {{guardian_phone}}  {{father_name}}  {{father_phone}}  {{blood_group}}  {{mother_name}}  {{gender}}  {{guardian_email}} {{current_session_name}}', '2020-02-01 14:28:40');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (2, 'exam_result', '1', '0', 0, 1, '', '', '', 'Dear {{student_name}} - {{exam_roll_no}}, your {{exam}} result has been published.', '{{student_name}} {{exam_roll_no}} {{exam}}', '2020-06-16 00:17:47');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (3, 'fee_submission', '1', '0', 0, 1, '', '', '', 'Dear parents, we have received  Fees Amount {{fee_amount}} for  {{firstname}} {{lastname}}  by Your School Name', ' {{firstname}} {{lastname}} {{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '2020-02-08 22:53:20');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (4, 'absent_attendence', '1', '0', 0, 1, '', '', '', 'Absent Notice :{{firstname}} {{lastname}}  was absent on date {{date}} in period {{subject_name}} {{subject_code}} {{subject_type}} from Your School Name', '{{firstname}} {{lastname}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{current_session_name}}             {{time_from}} {{time_to}} {{subject_name}} {{subject_code}} {{subject_type}} ', '2020-02-08 23:03:13');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (5, 'login_credential', '1', '0', 0, 0, '', '', '', 'Hello {{display_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}}', '{{url}} {{display_name}} {{username}} {{password}}', '2020-02-08 21:25:33');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (6, 'homework', '1', '0', 0, 1, '', '', '', 'New Homework has been created for {{student_name}} at {{homework_date}} for the class {{class}} {{section}} {{subject}}. kindly submit your homework before {{submit_date}} .Thank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}}', '2020-02-08 21:25:33');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (7, 'fees_reminder', '1', '0', 0, 1, '', '', '', 'Dear parents, please pay fee amount Rs.{{due_amount}} of {{fee_type}} before {{due_date}} for {{firstname}} {{lastname}} from smart school (ignore if you already paid)', '{{fee_type}}{{fee_code}}{{due_date}}{{firstname}} {{lastname}}{{school_name}}{{fee_amount}}{{due_amount}}{{deposit_amount}}', '2020-02-08 21:25:33');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (8, 'gmeet_online_classes', '1', '0', 0, 1, '1', 'Gmeet Live Classes', '', 'Dear student, your live class {{title}} has been scheduled on {{date}} for the duration of {{duration}} minute, please do not share the link to any body.', '{{title}} {{date}} {{duration}}', '2021-05-20 09:47:22');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (9, 'gmeet_online_meeting', '1', '0', 0, 0, '1', 'Gmeet Live Meeting', '', 'Dear staff, your live meeting {{title}} has been scheduled on {{date}} for the duration of {{duration}} minute, please do not share the link to any body.', '{{title}} {{date}} {{duration}} {{employee_id}} {{department}} {{designation}} {{name}} {{contact_no}} {{email}}', '2021-05-20 09:47:09');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (10, 'gmeet_online_classes_start', '1', '0', 0, 1, '1', 'Gmeet  Live Classes Start', '', 'Dear student, your live class {{title}} has been started  for the duration of {{duration}} minute.', '{{title}} {{date}} {{duration}}', '2021-05-20 09:47:41');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (11, 'gmeet_online_meeting_start', '1', '0', 0, 0, '1', 'Gmeet Live Meeting Start', '', 'Dear {{name}},  your live meeting {{title}} has been started  for the duration of {{duration}} minute.', '{{title}} {{date}} {{duration}} {{employee_id}} {{department}} {{designation}} {{name}} {{contact_no}} {{email}}', '2021-05-20 09:47:31');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (12, 'online_classes', '1', '0', 0, 1, NULL, NULL, NULL, 'Dear student, your live class \"{{title}}\" has been scheduled on {{date}} for the duration of {{duration}} minute, please do not share the link to any body.', '{{title}} {{date}} {{duration}}', '2020-06-25 15:09:17');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES (13, 'online_meeting', '1', '0', 0, 0, NULL, NULL, NULL, 'Dear staff, your live meeting \"{{title}}\" has been scheduled on {{date}} for the duration of {{duration}} minute, please do not share the link to any body.', '{{title}} {{date}} {{duration}} {{employee_id}} {{department}} {{designation}} {{name}} {{contact_no}} {{email}}', '2020-06-25 15:07:41');


#
# TABLE STRUCTURE FOR: online_admissions
#

DROP TABLE IF EXISTS `online_admissions`;

CREATE TABLE `online_admissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) NOT NULL DEFAULT 'No',
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text,
  `permanent_address` text,
  `category_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) DEFAULT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text,
  `guardian_email` varchar(100) NOT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_enroll` int(255) DEFAULT '0',
  `previous_school` text,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `app_key` text,
  `document` text,
  `disable_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  CONSTRAINT `online_admissions_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: onlineexam
#

DROP TABLE IF EXISTS `onlineexam`;

CREATE TABLE `onlineexam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam` text,
  `attempt` int(11) NOT NULL,
  `exam_from` date DEFAULT NULL,
  `exam_to` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `duration` time NOT NULL,
  `passing_percentage` float NOT NULL DEFAULT '0',
  `description` text,
  `session_id` int(11) DEFAULT NULL,
  `publish_result` int(11) NOT NULL DEFAULT '0',
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `onlineexam_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `onlineexam` (`id`, `exam`, `attempt`, `exam_from`, `exam_to`, `time_from`, `time_to`, `duration`, `passing_percentage`, `description`, `session_id`, `publish_result`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'English', 1, '2021-09-01', '2021-10-31', NULL, NULL, '03:00:00', '33', 'Unit test', 15, 0, '1', '2021-09-24 13:19:19', NULL);
INSERT INTO `onlineexam` (`id`, `exam`, `attempt`, `exam_from`, `exam_to`, `time_from`, `time_to`, `duration`, `passing_percentage`, `description`, `session_id`, `publish_result`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'test exam', 1, '2021-11-11', '2021-11-25', NULL, NULL, '01:30:00', '33', 'test online exam', 15, 1, '1', '2021-11-12 03:40:53', NULL);


#
# TABLE STRUCTURE FOR: onlineexam_attempts
#

DROP TABLE IF EXISTS `onlineexam_attempts`;

CREATE TABLE `onlineexam_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onlineexam_student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_student_id` (`onlineexam_student_id`),
  CONSTRAINT `onlineexam_attempts_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: onlineexam_questions
#

DROP TABLE IF EXISTS `onlineexam_questions`;

CREATE TABLE `onlineexam_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `onlineexam_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_id` (`onlineexam_id`),
  KEY `question_id` (`question_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `onlineexam_questions_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_questions_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_questions_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 1, NULL, '0', '2021-10-14 10:22:38', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (2, 2, 1, NULL, '0', '2021-11-12 03:14:49', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (3, 32, 1, NULL, '0', '2021-11-12 03:14:51', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (4, 33, 1, NULL, '0', '2021-11-12 03:14:52', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (5, 34, 1, NULL, '0', '2021-11-12 03:14:56', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (6, 35, 1, NULL, '0', '2021-11-12 03:14:57', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (7, 1, 2, NULL, '0', '2021-11-12 03:37:47', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (8, 2, 2, NULL, '0', '2021-11-12 03:37:48', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (9, 32, 2, NULL, '0', '2021-11-12 03:37:48', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (10, 33, 2, NULL, '0', '2021-11-12 03:37:49', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (11, 34, 2, NULL, '0', '2021-11-12 03:37:50', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (12, 35, 2, NULL, '0', '2021-11-12 03:37:51', NULL);


#
# TABLE STRUCTURE FOR: onlineexam_student_results
#

DROP TABLE IF EXISTS `onlineexam_student_results`;

CREATE TABLE `onlineexam_student_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onlineexam_student_id` int(11) NOT NULL,
  `onlineexam_question_id` int(11) NOT NULL,
  `select_option` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_student_id` (`onlineexam_student_id`),
  KEY `onlineexam_question_id` (`onlineexam_question_id`),
  CONSTRAINT `onlineexam_student_results_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_student_results_ibfk_2` FOREIGN KEY (`onlineexam_question_id`) REFERENCES `onlineexam_questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: onlineexam_students
#

DROP TABLE IF EXISTS `onlineexam_students`;

CREATE TABLE `onlineexam_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onlineexam_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_id` (`onlineexam_id`),
  KEY `student_session_id` (`student_session_id`),
  CONSTRAINT `onlineexam_students_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: payment_settings
#

DROP TABLE IF EXISTS `payment_settings`;

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `gateway_mode` int(11) NOT NULL COMMENT '0 Testing, 1 live',
  `paytm_website` varchar(255) NOT NULL,
  `paytm_industrytype` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `gateway_mode`, `paytm_website`, `paytm_industrytype`, `created_at`, `updated_at`) VALUES (1, 'paypal', NULL, '', '', '', NULL, NULL, NULL, 'FALSE', '', 'no', 0, '', '', '2020-02-28 19:01:52', NULL);
INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `gateway_mode`, `paytm_website`, `paytm_industrytype`, `created_at`, `updated_at`) VALUES (2, 'stripe', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', 0, '', '', '2020-02-28 18:59:05', NULL);
INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `gateway_mode`, `paytm_website`, `paytm_industrytype`, `created_at`, `updated_at`) VALUES (3, 'payu', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', 0, '', '', '2020-02-28 18:59:02', NULL);
INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `gateway_mode`, `paytm_website`, `paytm_industrytype`, `created_at`, `updated_at`) VALUES (4, 'ccavenue', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', 0, '', '', '2020-02-28 18:58:57', NULL);
INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `gateway_mode`, `paytm_website`, `paytm_industrytype`, `created_at`, `updated_at`) VALUES (5, 'paystack', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', 0, '', '', '2020-02-28 18:50:04', NULL);
INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `gateway_mode`, `paytm_website`, `paytm_industrytype`, `created_at`, `updated_at`) VALUES (6, 'instamojo', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', 0, '', '', '2020-02-28 18:59:50', NULL);
INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `gateway_mode`, `paytm_website`, `paytm_industrytype`, `created_at`, `updated_at`) VALUES (7, 'razorpay', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', 0, '', '', '2020-02-28 18:51:08', NULL);
INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `gateway_mode`, `paytm_website`, `paytm_industrytype`, `created_at`, `updated_at`) VALUES (9, 'paytm', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', 0, '', '', '2020-06-15 11:08:11', NULL);
INSERT INTO `payment_settings` (`id`, `payment_type`, `api_username`, `api_secret_key`, `salt`, `api_publishable_key`, `api_password`, `api_signature`, `api_email`, `paypal_demo`, `account_no`, `is_active`, `gateway_mode`, `paytm_website`, `paytm_industrytype`, `created_at`, `updated_at`) VALUES (10, 'midtrans', NULL, '', '', '', NULL, NULL, NULL, '', '', 'no', 0, '', '', '2020-06-15 11:08:11', NULL);


#
# TABLE STRUCTURE FOR: payslip_allowance
#

DROP TABLE IF EXISTS `payslip_allowance`;

CREATE TABLE `payslip_allowance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cal_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: permission_category
#

DROP TABLE IF EXISTS `permission_category`;

CREATE TABLE `permission_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perm_group_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int(11) DEFAULT '0',
  `enable_add` int(11) DEFAULT '0',
  `enable_edit` int(11) DEFAULT '0',
  `enable_delete` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6006 DEFAULT CHARSET=utf8;

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (1, 1, 'Student', 'student', 1, 1, 1, 1, '2019-10-24 11:12:03');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (2, 1, 'Import Student', 'import_student', 1, 0, 0, 0, '2018-06-22 15:47:19');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (3, 1, 'Student Categories', 'student_categories', 1, 1, 1, 1, '2018-06-22 15:47:36');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (4, 1, 'Student Houses', 'student_houses', 1, 1, 1, 1, '2018-06-22 15:47:53');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (5, 2, 'Collect Fees', 'collect_fees', 1, 1, 0, 1, '2018-06-22 15:51:03');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (6, 2, 'Fees Carry Forward', 'fees_carry_forward', 1, 0, 0, 0, '2018-06-27 05:48:15');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (7, 2, 'Fees Master', 'fees_master', 1, 1, 1, 1, '2018-06-27 05:48:57');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (8, 2, 'Fees Group', 'fees_group', 1, 1, 1, 1, '2018-06-22 15:51:46');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (9, 3, 'Income', 'income', 1, 1, 1, 1, '2018-06-22 15:53:21');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (10, 3, 'Income Head', 'income_head', 1, 1, 1, 1, '2018-06-22 15:52:44');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (11, 3, 'Search Income', 'search_income', 1, 0, 0, 0, '2018-06-22 15:53:00');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (12, 4, 'Expense', 'expense', 1, 1, 1, 1, '2018-06-22 15:54:06');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (13, 4, 'Expense Head', 'expense_head', 1, 1, 1, 1, '2018-06-22 15:53:47');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (14, 4, 'Search Expense', 'search_expense', 1, 0, 0, 0, '2018-06-22 15:54:13');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (15, 5, 'Student / Period Attendance', 'student_attendance', 1, 1, 1, 0, '2019-11-29 06:49:05');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (20, 6, 'Marks Grade', 'marks_grade', 1, 1, 1, 1, '2018-06-22 15:55:25');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (21, 7, 'Class Timetable', 'class_timetable', 1, 0, 1, 0, '2019-11-24 08:35:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (23, 7, 'Subject', 'subject', 1, 1, 1, 1, '2018-06-22 16:02:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (24, 7, 'Class', 'class', 1, 1, 1, 1, '2018-06-22 16:02:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (25, 7, 'Section', 'section', 1, 1, 1, 1, '2018-06-22 16:01:10');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (26, 7, 'Promote Student', 'promote_student', 1, 0, 0, 0, '2018-06-22 16:02:47');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (27, 8, 'Upload Content', 'upload_content', 1, 1, 0, 1, '2018-06-22 16:03:19');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (28, 9, 'Books List', 'books', 1, 1, 1, 1, '2019-11-24 06:07:12');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (29, 9, 'Issue Return', 'issue_return', 1, 0, 0, 0, '2019-11-24 06:07:18');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (30, 9, 'Add Staff Member', 'add_staff_member', 1, 0, 0, 0, '2018-07-02 17:07:00');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (31, 10, 'Issue Item', 'issue_item', 1, 1, 1, 1, '2019-11-29 12:09:27');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (32, 10, 'Add Item Stock', 'item_stock', 1, 1, 1, 1, '2019-11-24 06:09:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (33, 10, 'Add Item', 'item', 1, 1, 1, 1, '2019-11-24 06:09:39');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (34, 10, 'Item Store', 'store', 1, 1, 1, 1, '2019-11-24 06:10:41');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (35, 10, 'Item Supplier', 'supplier', 1, 1, 1, 1, '2019-11-24 06:10:49');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (37, 11, 'Routes', 'routes', 1, 1, 1, 1, '2018-06-22 16:09:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (38, 11, 'Vehicle', 'vehicle', 1, 1, 1, 1, '2018-06-22 16:09:36');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (39, 11, 'Assign Vehicle', 'assign_vehicle', 1, 1, 1, 1, '2018-06-27 10:09:20');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (40, 12, 'Hostel', 'hostel', 1, 1, 1, 1, '2018-06-22 16:10:49');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (41, 12, 'Room Type', 'room_type', 1, 1, 1, 1, '2018-06-22 16:10:27');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (42, 12, 'Hostel Rooms', 'hostel_rooms', 1, 1, 1, 1, '2018-06-25 11:53:03');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (43, 13, 'Notice Board', 'notice_board', 1, 1, 1, 1, '2018-06-22 16:11:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (44, 13, 'Email', 'email', 1, 0, 0, 0, '2019-11-26 10:50:37');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (46, 13, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-06-22 16:11:23');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (53, 15, 'Languages', 'languages', 0, 1, 0, 0, '2018-06-22 16:13:18');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (54, 15, 'General Setting', 'general_setting', 1, 0, 1, 0, '2018-07-05 14:38:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (55, 15, 'Session Setting', 'session_setting', 1, 1, 1, 1, '2018-06-22 16:14:15');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (56, 15, 'Notification Setting', 'notification_setting', 1, 0, 1, 0, '2018-07-05 14:38:41');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (57, 15, 'SMS Setting', 'sms_setting', 1, 0, 1, 0, '2018-07-05 14:38:47');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (58, 15, 'Email Setting', 'email_setting', 1, 0, 1, 0, '2018-07-05 14:38:51');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (59, 15, 'Front CMS Setting', 'front_cms_setting', 1, 0, 1, 0, '2018-07-05 14:38:55');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (60, 15, 'Payment Methods', 'payment_methods', 1, 0, 1, 0, '2018-07-05 14:38:59');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (61, 16, 'Menus', 'menus', 1, 1, 0, 1, '2018-07-09 09:20:06');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (62, 16, 'Media Manager', 'media_manager', 1, 1, 0, 1, '2018-07-09 09:20:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (63, 16, 'Banner Images', 'banner_images', 1, 1, 0, 1, '2018-06-22 16:16:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (64, 16, 'Pages', 'pages', 1, 1, 1, 1, '2018-06-22 16:16:21');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (65, 16, 'Gallery', 'gallery', 1, 1, 1, 1, '2018-06-22 16:17:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (66, 16, 'Event', 'event', 1, 1, 1, 1, '2018-06-22 16:17:20');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (67, 16, 'News', 'notice', 1, 1, 1, 1, '2018-07-03 14:09:34');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (68, 2, 'Fees Group Assign', 'fees_group_assign', 1, 0, 0, 0, '2018-06-22 15:50:42');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (69, 2, 'Fees Type', 'fees_type', 1, 1, 1, 1, '2018-06-22 15:49:34');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (70, 2, 'Fees Discount', 'fees_discount', 1, 1, 1, 1, '2018-06-22 15:50:10');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (71, 2, 'Fees Discount Assign', 'fees_discount_assign', 1, 0, 0, 0, '2018-06-22 15:50:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (73, 2, 'Search Fees Payment', 'search_fees_payment', 1, 0, 0, 0, '2018-06-22 15:50:27');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (74, 2, 'Search Due Fees', 'search_due_fees', 1, 0, 0, 0, '2018-06-22 15:50:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (77, 7, 'Assign Class Teacher', 'assign_class_teacher', 1, 1, 1, 1, '2018-06-22 16:00:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (78, 17, 'Admission Enquiry', 'admission_enquiry', 1, 1, 1, 1, '2018-06-22 16:21:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (79, 17, 'Follow Up Admission Enquiry', 'follow_up_admission_enquiry', 1, 1, 0, 1, '2018-06-22 16:21:39');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (80, 17, 'Visitor Book', 'visitor_book', 1, 1, 1, 1, '2018-06-22 16:18:58');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (81, 17, 'Phone Call Log', 'phone_call_log', 1, 1, 1, 1, '2018-06-22 16:20:57');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (82, 17, 'Postal Dispatch', 'postal_dispatch', 1, 1, 1, 1, '2018-06-22 16:20:21');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (83, 17, 'Postal Receive', 'postal_receive', 1, 1, 1, 1, '2018-06-22 16:20:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (84, 17, 'Complain', 'complaint', 1, 1, 1, 1, '2018-07-03 14:10:55');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (85, 17, 'Setup Font Office', 'setup_font_office', 1, 1, 1, 1, '2018-06-22 16:19:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (86, 18, 'Staff', 'staff', 1, 1, 1, 1, '2018-06-22 16:23:31');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (87, 18, 'Disable Staff', 'disable_staff', 1, 0, 0, 0, '2018-06-22 16:23:12');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (88, 18, 'Staff Attendance', 'staff_attendance', 1, 1, 1, 0, '2018-06-22 16:23:10');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (90, 18, 'Staff Payroll', 'staff_payroll', 1, 1, 0, 1, '2018-06-22 16:22:51');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (93, 19, 'Homework', 'homework', 1, 1, 1, 1, '2018-06-22 16:23:50');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (94, 19, 'Homework Evaluation', 'homework_evaluation', 1, 1, 0, 0, '2018-06-27 08:37:21');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (96, 20, 'Student Certificate', 'student_certificate', 1, 1, 1, 1, '2018-07-06 16:11:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (97, 20, 'Generate Certificate', 'generate_certificate', 1, 0, 0, 0, '2018-07-06 16:07:16');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (98, 20, 'Student ID Card', 'student_id_card', 1, 1, 1, 1, '2018-07-06 16:11:28');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (99, 20, 'Generate ID Card', 'generate_id_card', 1, 0, 0, 0, '2018-07-06 16:11:49');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (102, 21, 'Calendar To Do List', 'calendar_to_do_list', 1, 1, 1, 1, '2018-06-22 16:24:41');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (104, 10, 'Item Category', 'item_category', 1, 1, 1, 1, '2018-06-22 16:04:33');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (106, 22, 'Quick Session Change', 'quick_session_change', 1, 0, 0, 0, '2018-06-22 16:24:45');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (107, 1, 'Disable Student', 'disable_student', 1, 0, 0, 0, '2018-06-25 11:51:34');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (108, 18, ' Approve Leave Request', 'approve_leave_request', 1, 0, 1, 0, '2019-11-29 05:17:51');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (109, 18, 'Apply Leave', 'apply_leave', 1, 1, 0, 0, '2019-11-29 05:17:46');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (110, 18, 'Leave Types ', 'leave_types', 1, 1, 1, 1, '2018-07-02 15:47:56');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (111, 18, 'Department', 'department', 1, 1, 1, 1, '2018-06-26 09:27:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (112, 18, 'Designation', 'designation', 1, 1, 1, 1, '2018-06-26 09:27:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (113, 22, 'Fees Collection And Expense Monthly Chart', 'fees_collection_and_expense_monthly_chart', 1, 0, 0, 0, '2018-07-03 12:38:15');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (114, 22, 'Fees Collection And Expense Yearly Chart', 'fees_collection_and_expense_yearly_chart', 1, 0, 0, 0, '2018-07-03 12:38:15');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (115, 22, 'Monthly Fees Collection Widget', 'Monthly fees_collection_widget', 1, 0, 0, 0, '2018-07-03 12:43:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (116, 22, 'Monthly Expense Widget', 'monthly_expense_widget', 1, 0, 0, 0, '2018-07-03 12:43:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (117, 22, 'Student Count Widget', 'student_count_widget', 1, 0, 0, 0, '2018-07-03 12:43:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (118, 22, 'Staff Role Count Widget', 'staff_role_count_widget', 1, 0, 0, 0, '2018-07-03 12:43:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (122, 5, 'Attendance By Date', 'attendance_by_date', 1, 0, 0, 0, '2018-07-03 14:12:29');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (123, 9, 'Add Student', 'add_student', 1, 0, 0, 0, '2018-07-03 14:12:29');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (126, 15, 'User Status', 'user_status', 1, 0, 0, 0, '2018-07-03 14:12:29');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (127, 18, 'Can See Other Users Profile', 'can_see_other_users_profile', 1, 0, 0, 0, '2018-07-03 14:12:29');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (128, 1, 'Student Timeline', 'student_timeline', 0, 1, 0, 1, '2018-07-05 13:38:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (129, 18, 'Staff Timeline', 'staff_timeline', 0, 1, 0, 1, '2018-07-05 13:38:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (130, 15, 'Backup', 'backup', 1, 1, 0, 1, '2018-07-09 09:47:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (131, 15, 'Restore', 'restore', 1, 0, 0, 0, '2018-07-09 09:47:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (134, 1, 'Disable Reason', 'disable_reason', 1, 1, 1, 1, '2019-11-27 12:09:21');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (135, 2, 'Fees Reminder', 'fees_reminder', 1, 0, 1, 0, '2019-10-25 06:09:49');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (136, 5, 'Approve Leave', 'approve_leave', 1, 0, 0, 0, '2019-10-25 06:16:44');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (137, 6, 'Exam Group', 'exam_group', 1, 1, 1, 1, '2019-10-25 06:32:34');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (141, 6, 'Design Admit Card', 'design_admit_card', 1, 1, 1, 1, '2019-10-25 06:36:59');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (142, 6, 'Print Admit Card', 'print_admit_card', 1, 0, 0, 0, '2019-11-24 05:27:51');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (143, 6, 'Design Marksheet', 'design_marksheet', 1, 1, 1, 1, '2019-10-25 06:40:25');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (144, 6, 'Print Marksheet', 'print_marksheet', 1, 0, 0, 0, '2019-10-25 06:41:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (145, 7, 'Teachers Timetable', 'teachers_time_table', 1, 0, 0, 0, '2019-11-30 08:22:21');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (146, 14, 'Student Report', 'student_report', 1, 0, 0, 0, '2019-10-25 06:57:00');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (147, 14, 'Guardian Report', 'guardian_report', 1, 0, 0, 0, '2019-10-25 07:00:27');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (148, 14, 'Student History', 'student_history', 1, 0, 0, 0, '2019-10-25 07:09:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (149, 14, 'Student Login Credential Report', 'student_login_credential_report', 1, 0, 0, 0, '2019-10-25 07:09:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (150, 14, 'Class Subject Report', 'class_subject_report', 1, 0, 0, 0, '2019-10-25 07:09:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (151, 14, 'Admission Report', 'admission_report', 1, 0, 0, 0, '2019-10-25 07:09:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (152, 14, 'Sibling Report', 'sibling_report', 1, 0, 0, 0, '2019-10-25 07:09:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (153, 14, 'Homework Evaluation Report', 'homehork_evaluation_report', 1, 0, 0, 0, '2019-11-24 06:34:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (154, 14, 'Student Profile', 'student_profile', 1, 0, 0, 0, '2019-10-25 07:09:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (155, 14, 'Fees Statement', 'fees_statement', 1, 0, 0, 0, '2019-10-25 07:25:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (156, 14, 'Balance Fees Report', 'balance_fees_report', 1, 0, 0, 0, '2019-10-25 07:25:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (157, 14, 'Fees Collection Report', 'fees_collection_report', 1, 0, 0, 0, '2019-10-25 07:25:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (158, 14, 'Online Fees Collection Report', 'online_fees_collection_report', 1, 0, 0, 0, '2019-10-25 07:25:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (159, 14, 'Income Report', 'income_report', 1, 0, 0, 0, '2019-10-25 07:25:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (160, 14, 'Expense Report', 'expense_report', 1, 0, 0, 0, '2019-10-25 07:25:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (161, 14, 'PayRoll Report', 'payroll_report', 1, 0, 0, 0, '2019-10-31 05:53:22');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (162, 14, 'Income Group Report', 'income_group_report', 1, 0, 0, 0, '2019-10-25 07:25:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (163, 14, 'Expense Group Report', 'expense_group_report', 1, 0, 0, 0, '2019-10-25 07:25:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (164, 14, 'Attendance Report', 'attendance_report', 1, 0, 0, 0, '2019-10-25 07:38:06');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (165, 14, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2019-10-25 07:38:06');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (174, 14, 'Transport Report', 'transport_report', 1, 0, 0, 0, '2019-10-25 07:43:56');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (175, 14, 'Hostel Report', 'hostel_report', 1, 0, 0, 0, '2019-11-27 12:21:53');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (176, 14, 'Audit Trail Report', 'audit_trail_report', 1, 0, 0, 0, '2019-10-25 07:46:39');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (177, 14, 'User Log', 'user_log', 1, 0, 0, 0, '2019-10-25 07:49:27');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (178, 14, 'Book Issue Report', 'book_issue_report', 1, 0, 0, 0, '2019-10-25 07:59:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (179, 14, 'Book Due Report', 'book_due_report', 1, 0, 0, 0, '2019-10-25 07:59:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (180, 14, 'Book Inventory Report', 'book_inventory_report', 1, 0, 0, 0, '2019-10-25 07:59:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (181, 14, 'Stock Report', 'stock_report', 1, 0, 0, 0, '2019-10-25 08:01:28');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (182, 14, 'Add Item Report', 'add_item_report', 1, 0, 0, 0, '2019-10-25 08:01:28');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (183, 14, 'Issue Item Report', 'issue_item_report', 1, 0, 0, 0, '2019-11-29 09:18:06');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (185, 23, 'Online Examination', 'online_examination', 1, 1, 1, 1, '2019-11-24 05:24:50');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (186, 23, 'Question Bank', 'question_bank', 1, 1, 1, 1, '2019-11-24 05:25:18');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (187, 6, 'Exam Result', 'exam_result', 1, 0, 0, 0, '2019-11-24 05:28:50');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (188, 7, 'Subject Group', 'subject_group', 1, 1, 1, 1, '2019-11-24 06:04:32');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (189, 18, 'Teachers Rating', 'teachers_rating', 1, 0, 1, 1, '2019-11-24 08:42:54');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (190, 22, 'Fees Awaiting Payment Widegts', 'fees_awaiting_payment_widegts', 1, 0, 0, 0, '2019-11-24 06:22:51');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (191, 22, 'Conveted Leads Widegts', 'conveted_leads_widegts', 1, 0, 0, 0, '2019-11-24 06:28:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (192, 22, 'Fees Overview Widegts', 'fees_overview_widegts', 1, 0, 0, 0, '2019-11-24 06:27:41');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (193, 22, 'Enquiry Overview Widegts', 'enquiry_overview_widegts', 1, 0, 0, 0, '2019-12-02 10:36:09');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (194, 22, 'Library Overview Widegts', 'book_overview_widegts', 1, 0, 0, 0, '2019-12-01 06:43:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (195, 22, 'Student Today Attendance Widegts', 'today_attendance_widegts', 1, 0, 0, 0, '2019-12-03 10:27:45');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (196, 6, 'Marks Import', 'marks_import', 1, 0, 0, 0, '2019-11-24 06:32:11');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (197, 14, 'Student Attendance Type Report', 'student_attendance_type_report', 1, 0, 0, 0, '2019-11-24 06:36:32');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (198, 14, 'Exam Marks Report', 'exam_marks_report', 1, 0, 0, 0, '2019-11-24 06:41:15');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (200, 14, 'Online Exam Wise Report', 'online_exam_wise_report', 1, 0, 0, 0, '2019-11-24 06:48:14');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (201, 14, 'Online Exams Report', 'online_exams_report', 1, 0, 0, 0, '2019-11-29 08:18:05');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (202, 14, 'Online Exams Attempt Report', 'online_exams_attempt_report', 1, 0, 0, 0, '2019-11-29 08:16:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (203, 14, 'Online Exams Rank Report', 'online_exams_rank_report', 1, 0, 0, 0, '2019-11-24 06:52:25');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (204, 14, 'Staff Report', 'staff_report', 1, 0, 0, 0, '2019-11-24 06:55:27');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (205, 6, 'Exam', 'exam', 1, 1, 1, 1, '2019-11-24 10:25:48');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (207, 6, 'Exam Publish', 'exam_publish', 1, 0, 0, 0, '2019-11-24 10:45:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (208, 6, 'Link Exam', 'link_exam', 1, 0, 1, 0, '2019-11-24 10:45:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (210, 6, 'Assign / View student', 'exam_assign_view_student', 1, 0, 1, 0, '2019-11-24 10:45:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (211, 6, 'Exam Subject', 'exam_subject', 1, 0, 1, 0, '2019-11-24 10:45:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (212, 6, 'Exam Marks', 'exam_marks', 1, 0, 1, 0, '2019-11-24 10:45:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (213, 15, 'Language Switcher', 'language_switcher', 1, 0, 0, 0, '2019-11-24 10:47:11');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (214, 23, 'Add Questions in Exam ', 'add_questions_in_exam', 1, 0, 1, 0, '2019-11-28 07:08:57');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (215, 15, 'Custom Fields', 'custom_fields', 1, 0, 0, 0, '2019-11-29 09:38:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (216, 15, 'System Fields', 'system_fields', 1, 0, 0, 0, '2019-11-25 05:45:01');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (217, 13, 'SMS', 'sms', 1, 0, 0, 0, '2018-06-22 16:10:54');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (219, 14, 'Student / Period Attendance Report', 'student_period_attendance_report', 1, 0, 0, 0, '2019-11-29 07:49:31');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (220, 14, 'Biometric Attendance Log', 'biometric_attendance_log', 1, 0, 0, 0, '2019-11-27 11:29:16');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (221, 14, 'Book Issue Return Report', 'book_issue_return_report', 1, 0, 0, 0, '2019-11-27 12:00:23');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (222, 23, 'Assign / View Student', 'online_assign_view_student', 1, 0, 1, 0, '2019-11-28 09:50:22');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (223, 14, 'Rank Report', 'rank_report', 1, 0, 0, 0, '2019-11-29 08:00:21');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (224, 25, 'Chat', 'chat', 1, 0, 0, 0, '2019-11-29 09:40:28');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (226, 22, 'Income Donut Graph', 'income_donut_graph', 1, 0, 0, 0, '2019-11-29 10:30:33');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (227, 22, 'Expense Donut Graph', 'expense_donut_graph', 1, 0, 0, 0, '2019-11-29 10:31:10');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (228, 9, 'Import Book', 'import_book', 1, 0, 0, 0, '2019-11-29 11:51:01');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (229, 22, 'Staff Present Today Widegts', 'staff_present_today_widegts', 1, 0, 0, 0, '2019-11-29 12:18:00');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (230, 22, 'Student Present Today Widegts', 'student_present_today_widegts', 1, 0, 0, 0, '2019-11-29 12:17:42');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (231, 26, 'Multi Class Student', 'multi_class_student', 1, 0, 0, 0, '2019-12-02 11:32:58');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (232, 27, 'Online Admission', 'online_admission', 1, 0, 1, 1, '2019-12-02 11:41:10');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (233, 15, 'Print Header Footer', 'print_header_footer', 1, 0, 0, 0, '2020-02-12 07:32:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (234, 28, 'Manage Alumni', 'manage_alumni', 1, 1, 1, 1, '2020-06-02 08:45:46');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (235, 28, 'Events', 'events', 1, 1, 1, 1, '2020-05-29 03:18:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (236, 29, 'Manage Lesson Plan', 'manage_lesson_plan', 1, 1, 1, 0, '2020-05-29 03:47:37');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (237, 29, 'Manage Syllabus Status', 'manage_syllabus_status', 1, 0, 1, 0, '2020-05-29 03:50:11');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (238, 29, 'Lesson', 'lesson', 1, 1, 1, 1, '2020-05-29 03:50:11');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (239, 29, 'Topic', 'topic', 1, 1, 1, 1, '2020-05-29 03:50:11');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (240, 14, 'Syllabus Status Report', 'syllabus_status_report', 1, 0, 0, 0, '2020-05-29 04:47:54');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (241, 14, 'Teacher Syllabus Status Report', 'teacher_syllabus_status_report', 1, 0, 0, 0, '2020-05-29 04:47:54');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (242, 14, 'Alumni Report', 'alumni_report', 1, 0, 0, 0, '2020-06-08 05:29:54');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (5001, 500, 'Setting', 'setting', 1, 0, 1, 0, '2020-06-10 13:39:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (5002, 500, 'Live Classes', 'live_classes', 1, 1, 0, 1, '2020-05-31 15:41:32');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (5003, 500, 'Live Meeting', 'live_meeting', 1, 1, 0, 1, '2020-06-01 12:41:41');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (5004, 500, 'Live Meeting Report', 'live_meeting_report', 1, 0, 0, 0, '2020-06-10 05:07:40');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (5005, 500, 'Live Classes Report', 'live_classes_report', 1, 0, 0, 0, '2020-06-10 06:29:53');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (6001, 600, 'Live Classes', 'gmeet_live_classes', 1, 1, 0, 1, '2020-09-22 10:03:29');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (6002, 600, 'Live Meeting', 'gmeet_live_meeting', 1, 1, 0, 1, '2020-09-22 10:03:44');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (6003, 600, 'Live Meeting Report', 'gmeet_live_meeting_report', 1, 0, 0, 0, '2020-09-22 10:03:57');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (6004, 600, 'Live Classes Report', 'gmeet_live_classes_report', 1, 0, 0, 0, '2020-09-22 10:04:08');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (6005, 600, 'Setting', 'gmeet_setting', 1, 0, 1, 0, '2020-09-22 10:04:08');


#
# TABLE STRUCTURE FOR: permission_group
#

DROP TABLE IF EXISTS `permission_group`;

CREATE TABLE `permission_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT '0',
  `system` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (1, 'Student Information', 'student_information', 1, 1, '2019-03-15 15:00:22');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (2, 'Fees Collection', 'fees_collection', 1, 0, '2020-06-11 06:21:35');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (3, 'Income', 'income', 1, 0, '2020-06-01 07:27:39');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (4, 'Expense', 'expense', 1, 0, '2019-03-15 14:36:22');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (5, 'Student Attendance', 'student_attendance', 1, 0, '2018-07-02 13:18:08');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (6, 'Examination', 'examination', 1, 0, '2018-07-11 08:19:08');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (7, 'Academics', 'academics', 1, 1, '2018-07-02 12:55:43');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (8, 'Download Center', 'download_center', 1, 0, '2018-07-02 13:19:29');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (9, 'Library', 'library', 1, 0, '2018-06-28 16:43:14');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (10, 'Inventory', 'inventory', 1, 0, '2018-06-27 06:18:58');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (11, 'Transport', 'transport', 1, 0, '2018-06-27 13:21:26');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (12, 'Hostel', 'hostel', 1, 0, '2018-07-02 13:19:32');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (13, 'Communicate', 'communicate', 1, 0, '2018-07-02 13:20:00');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (14, 'Reports', 'reports', 1, 1, '2018-06-27 09:10:22');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (15, 'System Settings', 'system_settings', 1, 1, '2018-06-27 09:10:28');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (16, 'Front CMS', 'front_cms', 1, 0, '2018-07-10 10:46:54');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (17, 'Front Office', 'front_office', 1, 0, '2018-06-27 09:15:30');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (18, 'Human Resource', 'human_resource', 1, 1, '2018-06-27 09:11:02');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (19, 'Homework', 'homework', 1, 0, '2018-06-27 06:19:38');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (20, 'Certificate', 'certificate', 1, 0, '2018-06-27 13:21:29');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (21, 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '2019-03-15 14:36:25');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (22, 'Dashboard and Widgets', 'dashboard_and_widgets', 1, 1, '2018-06-27 09:11:17');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (23, 'Online Examination', 'online_examination', 1, 0, '2020-06-01 07:55:36');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (25, 'Chat', 'chat', 1, 0, '2019-11-24 05:24:04');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (26, 'Multi Class', 'multi_class', 1, 0, '2019-11-27 17:44:14');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (27, 'Online Admission', 'online_admission', 1, 0, '2019-11-27 08:12:13');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (28, 'Alumni', 'alumni', 1, 0, '2020-05-29 05:56:38');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (29, 'Lesson Plan', 'lesson_plan', 1, 0, '2020-06-07 11:08:30');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (500, 'Zoom Live Classes', 'zoom_live_classes', 1, 0, '2020-06-10 13:37:23');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES (600, 'Gmeet Live Classes', 'gmeet_live_classes', 1, 0, '2021-10-21 17:44:04');


#
# TABLE STRUCTURE FOR: permission_student
#

DROP TABLE IF EXISTS `permission_student`;

CREATE TABLE `permission_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `system` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;

INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (1, 'Fees', 'fees', 0, 1, 1, 2, '2020-06-11 06:21:35');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (2, 'Class Timetable', 'class_timetable', 1, 1, 1, 7, '2020-05-31 01:27:50');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (3, 'Homework', 'homework', 0, 1, 1, 19, '2020-06-01 08:19:14');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (4, 'Download Center', 'download_center', 0, 1, 1, 8, '2020-06-01 08:22:49');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (5, 'Attendance', 'attendance', 0, 1, 1, 5, '2020-06-01 08:27:18');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (7, 'Examinations', 'examinations', 0, 1, 1, 6, '2020-06-01 08:29:50');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (8, 'Notice Board', 'notice_board', 0, 1, 1, 13, '2020-06-01 08:30:35');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (11, 'Library', 'library', 0, 1, 1, 9, '2020-06-01 08:32:37');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (12, 'Transport Routes', 'transport_routes', 0, 1, 1, 11, '2020-06-01 09:21:30');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (13, 'Hostel Rooms', 'hostel_rooms', 0, 1, 1, 12, '2020-06-01 09:22:27');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (14, 'Calendar To Do List', 'calendar_to_do_list', 0, 1, 1, 21, '2020-06-01 09:23:18');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (15, 'Online Examination', 'online_examination', 0, 1, 1, 23, '2020-06-11 10:50:01');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (16, 'Teachers Rating', 'teachers_rating', 0, 1, 1, 0, '2020-06-01 10:19:58');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (17, 'Chat', 'chat', 0, 1, 1, 25, '2020-06-01 10:23:06');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (18, 'Multi Class', 'multi_class', 1, 1, 1, 26, '2020-05-31 01:26:52');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (19, 'Lesson Plan', 'lesson_plan', 0, 1, 1, 29, '2020-06-07 11:08:30');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (20, 'Syllabus Status', 'syllabus_status', 0, 1, 1, 29, '2020-06-07 11:08:30');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (23, 'Apply Leave', 'apply_leave', 0, 1, 1, 0, '2020-06-11 10:50:23');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (24, 'Gmeet Live Classes ', 'gmeet_live_classes', 0, 1, 1, 600, '2021-10-21 17:44:04');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (500, 'Live Classes', 'live_classes', 0, 1, 1, 500, '2021-10-28 04:14:33');


#
# TABLE STRUCTURE FOR: print_headerfooter
#

DROP TABLE IF EXISTS `print_headerfooter`;

CREATE TABLE `print_headerfooter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `print_type` varchar(255) NOT NULL,
  `header_image` varchar(255) NOT NULL,
  `footer_content` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `print_headerfooter` (`id`, `print_type`, `header_image`, `footer_content`, `created_by`, `entry_date`) VALUES (1, 'staff_payslip', 'header_image.jpg', 'This payslip is computer generated hence no signature is required.', 1, '2020-02-28 21:11:08');
INSERT INTO `print_headerfooter` (`id`, `print_type`, `header_image`, `footer_content`, `created_by`, `entry_date`) VALUES (2, 'student_receipt', 'header_image.jpg', 'This receipt is computer generated hence no signature is required.', 1, '2020-02-28 21:10:58');


#
# TABLE STRUCTURE FOR: question_answers
#

DROP TABLE IF EXISTS `question_answers`;

CREATE TABLE `question_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: question_options
#

DROP TABLE IF EXISTS `question_options`;

CREATE TABLE `question_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: questions
#

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) DEFAULT NULL,
  `question` text,
  `opt_a` text,
  `opt_b` text,
  `opt_c` text,
  `opt_d` text,
  `opt_e` text,
  `correct` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

INSERT INTO `questions` (`id`, `subject_id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `opt_e`, `correct`, `created_at`, `updated_at`) VALUES (1, 1, '<p>test the question</p>', '<p>add</p>', '<p>sub</p>', '<p>multi</p>', '<p>divide</p>', '', 'opt_b', '2021-10-14 10:22:21', NULL);
INSERT INTO `questions` (`id`, `subject_id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `opt_e`, `correct`, `created_at`, `updated_at`) VALUES (2, 1, '<p>q</p>', '<p>a1</p>', '<p>a2</p>', '<p>a3</p>', '<p>a4</p>', '<p>a5</p>\r\n', 'opt_c', '2021-10-14 11:17:31', NULL);
INSERT INTO `questions` (`id`, `subject_id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `opt_e`, `correct`, `created_at`, `updated_at`) VALUES (32, 1, '<p>queestion 2</p>', '<p>a</p>', '<p>b</p>', '<p>d</p>', '<p>c</p>', '', 'opt_d', '2021-10-14 16:18:55', NULL);
INSERT INTO `questions` (`id`, `subject_id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `opt_e`, `correct`, `created_at`, `updated_at`) VALUES (33, 1, '<p>dasdas</p>', '<p>dsadas</p>', '<p>dasdas</p>', '<p>dewtrewr</p>', '<p>rewwer</p>', '<p>rewrewrew</p>\r\n', 'opt_b', '2021-10-14 17:05:35', NULL);
INSERT INTO `questions` (`id`, `subject_id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `opt_e`, `correct`, `created_at`, `updated_at`) VALUES (34, 1, '<p>question 1</p>', '<p>a</p>', '<p>s</p>', '<p>f</p>', '<p>r</p>', '<p>g</p>\r\n', 'opt_a', '2021-10-14 18:31:59', NULL);
INSERT INTO `questions` (`id`, `subject_id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `opt_e`, `correct`, `created_at`, `updated_at`) VALUES (35, 1, '<p>question 2</p>', '<p>f</p>', '<p>sc</p>', '<p>c</p>', '<p>r</p>', '<p>q</p>\r\n', 'opt_c', '2021-10-14 18:31:59', NULL);


#
# TABLE STRUCTURE FOR: read_notification
#

DROP TABLE IF EXISTS `read_notification`;

CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `read_notification` (`id`, `student_id`, `parent_id`, `staff_id`, `notification_id`, `is_active`, `created_at`, `updated_at`) VALUES (1, 3, NULL, NULL, 2, 'no', '2021-11-14 23:18:17', NULL);


#
# TABLE STRUCTURE FOR: reference
#

DROP TABLE IF EXISTS `reference`;

CREATE TABLE `reference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `reference` (`id`, `reference`, `description`) VALUES (1, 'Complain Reference1', '');
INSERT INTO `reference` (`id`, `reference`, `description`) VALUES (2, 'Complain Reference2', '');


#
# TABLE STRUCTURE FOR: roles
#

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `is_system` int(1) NOT NULL DEFAULT '0',
  `is_superadmin` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES (1, 'Admin', NULL, 0, 1, 0, '2018-06-30 21:09:11', '0000-00-00');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES (2, 'Teacher', NULL, 0, 1, 0, '2018-06-30 21:09:14', '0000-00-00');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES (3, 'Accountant', NULL, 0, 1, 0, '2018-06-30 21:09:17', '0000-00-00');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES (4, 'Librarian', NULL, 0, 1, 0, '2018-06-30 21:09:21', '0000-00-00');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES (6, 'Receptionist', NULL, 0, 1, 0, '2018-07-02 11:09:03', '0000-00-00');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES (7, 'Super Admin', NULL, 0, 1, 1, '2018-07-11 19:41:29', '0000-00-00');


#
# TABLE STRUCTURE FOR: roles_permissions
#

DROP TABLE IF EXISTS `roles_permissions`;

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `perm_cat_id` int(11) DEFAULT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_add` int(11) DEFAULT NULL,
  `can_edit` int(11) DEFAULT NULL,
  `can_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1494 DEFAULT CHARSET=utf8;

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (10, 1, 17, 1, 1, 1, 1, '2018-07-06 15:18:56');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (11, 1, 78, 1, 1, 1, 1, '2018-07-03 06:19:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (23, 1, 12, 1, 1, 1, 1, '2018-07-06 15:15:38');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (24, 1, 13, 1, 1, 1, 1, '2018-07-06 15:18:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (26, 1, 15, 1, 1, 1, 0, '2019-11-28 05:17:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (28, 1, 19, 1, 1, 1, 0, '2018-07-02 17:01:10');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (30, 1, 76, 1, 1, 1, 0, '2018-07-02 17:01:10');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (31, 1, 21, 1, 0, 1, 0, '2019-11-26 10:21:15');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (32, 1, 22, 1, 1, 1, 1, '2018-07-02 17:02:05');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (34, 1, 24, 1, 1, 1, 1, '2019-11-28 12:05:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (43, 1, 32, 1, 1, 1, 1, '2018-07-06 15:52:05');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (44, 1, 33, 1, 1, 1, 1, '2018-07-06 15:52:29');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (45, 1, 34, 1, 1, 1, 1, '2018-07-06 15:53:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (46, 1, 35, 1, 1, 1, 1, '2018-07-06 15:54:34');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (47, 1, 104, 1, 1, 1, 1, '2018-07-06 15:53:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (48, 1, 37, 1, 1, 1, 1, '2018-07-06 15:55:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (49, 1, 38, 1, 1, 1, 1, '2018-07-09 10:45:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (58, 1, 52, 1, 1, 0, 1, '2018-07-09 08:49:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (61, 1, 55, 1, 1, 1, 1, '2018-07-02 14:54:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (67, 1, 61, 1, 1, 0, 1, '2018-07-09 11:29:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (68, 1, 62, 1, 1, 0, 1, '2018-07-09 11:29:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (69, 1, 63, 1, 1, 0, 1, '2018-07-09 09:21:38');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (70, 1, 64, 1, 1, 1, 1, '2018-07-09 08:32:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (71, 1, 65, 1, 1, 1, 1, '2018-07-09 08:41:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (72, 1, 66, 1, 1, 1, 1, '2018-07-09 08:43:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (73, 1, 67, 1, 1, 1, 1, '2018-07-09 08:44:47');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (74, 1, 79, 1, 1, 0, 1, '2019-11-30 07:02:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (75, 1, 80, 1, 1, 1, 1, '2018-07-06 15:11:23');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (76, 1, 81, 1, 1, 1, 1, '2018-07-06 15:11:23');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (78, 1, 83, 1, 1, 1, 1, '2018-07-06 15:11:23');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (79, 1, 84, 1, 1, 1, 1, '2018-07-06 15:11:23');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (80, 1, 85, 1, 1, 1, 1, '2018-07-12 05:46:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (87, 1, 92, 1, 1, 1, 1, '2018-06-26 09:03:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (94, 1, 82, 1, 1, 1, 1, '2018-07-06 15:11:23');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (120, 1, 39, 1, 1, 1, 1, '2018-07-06 15:56:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (156, 1, 9, 1, 1, 1, 1, '2019-11-28 05:15:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (157, 1, 10, 1, 1, 1, 1, '2019-11-28 05:15:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (159, 1, 40, 1, 1, 1, 1, '2019-11-30 06:19:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (160, 1, 41, 1, 1, 1, 1, '2019-12-02 11:13:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (161, 1, 42, 1, 1, 1, 1, '2019-11-30 06:19:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (169, 1, 27, 1, 1, 0, 1, '2019-11-29 11:45:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (178, 1, 54, 1, 0, 1, 0, '2018-07-05 14:39:22');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (179, 1, 56, 1, 0, 1, 0, '2019-11-30 06:19:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (180, 1, 57, 1, 0, 1, 0, '2019-11-30 07:02:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (181, 1, 58, 1, 0, 1, 0, '2019-11-30 07:02:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (182, 1, 59, 1, 0, 1, 0, '2019-11-30 07:02:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (183, 1, 60, 1, 0, 1, 0, '2019-11-30 06:29:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (190, 1, 105, 1, 0, 0, 0, '2018-07-02 16:43:25');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (199, 1, 75, 1, 0, 0, 0, '2018-07-02 16:49:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (201, 1, 14, 1, 0, 0, 0, '2018-07-02 16:52:03');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (203, 1, 16, 1, 0, 0, 0, '2018-07-02 16:54:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (204, 1, 26, 1, 0, 0, 0, '2018-07-02 17:02:05');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (206, 1, 29, 1, 0, 0, 0, '2018-07-02 17:13:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (207, 1, 30, 1, 0, 0, 0, '2018-07-02 17:13:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (208, 1, 31, 1, 1, 1, 1, '2019-11-30 07:02:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (215, 1, 50, 1, 0, 0, 0, '2018-07-02 17:34:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (216, 1, 51, 1, 0, 0, 0, '2018-07-02 17:34:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (222, 1, 1, 1, 1, 1, 1, '2019-11-28 04:25:06');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (227, 1, 91, 1, 0, 0, 0, '2018-07-03 07:19:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (230, 10, 53, 0, 1, 0, 0, '2018-07-03 09:22:55');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (231, 10, 54, 0, 0, 1, 0, '2018-07-03 09:22:55');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (232, 10, 55, 1, 1, 1, 1, '2018-07-03 09:28:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (233, 10, 56, 0, 0, 1, 0, '2018-07-03 09:22:55');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (235, 10, 58, 0, 0, 1, 0, '2018-07-03 09:22:55');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (236, 10, 59, 0, 0, 1, 0, '2018-07-03 09:22:55');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (239, 10, 1, 1, 1, 1, 1, '2018-07-03 09:46:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (241, 10, 3, 1, 0, 0, 0, '2018-07-03 09:53:56');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (242, 10, 2, 1, 0, 0, 0, '2018-07-03 09:54:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (243, 10, 4, 1, 0, 1, 1, '2018-07-03 10:01:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (245, 10, 107, 1, 0, 0, 0, '2018-07-03 10:06:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (246, 10, 5, 1, 1, 0, 1, '2018-07-03 10:08:18');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (247, 10, 7, 1, 1, 1, 1, '2018-07-03 10:12:07');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (248, 10, 68, 1, 0, 0, 0, '2018-07-03 10:12:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (249, 10, 69, 1, 1, 1, 1, '2018-07-03 10:19:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (250, 10, 70, 1, 0, 0, 1, '2018-07-03 10:22:40');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (251, 10, 72, 1, 0, 0, 0, '2018-07-03 10:26:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (252, 10, 73, 1, 0, 0, 0, '2018-07-03 10:26:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (253, 10, 74, 1, 0, 0, 0, '2018-07-03 10:28:34');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (254, 10, 75, 1, 0, 0, 0, '2018-07-03 10:28:34');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (255, 10, 9, 1, 1, 1, 1, '2018-07-03 10:32:22');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (256, 10, 10, 1, 1, 1, 1, '2018-07-03 10:33:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (257, 10, 11, 1, 0, 0, 0, '2018-07-03 10:33:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (258, 10, 12, 1, 1, 1, 1, '2018-07-03 10:38:40');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (259, 10, 13, 1, 1, 1, 1, '2018-07-03 10:38:40');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (260, 10, 14, 1, 0, 0, 0, '2018-07-03 10:38:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (261, 10, 15, 1, 1, 1, 0, '2018-07-03 10:41:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (262, 10, 16, 1, 0, 0, 0, '2018-07-03 10:42:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (263, 10, 17, 1, 1, 1, 1, '2018-07-03 10:44:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (264, 10, 19, 1, 1, 1, 0, '2018-07-03 10:45:45');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (265, 10, 20, 1, 1, 1, 1, '2018-07-03 10:48:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (266, 10, 76, 1, 0, 0, 0, '2018-07-03 10:51:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (267, 10, 21, 1, 1, 1, 0, '2018-07-03 10:52:45');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (268, 10, 22, 1, 1, 1, 1, '2018-07-03 10:55:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (269, 10, 23, 1, 1, 1, 1, '2018-07-03 10:57:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (270, 10, 24, 1, 1, 1, 1, '2018-07-03 10:57:49');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (271, 10, 25, 1, 1, 1, 1, '2018-07-03 10:57:49');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (272, 10, 26, 1, 0, 0, 0, '2018-07-03 10:58:25');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (273, 10, 77, 1, 1, 1, 1, '2018-07-03 10:59:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (274, 10, 27, 1, 1, 0, 1, '2018-07-03 11:00:36');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (275, 10, 28, 1, 1, 1, 1, '2018-07-03 11:03:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (276, 10, 29, 1, 0, 0, 0, '2018-07-03 11:04:03');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (277, 10, 30, 1, 0, 0, 0, '2018-07-03 11:04:03');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (278, 10, 31, 1, 0, 0, 0, '2018-07-03 11:04:03');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (279, 10, 32, 1, 1, 1, 1, '2018-07-03 11:05:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (280, 10, 33, 1, 1, 1, 1, '2018-07-03 11:06:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (281, 10, 34, 1, 1, 1, 1, '2018-07-03 11:08:03');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (282, 10, 35, 1, 1, 1, 1, '2018-07-03 11:08:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (283, 10, 104, 1, 1, 1, 1, '2018-07-03 11:10:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (284, 10, 37, 1, 1, 1, 1, '2018-07-03 11:12:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (285, 10, 38, 1, 1, 1, 1, '2018-07-03 11:13:56');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (286, 10, 39, 1, 1, 1, 1, '2018-07-03 11:15:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (287, 10, 40, 1, 1, 1, 1, '2018-07-03 11:17:22');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (288, 10, 41, 1, 1, 1, 1, '2018-07-03 11:18:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (289, 10, 42, 1, 1, 1, 1, '2018-07-03 11:19:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (290, 10, 43, 1, 1, 1, 1, '2018-07-03 11:21:15');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (291, 10, 44, 1, 0, 0, 0, '2018-07-03 11:22:06');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (292, 10, 46, 1, 0, 0, 0, '2018-07-03 11:22:06');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (293, 10, 50, 1, 0, 0, 0, '2018-07-03 11:22:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (294, 10, 51, 1, 0, 0, 0, '2018-07-03 11:22:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (295, 10, 60, 0, 0, 1, 0, '2018-07-03 11:25:05');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (296, 10, 61, 1, 1, 1, 1, '2018-07-03 11:26:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (297, 10, 62, 1, 1, 1, 1, '2018-07-03 11:28:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (298, 10, 63, 1, 1, 0, 0, '2018-07-03 11:29:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (299, 10, 64, 1, 1, 1, 1, '2018-07-03 11:30:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (300, 10, 65, 1, 1, 1, 1, '2018-07-03 11:32:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (301, 10, 66, 1, 1, 1, 1, '2018-07-03 11:32:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (302, 10, 67, 1, 0, 0, 0, '2018-07-03 11:32:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (303, 10, 78, 1, 1, 1, 1, '2018-07-04 09:40:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (307, 1, 126, 1, 0, 0, 0, '2018-07-03 14:56:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (310, 1, 119, 1, 0, 0, 0, '2018-07-03 15:45:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (311, 1, 120, 1, 0, 0, 0, '2018-07-03 15:45:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (315, 1, 123, 1, 0, 0, 0, '2018-07-03 15:57:03');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (317, 1, 124, 1, 0, 0, 0, '2018-07-03 15:59:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (320, 1, 47, 1, 0, 0, 0, '2018-07-03 16:31:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (321, 1, 121, 1, 0, 0, 0, '2018-07-03 16:31:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (369, 1, 102, 1, 1, 1, 1, '2019-12-02 10:32:15');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (372, 10, 79, 1, 1, 0, 0, '2018-07-04 09:40:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (373, 10, 80, 1, 1, 1, 1, '2018-07-04 09:53:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (374, 10, 81, 1, 1, 1, 1, '2018-07-04 09:53:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (375, 10, 82, 1, 1, 1, 1, '2018-07-04 09:56:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (376, 10, 83, 1, 1, 1, 1, '2018-07-04 09:57:55');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (377, 10, 84, 1, 1, 1, 1, '2018-07-04 10:00:26');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (378, 10, 85, 1, 1, 1, 1, '2018-07-04 10:02:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (379, 10, 86, 1, 1, 1, 1, '2018-07-04 10:16:18');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (380, 10, 87, 1, 0, 0, 0, '2018-07-04 10:19:49');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (381, 10, 88, 1, 1, 1, 0, '2018-07-04 10:21:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (382, 10, 89, 1, 0, 0, 0, '2018-07-04 10:21:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (383, 10, 90, 1, 1, 0, 1, '2018-07-04 10:25:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (384, 10, 91, 1, 0, 0, 0, '2018-07-04 10:25:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (385, 10, 108, 1, 1, 1, 1, '2018-07-04 10:27:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (386, 10, 109, 1, 1, 1, 1, '2018-07-04 10:28:26');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (387, 10, 110, 1, 1, 1, 1, '2018-07-04 10:32:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (388, 10, 111, 1, 1, 1, 1, '2018-07-04 10:33:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (389, 10, 112, 1, 1, 1, 1, '2018-07-04 10:35:06');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (390, 10, 127, 1, 0, 0, 0, '2018-07-04 10:35:06');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (391, 10, 93, 1, 1, 1, 1, '2018-07-04 10:37:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (392, 10, 94, 1, 1, 0, 0, '2018-07-04 10:38:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (394, 10, 95, 1, 0, 0, 0, '2018-07-04 10:38:44');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (395, 10, 102, 1, 1, 1, 1, '2018-07-04 10:41:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (396, 10, 106, 1, 0, 0, 0, '2018-07-04 10:41:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (397, 10, 113, 1, 0, 0, 0, '2018-07-04 10:42:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (398, 10, 114, 1, 0, 0, 0, '2018-07-04 10:42:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (399, 10, 115, 1, 0, 0, 0, '2018-07-04 10:48:45');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (400, 10, 116, 1, 0, 0, 0, '2018-07-04 10:48:45');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (401, 10, 117, 1, 0, 0, 0, '2018-07-04 10:49:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (402, 10, 118, 1, 0, 0, 0, '2018-07-04 10:49:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (434, 1, 125, 1, 0, 0, 0, '2018-07-06 15:29:26');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (435, 1, 96, 1, 1, 1, 1, '2018-07-09 06:33:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (445, 1, 48, 1, 0, 0, 0, '2018-07-06 17:19:35');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (446, 1, 49, 1, 0, 0, 0, '2018-07-06 17:19:35');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (461, 1, 97, 1, 0, 0, 0, '2018-07-09 06:30:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (462, 1, 95, 1, 0, 0, 0, '2018-07-09 06:48:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (464, 1, 86, 1, 1, 1, 1, '2019-11-28 12:09:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (474, 1, 130, 1, 1, 0, 1, '2018-07-09 16:26:36');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (476, 1, 131, 1, 0, 0, 0, '2018-07-09 10:23:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (479, 2, 47, 1, 0, 0, 0, '2018-07-10 12:17:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (480, 2, 105, 1, 0, 0, 0, '2018-07-10 12:17:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (482, 2, 119, 1, 0, 0, 0, '2018-07-10 12:17:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (483, 2, 120, 1, 0, 0, 0, '2018-07-10 12:17:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (486, 2, 16, 1, 0, 0, 0, '2018-07-10 12:17:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (493, 2, 22, 1, 0, 0, 0, '2018-07-12 05:50:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (504, 2, 95, 1, 0, 0, 0, '2018-07-10 12:17:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (513, 3, 72, 1, 0, 0, 0, '2018-07-10 12:37:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (517, 3, 75, 1, 0, 0, 0, '2018-07-10 12:40:38');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (527, 3, 89, 1, 0, 0, 0, '2018-07-10 12:48:44');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (529, 3, 91, 1, 0, 0, 0, '2018-07-10 12:48:44');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (549, 3, 124, 1, 0, 0, 0, '2018-07-10 12:52:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (557, 6, 82, 1, 1, 1, 1, '2019-12-01 07:18:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (558, 6, 83, 1, 1, 1, 1, '2019-12-01 07:19:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (559, 6, 84, 1, 1, 1, 1, '2019-12-01 07:19:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (575, 6, 44, 1, 0, 0, 0, '2018-07-10 13:05:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (576, 6, 46, 1, 0, 0, 0, '2018-07-10 13:05:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (578, 6, 102, 1, 1, 1, 1, '2019-12-01 07:22:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (594, 3, 125, 1, 0, 0, 0, '2018-07-10 13:28:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (595, 3, 48, 1, 0, 0, 0, '2018-07-10 13:28:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (596, 3, 49, 1, 0, 0, 0, '2018-07-10 13:28:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (617, 2, 17, 1, 1, 1, 1, '2018-07-11 12:25:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (618, 2, 19, 1, 1, 1, 0, '2018-07-11 12:25:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (620, 2, 76, 1, 1, 1, 0, '2018-07-11 12:25:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (622, 2, 121, 1, 0, 0, 0, '2018-07-11 12:26:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (625, 1, 28, 1, 1, 1, 1, '2019-11-29 11:49:18');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (628, 6, 22, 1, 0, 0, 0, '2018-07-12 05:53:47');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (634, 4, 102, 1, 1, 1, 1, '2019-12-01 06:33:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (662, 1, 138, 1, 0, 0, 0, '2019-11-01 07:58:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (663, 1, 139, 1, 1, 1, 1, '2019-11-01 07:58:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (664, 1, 140, 1, 1, 1, 1, '2019-11-01 07:58:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (669, 1, 145, 1, 0, 0, 0, '2019-11-26 10:21:15');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (677, 1, 153, 1, 0, 0, 0, '2019-11-01 07:58:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (690, 1, 166, 1, 0, 0, 0, '2019-11-01 07:58:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (691, 1, 167, 1, 0, 0, 0, '2019-11-01 07:58:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (692, 1, 168, 1, 0, 0, 0, '2019-11-01 07:58:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (693, 1, 170, 1, 0, 0, 0, '2019-11-01 07:58:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (694, 1, 172, 1, 0, 0, 0, '2019-11-01 07:58:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (695, 1, 173, 1, 0, 0, 0, '2019-11-01 07:58:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (720, 1, 216, 1, 0, 0, 0, '2019-11-26 10:54:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (728, 1, 185, 1, 1, 1, 1, '2019-11-28 08:20:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (729, 1, 186, 1, 1, 1, 1, '2019-11-28 08:19:07');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (730, 1, 214, 1, 0, 1, 0, '2019-11-28 07:17:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (732, 1, 198, 1, 0, 0, 0, '2019-11-26 10:54:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (733, 1, 199, 1, 0, 0, 0, '2019-11-26 10:54:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (734, 1, 200, 1, 0, 0, 0, '2019-11-26 10:54:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (735, 1, 201, 1, 0, 0, 0, '2019-11-26 10:54:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (736, 1, 202, 1, 0, 0, 0, '2019-11-26 10:54:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (737, 1, 203, 1, 0, 0, 0, '2019-11-26 10:54:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (739, 1, 218, 1, 0, 0, 0, '2019-11-27 12:06:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (743, 1, 218, 1, 0, 0, 0, '2019-11-27 12:06:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (747, 1, 2, 1, 0, 0, 0, '2019-11-28 04:26:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (748, 1, 3, 1, 1, 1, 1, '2019-11-28 04:26:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (749, 1, 4, 1, 1, 1, 1, '2019-11-28 04:26:48');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (751, 1, 128, 0, 1, 0, 1, '2019-11-28 04:27:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (752, 1, 132, 1, 0, 1, 1, '2019-11-28 04:32:23');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (754, 1, 134, 1, 1, 1, 1, '2019-11-28 04:48:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (755, 1, 5, 1, 1, 0, 1, '2019-11-28 05:05:07');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (756, 1, 6, 1, 0, 0, 0, '2019-11-28 05:05:25');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (757, 1, 7, 1, 1, 1, 1, '2019-11-28 05:06:35');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (758, 1, 8, 1, 1, 1, 1, '2019-11-28 05:07:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (760, 1, 68, 1, 0, 0, 0, '2019-11-28 05:08:06');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (761, 1, 69, 1, 1, 1, 1, '2019-11-28 05:09:06');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (762, 1, 70, 1, 1, 1, 1, '2019-11-28 05:09:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (763, 1, 71, 1, 0, 0, 0, '2019-11-28 05:09:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (764, 1, 72, 1, 0, 0, 0, '2019-11-28 05:10:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (765, 1, 73, 1, 0, 0, 0, '2019-11-28 05:13:15');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (766, 1, 74, 1, 0, 0, 0, '2019-11-28 05:13:55');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (768, 1, 11, 1, 0, 0, 0, '2019-11-28 05:15:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (769, 1, 122, 1, 0, 0, 0, '2019-11-28 05:22:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (771, 1, 136, 1, 0, 0, 0, '2019-11-28 05:25:36');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (772, 1, 20, 1, 1, 1, 1, '2019-11-28 09:36:44');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (773, 1, 137, 1, 1, 1, 1, '2019-11-28 06:16:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (774, 1, 141, 1, 1, 1, 1, '2019-11-28 06:29:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (775, 1, 142, 1, 0, 0, 0, '2019-11-28 05:26:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (776, 1, 143, 1, 1, 1, 1, '2019-11-28 06:29:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (777, 1, 144, 1, 0, 0, 0, '2019-11-28 05:26:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (778, 1, 187, 1, 0, 0, 0, '2019-11-28 05:26:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (779, 1, 196, 1, 0, 0, 0, '2019-11-28 05:26:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (781, 1, 207, 1, 0, 0, 0, '2019-11-28 05:26:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (782, 1, 208, 1, 0, 1, 0, '2019-11-28 05:40:22');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (783, 1, 210, 1, 0, 1, 0, '2019-11-28 06:04:40');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (784, 1, 211, 1, 0, 1, 0, '2019-11-28 06:08:23');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (785, 1, 212, 1, 0, 1, 0, '2019-11-28 06:12:15');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (786, 1, 205, 1, 1, 1, 1, '2019-11-28 06:12:15');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (787, 1, 222, 1, 0, 1, 0, '2019-11-28 07:06:36');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (788, 1, 77, 1, 1, 1, 1, '2019-11-28 11:52:10');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (789, 1, 188, 1, 1, 1, 1, '2019-11-28 11:56:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (790, 1, 23, 1, 1, 1, 1, '2019-11-28 12:04:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (791, 1, 25, 1, 1, 1, 1, '2019-11-28 12:06:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (792, 1, 127, 1, 0, 0, 0, '2019-11-28 12:11:25');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (794, 1, 88, 1, 1, 1, 0, '2019-11-28 12:13:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (795, 1, 90, 1, 1, 0, 1, '2019-11-28 12:16:22');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (796, 1, 108, 1, 0, 1, 0, '2019-11-29 05:19:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (797, 1, 109, 1, 1, 0, 0, '2019-11-29 05:08:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (798, 1, 110, 1, 1, 1, 1, '2019-11-29 05:19:29');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (799, 1, 111, 1, 1, 1, 1, '2019-11-29 05:19:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (800, 1, 112, 1, 1, 1, 1, '2019-11-29 05:19:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (801, 1, 129, 0, 1, 0, 1, '2019-11-29 05:19:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (802, 1, 189, 1, 0, 1, 1, '2019-11-29 05:29:22');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (806, 2, 133, 1, 0, 1, 0, '2019-11-29 06:04:35');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (810, 2, 1, 1, 1, 1, 1, '2019-11-30 08:24:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (813, 1, 133, 1, 0, 1, 0, '2019-11-29 06:09:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (817, 1, 93, 1, 1, 1, 1, '2019-11-29 06:26:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (825, 1, 87, 1, 0, 0, 0, '2019-11-29 06:26:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (829, 1, 94, 1, 1, 0, 0, '2019-11-29 06:27:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (836, 1, 146, 1, 0, 0, 0, '2019-11-29 06:43:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (837, 1, 147, 1, 0, 0, 0, '2019-11-29 06:43:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (838, 1, 148, 1, 0, 0, 0, '2019-11-29 06:43:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (839, 1, 149, 1, 0, 0, 0, '2019-11-29 06:43:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (840, 1, 150, 1, 0, 0, 0, '2019-11-29 06:43:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (841, 1, 151, 1, 0, 0, 0, '2019-11-29 06:43:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (842, 1, 152, 1, 0, 0, 0, '2019-11-29 06:43:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (843, 1, 154, 1, 0, 0, 0, '2019-11-29 06:43:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (862, 1, 155, 1, 0, 0, 0, '2019-11-29 07:37:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (863, 1, 156, 1, 0, 0, 0, '2019-11-29 07:37:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (864, 1, 157, 1, 0, 0, 0, '2019-11-29 07:38:05');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (874, 1, 158, 1, 0, 0, 0, '2019-11-29 07:44:03');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (875, 1, 159, 1, 0, 0, 0, '2019-11-29 07:44:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (876, 1, 160, 1, 0, 0, 0, '2019-11-29 07:44:44');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (878, 1, 162, 1, 0, 0, 0, '2019-11-29 07:45:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (879, 1, 163, 1, 0, 0, 0, '2019-11-29 07:46:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (882, 1, 164, 1, 0, 0, 0, '2019-11-29 07:55:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (884, 1, 165, 1, 0, 0, 0, '2019-11-29 07:55:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (886, 1, 197, 1, 0, 0, 0, '2019-11-29 07:55:48');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (887, 1, 219, 1, 0, 0, 0, '2019-11-29 07:56:05');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (889, 1, 220, 1, 0, 0, 0, '2019-11-29 07:56:22');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (932, 1, 204, 1, 0, 0, 0, '2019-11-29 09:13:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (933, 1, 221, 1, 0, 0, 0, '2019-11-29 09:15:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (934, 1, 178, 1, 0, 0, 0, '2019-11-29 09:15:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (935, 1, 179, 1, 0, 0, 0, '2019-11-29 09:15:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (936, 1, 161, 1, 0, 0, 0, '2019-11-29 09:15:48');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (937, 1, 180, 1, 0, 0, 0, '2019-11-29 09:15:48');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (938, 1, 181, 1, 0, 0, 0, '2019-11-29 09:19:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (939, 1, 182, 1, 0, 0, 0, '2019-11-29 09:19:45');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (940, 1, 183, 1, 0, 0, 0, '2019-11-29 09:19:56');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (941, 1, 174, 1, 0, 0, 0, '2019-11-29 09:20:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (943, 1, 176, 1, 0, 0, 0, '2019-11-29 09:22:10');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (944, 1, 177, 1, 0, 0, 0, '2019-11-29 09:22:22');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (945, 1, 53, 0, 1, 0, 0, '2019-11-29 09:24:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (946, 1, 215, 1, 0, 0, 0, '2019-11-29 09:31:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (947, 1, 213, 1, 0, 0, 0, '2019-11-29 09:37:45');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (974, 1, 224, 1, 0, 0, 0, '2019-11-29 10:02:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (979, 1, 225, 1, 0, 0, 0, '2019-11-29 10:15:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (982, 2, 225, 1, 0, 0, 0, '2019-11-29 10:17:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1026, 1, 135, 1, 0, 1, 0, '2019-11-29 11:32:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1031, 1, 228, 1, 0, 0, 0, '2019-11-29 11:51:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1083, 1, 175, 1, 0, 0, 0, '2019-11-30 06:07:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1086, 1, 43, 1, 1, 1, 1, '2019-11-30 06:19:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1087, 1, 44, 1, 0, 0, 0, '2019-11-30 06:19:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1088, 1, 46, 1, 0, 0, 0, '2019-11-30 06:19:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1089, 1, 217, 1, 0, 0, 0, '2019-11-30 06:19:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1090, 1, 98, 1, 1, 1, 1, '2019-11-30 07:02:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1091, 1, 99, 1, 0, 0, 0, '2019-11-30 07:00:18');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1092, 1, 223, 1, 0, 0, 0, '2019-11-30 07:02:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1103, 2, 205, 1, 1, 1, 1, '2019-11-30 07:26:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1105, 2, 23, 1, 0, 0, 0, '2019-11-30 07:26:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1106, 2, 24, 1, 0, 0, 0, '2019-11-30 07:26:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1107, 2, 25, 1, 0, 0, 0, '2019-11-30 07:26:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1108, 2, 77, 1, 0, 0, 0, '2019-11-30 07:26:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1119, 2, 117, 1, 0, 0, 0, '2019-11-30 07:26:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1123, 3, 8, 1, 1, 1, 1, '2019-11-30 12:16:18');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1125, 3, 69, 1, 1, 1, 1, '2019-11-30 12:30:49');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1126, 3, 70, 1, 1, 1, 1, '2019-11-30 12:34:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1130, 3, 9, 1, 1, 1, 1, '2019-11-30 12:44:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1131, 3, 10, 1, 1, 1, 1, '2019-11-30 12:46:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1134, 3, 35, 1, 1, 1, 1, '2019-11-30 12:55:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1135, 3, 104, 1, 1, 1, 1, '2019-11-30 12:55:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1140, 3, 41, 1, 1, 1, 1, '2019-11-30 13:07:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1141, 3, 42, 1, 1, 1, 1, '2019-11-30 13:07:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1142, 3, 43, 1, 1, 1, 1, '2019-11-30 13:12:06');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1151, 3, 87, 1, 0, 0, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1152, 3, 88, 1, 1, 1, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1153, 3, 90, 1, 1, 0, 1, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1154, 3, 108, 1, 0, 1, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1155, 3, 109, 1, 1, 0, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1156, 3, 110, 1, 1, 1, 1, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1157, 3, 111, 1, 1, 1, 1, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1158, 3, 112, 1, 1, 1, 1, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1159, 3, 127, 1, 0, 0, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1160, 3, 129, 0, 1, 0, 1, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1161, 3, 102, 1, 1, 1, 1, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1162, 3, 106, 1, 0, 0, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1163, 3, 113, 1, 0, 0, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1164, 3, 114, 1, 0, 0, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1165, 3, 115, 1, 0, 0, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1166, 3, 116, 1, 0, 0, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1167, 3, 117, 1, 0, 0, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1168, 3, 118, 1, 0, 0, 0, '2019-11-30 07:53:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1171, 2, 142, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1172, 2, 144, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1179, 2, 212, 1, 0, 1, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1183, 2, 148, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1184, 2, 149, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1185, 2, 150, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1186, 2, 151, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1187, 2, 152, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1188, 2, 153, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1189, 2, 154, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1190, 2, 197, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1191, 2, 198, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1192, 2, 199, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1193, 2, 200, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1194, 2, 201, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1195, 2, 202, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1196, 2, 203, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1197, 2, 219, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1198, 2, 223, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1199, 2, 213, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1201, 2, 230, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1204, 2, 214, 1, 0, 1, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1206, 2, 224, 1, 0, 0, 0, '2019-11-30 08:06:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1208, 2, 2, 1, 0, 0, 0, '2019-11-30 08:25:45');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1210, 2, 143, 1, 1, 1, 1, '2019-11-30 08:27:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1211, 2, 145, 1, 0, 0, 0, '2019-11-30 08:27:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1214, 2, 3, 1, 1, 1, 1, '2019-11-30 08:33:18');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1216, 2, 4, 1, 1, 1, 1, '2019-11-30 09:02:56');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1218, 2, 128, 0, 1, 0, 1, '2019-11-30 09:07:44');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1220, 3, 135, 1, 0, 1, 0, '2019-11-30 12:38:56');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1231, 3, 190, 1, 0, 0, 0, '2019-11-30 09:14:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1232, 3, 192, 1, 0, 0, 0, '2019-11-30 09:14:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1233, 3, 226, 1, 0, 0, 0, '2019-11-30 09:14:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1234, 3, 227, 1, 0, 0, 0, '2019-11-30 09:14:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1235, 3, 224, 1, 0, 0, 0, '2019-11-30 09:14:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1236, 2, 15, 1, 1, 1, 0, '2019-11-30 09:24:25');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1239, 2, 122, 1, 0, 0, 0, '2019-11-30 09:27:48');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1240, 2, 136, 1, 0, 0, 0, '2019-11-30 09:27:48');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1242, 6, 217, 1, 0, 0, 0, '2019-11-30 09:30:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1243, 6, 224, 1, 0, 0, 0, '2019-11-30 09:30:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1245, 2, 20, 1, 1, 1, 1, '2019-11-30 09:31:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1246, 2, 137, 1, 1, 1, 1, '2019-11-30 09:32:40');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1248, 2, 141, 1, 1, 1, 1, '2019-11-30 09:34:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1250, 2, 187, 1, 0, 0, 0, '2019-11-30 09:41:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1252, 2, 207, 1, 0, 0, 0, '2019-11-30 09:51:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1253, 2, 208, 1, 0, 1, 0, '2019-11-30 09:52:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1255, 2, 210, 1, 0, 1, 0, '2019-11-30 09:52:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1256, 2, 211, 1, 0, 1, 0, '2019-11-30 09:54:03');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1257, 2, 21, 1, 0, 0, 0, '2019-11-30 10:02:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1259, 2, 188, 1, 0, 0, 0, '2019-11-30 10:04:35');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1260, 2, 27, 1, 1, 0, 1, '2021-11-14 22:54:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1262, 2, 43, 1, 1, 1, 1, '2019-11-30 10:09:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1263, 2, 44, 1, 0, 0, 0, '2019-11-30 10:11:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1264, 2, 46, 1, 0, 0, 0, '2019-11-30 10:11:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1265, 2, 217, 1, 0, 0, 0, '2019-11-30 10:11:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1266, 2, 146, 1, 0, 0, 0, '2019-11-30 10:16:35');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1267, 2, 147, 1, 0, 0, 0, '2019-11-30 10:17:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1269, 2, 164, 1, 0, 0, 0, '2019-11-30 10:21:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1271, 2, 109, 1, 1, 0, 0, '2019-11-30 10:33:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1272, 2, 93, 1, 1, 1, 1, '2019-11-30 10:37:25');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1273, 2, 94, 1, 1, 0, 0, '2019-11-30 10:37:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1275, 2, 102, 1, 1, 1, 1, '2019-11-30 10:41:22');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1277, 2, 196, 1, 0, 0, 0, '2019-11-30 10:45:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1278, 2, 195, 1, 0, 0, 0, '2019-11-30 10:49:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1279, 2, 185, 1, 1, 1, 1, '2019-11-30 10:51:44');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1280, 2, 186, 1, 1, 1, 1, '2019-11-30 10:52:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1281, 2, 222, 1, 0, 1, 0, '2019-11-30 10:54:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1283, 3, 5, 1, 1, 0, 1, '2019-11-30 12:13:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1284, 3, 6, 1, 0, 0, 0, '2019-11-30 12:13:29');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1285, 3, 7, 1, 1, 1, 1, '2019-11-30 12:14:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1286, 3, 68, 1, 0, 0, 0, '2019-11-30 12:16:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1287, 3, 71, 1, 0, 0, 0, '2019-11-30 12:35:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1288, 3, 73, 1, 0, 0, 0, '2019-11-30 12:35:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1289, 3, 74, 1, 0, 0, 0, '2019-11-30 12:36:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1290, 3, 11, 1, 0, 0, 0, '2019-11-30 12:46:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1291, 3, 12, 1, 1, 1, 1, '2019-11-30 12:49:29');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1292, 3, 13, 1, 1, 1, 1, '2019-11-30 12:52:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1294, 3, 14, 1, 0, 0, 0, '2019-11-30 12:52:55');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1295, 3, 31, 1, 1, 1, 1, '2019-12-02 12:00:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1297, 3, 37, 1, 1, 1, 1, '2019-11-30 12:58:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1298, 3, 38, 1, 1, 1, 1, '2019-11-30 12:59:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1299, 3, 39, 1, 1, 1, 1, '2019-11-30 13:00:07');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1300, 3, 40, 1, 1, 1, 1, '2019-11-30 13:02:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1301, 3, 44, 1, 0, 0, 0, '2019-11-30 13:14:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1302, 3, 46, 1, 0, 0, 0, '2019-11-30 13:14:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1303, 3, 217, 1, 0, 0, 0, '2019-11-30 13:14:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1304, 3, 155, 1, 0, 0, 0, '2019-11-30 13:14:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1305, 3, 156, 1, 0, 0, 0, '2019-11-30 13:15:18');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1306, 3, 157, 1, 0, 0, 0, '2019-11-30 13:15:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1307, 3, 158, 1, 0, 0, 0, '2019-11-30 13:16:07');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1308, 3, 159, 1, 0, 0, 0, '2019-11-30 13:16:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1309, 3, 160, 1, 0, 0, 0, '2019-11-30 13:16:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1313, 3, 161, 1, 0, 0, 0, '2019-11-30 13:18:26');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1314, 3, 162, 1, 0, 0, 0, '2019-11-30 13:18:48');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1315, 3, 163, 1, 0, 0, 0, '2019-11-30 13:18:48');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1316, 3, 164, 1, 0, 0, 0, '2019-11-30 13:19:47');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1317, 3, 165, 1, 0, 0, 0, '2019-11-30 13:19:47');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1318, 3, 174, 1, 0, 0, 0, '2019-11-30 13:19:47');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1319, 3, 175, 1, 0, 0, 0, '2019-11-30 13:19:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1320, 3, 181, 1, 0, 0, 0, '2019-11-30 13:20:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1321, 3, 86, 1, 1, 1, 1, '2019-11-30 13:24:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1322, 4, 28, 1, 1, 1, 1, '2019-12-01 06:22:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1324, 4, 29, 1, 0, 0, 0, '2019-12-01 06:23:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1325, 4, 30, 1, 0, 0, 0, '2019-12-01 06:23:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1326, 4, 123, 1, 0, 0, 0, '2019-12-01 06:24:26');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1327, 4, 228, 1, 0, 0, 0, '2019-12-01 06:24:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1328, 4, 43, 1, 1, 1, 1, '2019-12-01 06:28:05');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1332, 4, 44, 1, 0, 0, 0, '2019-12-01 06:29:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1333, 4, 46, 1, 0, 0, 0, '2019-12-01 06:29:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1334, 4, 217, 1, 0, 0, 0, '2019-12-01 06:29:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1335, 4, 178, 1, 0, 0, 0, '2019-12-01 06:29:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1336, 4, 179, 1, 0, 0, 0, '2019-12-01 06:30:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1337, 4, 180, 1, 0, 0, 0, '2019-12-01 06:30:29');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1338, 4, 221, 1, 0, 0, 0, '2019-12-01 06:30:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1339, 4, 86, 1, 0, 0, 0, '2019-12-01 06:31:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1341, 4, 106, 1, 0, 0, 0, '2019-12-01 06:35:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1342, 1, 107, 1, 0, 0, 0, '2019-12-01 06:36:44');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1343, 4, 117, 1, 0, 0, 0, '2019-12-01 06:40:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1344, 4, 194, 1, 0, 0, 0, '2019-12-01 06:41:35');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1348, 4, 230, 1, 0, 0, 0, '2019-12-01 06:49:15');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1350, 6, 1, 1, 0, 0, 0, '2019-12-01 07:05:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1351, 6, 21, 1, 0, 0, 0, '2019-12-01 07:06:29');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1352, 6, 23, 1, 0, 0, 0, '2019-12-01 07:06:45');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1353, 6, 24, 1, 0, 0, 0, '2019-12-01 07:07:05');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1354, 6, 25, 1, 0, 0, 0, '2019-12-01 07:07:34');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1355, 6, 77, 1, 0, 0, 0, '2019-12-01 07:08:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1356, 6, 188, 1, 0, 0, 0, '2019-12-01 07:08:45');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1357, 6, 43, 1, 1, 1, 1, '2019-12-01 07:10:44');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1358, 6, 78, 1, 1, 1, 1, '2019-12-01 07:13:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1360, 6, 79, 1, 1, 0, 1, '2019-12-01 07:14:39');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1361, 6, 80, 1, 1, 1, 1, '2019-12-01 07:15:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1362, 6, 81, 1, 1, 1, 1, '2019-12-01 07:17:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1363, 6, 85, 1, 1, 1, 1, '2019-12-01 07:20:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1364, 6, 86, 1, 0, 0, 0, '2019-12-01 07:21:10');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1365, 6, 106, 1, 0, 0, 0, '2019-12-01 07:22:55');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1366, 6, 117, 1, 0, 0, 0, '2019-12-01 07:23:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1394, 1, 106, 1, 0, 0, 0, '2019-12-02 10:50:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1395, 1, 113, 1, 0, 0, 0, '2019-12-02 10:50:59');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1396, 1, 114, 1, 0, 0, 0, '2019-12-02 10:51:34');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1397, 1, 115, 1, 0, 0, 0, '2019-12-02 10:51:34');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1398, 1, 116, 1, 0, 0, 0, '2019-12-02 10:51:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1399, 1, 117, 1, 0, 0, 0, '2019-12-02 10:52:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1400, 1, 118, 1, 0, 0, 0, '2019-12-02 10:52:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1402, 1, 191, 1, 0, 0, 0, '2019-12-02 10:53:34');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1403, 1, 192, 1, 0, 0, 0, '2019-12-02 10:53:47');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1404, 1, 193, 1, 0, 0, 0, '2019-12-02 10:53:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1405, 1, 194, 1, 0, 0, 0, '2019-12-02 10:54:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1406, 1, 195, 1, 0, 0, 0, '2019-12-02 10:54:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1408, 1, 227, 1, 0, 0, 0, '2019-12-02 10:55:47');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1410, 1, 226, 1, 0, 0, 0, '2019-12-02 11:01:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1411, 1, 229, 1, 0, 0, 0, '2019-12-02 11:02:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1412, 1, 230, 1, 0, 0, 0, '2019-12-02 11:02:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1413, 1, 190, 1, 0, 0, 0, '2019-12-02 11:13:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1414, 2, 174, 1, 0, 0, 0, '2019-12-02 11:24:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1415, 2, 175, 1, 0, 0, 0, '2019-12-02 11:24:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1418, 2, 232, 1, 0, 1, 1, '2019-12-02 11:41:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1419, 2, 231, 1, 0, 0, 0, '2019-12-02 11:42:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1420, 1, 231, 1, 0, 0, 0, '2019-12-02 11:49:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1421, 1, 232, 1, 0, 1, 1, '2019-12-02 11:49:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1422, 3, 32, 1, 1, 1, 1, '2019-12-02 12:00:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1423, 3, 33, 1, 1, 1, 1, '2019-12-02 12:00:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1424, 3, 34, 1, 1, 1, 1, '2019-12-02 12:00:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1425, 3, 182, 1, 0, 0, 0, '2019-12-02 12:00:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1426, 3, 183, 1, 0, 0, 0, '2019-12-02 12:00:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1427, 3, 189, 1, 0, 1, 1, '2019-12-02 12:00:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1428, 3, 229, 1, 0, 0, 0, '2019-12-02 12:00:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1429, 3, 230, 1, 0, 0, 0, '2019-12-02 12:00:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1430, 4, 213, 1, 0, 0, 0, '2019-12-02 12:02:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1432, 4, 224, 1, 0, 0, 0, '2019-12-02 12:02:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1433, 4, 195, 1, 0, 0, 0, '2019-12-03 10:27:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1434, 4, 229, 1, 0, 0, 0, '2019-12-03 10:28:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1436, 6, 213, 1, 0, 0, 0, '2019-12-03 10:40:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1437, 6, 191, 1, 0, 0, 0, '2019-12-03 10:40:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1438, 6, 193, 1, 0, 0, 0, '2019-12-03 10:40:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1439, 6, 230, 1, 0, 0, 0, '2019-12-03 10:40:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1440, 2, 106, 1, 0, 0, 0, '2020-01-25 09:51:36');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1441, 2, 107, 1, 0, 0, 0, '2020-02-12 07:40:13');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1442, 2, 134, 1, 1, 1, 1, '2020-02-12 07:42:36');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1443, 1, 233, 1, 0, 0, 0, '2020-02-12 07:51:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1444, 2, 86, 1, 0, 0, 0, '2020-02-12 07:52:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1445, 3, 233, 1, 0, 0, 0, '2020-02-12 09:21:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1446, 1, 234, 1, 1, 1, 1, '2020-06-02 03:21:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1447, 1, 235, 1, 1, 1, 1, '2020-05-30 04:47:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1448, 1, 236, 1, 1, 1, 0, '2020-05-30 04:47:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1449, 1, 237, 1, 0, 1, 0, '2020-05-30 04:48:18');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1450, 1, 238, 1, 1, 1, 1, '2020-05-30 04:49:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1451, 1, 239, 1, 1, 1, 1, '2020-05-30 04:52:10');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1452, 2, 236, 1, 1, 1, 0, '2020-05-30 05:10:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1453, 2, 237, 1, 0, 1, 0, '2020-05-30 05:10:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1454, 2, 238, 1, 1, 1, 1, '2020-05-30 05:10:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1455, 2, 239, 1, 1, 1, 1, '2020-05-30 05:10:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1456, 2, 240, 1, 0, 0, 0, '2020-05-29 02:21:18');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1457, 2, 241, 1, 0, 0, 0, '2020-05-29 02:21:18');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1458, 1, 240, 1, 0, 0, 0, '2020-06-08 00:00:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1459, 1, 241, 1, 0, 0, 0, '2020-06-08 00:00:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1460, 1, 242, 1, 0, 0, 0, '2020-06-08 00:00:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1461, 2, 242, 1, 0, 0, 0, '2020-06-12 04:15:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1462, 3, 242, 1, 0, 0, 0, '2020-06-15 04:16:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1463, 6, 242, 1, 0, 0, 0, '2020-06-15 04:18:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1464, 2, 6001, 1, 1, 0, 1, '2021-01-29 09:31:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1465, 1, 6001, 1, 1, 0, 1, '2020-09-23 12:59:22');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1466, 1, 6002, 1, 1, 0, 1, '2020-09-23 13:01:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1467, 1, 6003, 1, 0, 0, 0, '2020-09-23 13:02:06');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1468, 1, 6004, 1, 0, 0, 0, '2020-09-23 13:02:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1469, 1, 6005, 1, 0, 1, 0, '2021-01-29 07:45:05');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1470, 2, 6005, 1, 0, 1, 0, '2021-01-29 11:08:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1471, 2, 6002, 1, 1, 0, 1, '2021-01-29 07:58:48');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1472, 3, 6002, 1, 1, 0, 1, '2021-01-29 07:26:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1473, 3, 6003, 1, 0, 0, 0, '2021-01-29 07:26:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1474, 3, 6005, 1, 0, 1, 0, '2021-01-29 07:26:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1475, 4, 6001, 1, 1, 0, 1, '2021-01-29 07:26:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1476, 4, 6002, 1, 1, 0, 1, '2021-01-29 07:26:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1477, 6, 6001, 1, 1, 0, 1, '2021-01-29 07:27:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1478, 6, 6002, 1, 1, 0, 1, '2021-01-29 07:27:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1479, 6, 6005, 1, 0, 1, 0, '2021-01-29 07:27:32');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1480, 2, 6003, 1, 0, 0, 0, '2021-01-29 09:31:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1481, 2, 6004, 1, 0, 0, 0, '2021-01-29 09:31:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1482, 1, 5005, 1, 0, 0, 0, '2020-06-14 12:42:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1483, 2, 5005, 1, 0, 0, 0, '2020-06-14 12:59:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1484, 3, 5004, 1, 0, 0, 0, '2020-06-14 13:03:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1485, 1, 5004, 1, 0, 0, 0, '2020-06-14 12:42:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1486, 6, 5003, 1, 0, 0, 0, '2020-06-14 13:05:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1487, 4, 5003, 1, 0, 0, 0, '2020-06-14 13:05:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1488, 3, 5003, 1, 1, 0, 1, '2020-06-14 13:03:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1489, 2, 5003, 1, 1, 0, 1, '2020-06-14 12:59:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1490, 1, 5003, 1, 1, 0, 1, '2020-06-14 12:42:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1491, 2, 5002, 1, 1, 0, 1, '2020-06-14 12:59:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1492, 1, 5002, 1, 1, 0, 1, '2020-06-14 12:42:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1493, 1, 5001, 1, 0, 1, 0, '2020-06-14 12:42:11');


#
# TABLE STRUCTURE FOR: room_types
#

DROP TABLE IF EXISTS `room_types`;

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `room_types` (`id`, `room_type`, `description`, `created_at`, `updated_at`) VALUES (1, 'Normal', 'Room For 4', '2021-10-20 17:02:30', NULL);


#
# TABLE STRUCTURE FOR: sch_settings
#

DROP TABLE IF EXISTS `sch_settings`;

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `biometric` int(11) DEFAULT '0',
  `biometric_device` text,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  `lang_id` int(11) DEFAULT NULL,
  `languages` varchar(500) NOT NULL,
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(255) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `is_duplicate_fees_invoice` int(1) DEFAULT '0',
  `timezone` varchar(30) DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `cron_secret_key` varchar(100) NOT NULL,
  `currency_place` varchar(50) NOT NULL DEFAULT 'before_number',
  `class_teacher` varchar(100) NOT NULL,
  `start_month` varchar(40) NOT NULL,
  `attendence_type` int(10) NOT NULL DEFAULT '0',
  `image` varchar(100) DEFAULT NULL,
  `admin_logo` varchar(255) NOT NULL,
  `admin_small_logo` varchar(255) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `fee_due_days` int(3) DEFAULT '0',
  `adm_auto_insert` int(1) NOT NULL DEFAULT '1',
  `adm_prefix` varchar(50) NOT NULL DEFAULT 'ssadm19/20',
  `adm_start_from` varchar(11) NOT NULL,
  `adm_no_digit` int(10) NOT NULL DEFAULT '6',
  `adm_update_status` int(11) NOT NULL DEFAULT '0',
  `staffid_auto_insert` int(11) NOT NULL DEFAULT '1',
  `staffid_prefix` varchar(100) NOT NULL DEFAULT 'staffss/19/20',
  `staffid_start_from` varchar(50) NOT NULL,
  `staffid_no_digit` int(11) NOT NULL DEFAULT '6',
  `staffid_update_status` int(11) NOT NULL DEFAULT '0',
  `is_active` varchar(255) DEFAULT 'no',
  `online_admission` int(1) DEFAULT '0',
  `is_blood_group` int(10) NOT NULL DEFAULT '1',
  `is_student_house` int(10) NOT NULL DEFAULT '1',
  `roll_no` int(11) NOT NULL DEFAULT '1',
  `category` int(11) NOT NULL,
  `religion` int(11) NOT NULL DEFAULT '1',
  `cast` int(11) NOT NULL DEFAULT '1',
  `mobile_no` int(11) NOT NULL DEFAULT '1',
  `student_email` int(11) NOT NULL DEFAULT '1',
  `admission_date` int(11) NOT NULL DEFAULT '1',
  `lastname` int(11) NOT NULL,
  `student_photo` int(11) NOT NULL DEFAULT '1',
  `student_height` int(11) NOT NULL DEFAULT '1',
  `student_weight` int(11) NOT NULL DEFAULT '1',
  `measurement_date` int(11) NOT NULL DEFAULT '1',
  `father_name` int(11) NOT NULL DEFAULT '1',
  `father_phone` int(11) NOT NULL DEFAULT '1',
  `father_occupation` int(11) NOT NULL DEFAULT '1',
  `father_pic` int(11) NOT NULL DEFAULT '1',
  `mother_name` int(11) NOT NULL DEFAULT '1',
  `mother_phone` int(11) NOT NULL DEFAULT '1',
  `mother_occupation` int(11) NOT NULL DEFAULT '1',
  `mother_pic` int(11) NOT NULL DEFAULT '1',
  `guardian_relation` int(11) NOT NULL DEFAULT '1',
  `guardian_email` int(11) NOT NULL DEFAULT '1',
  `guardian_pic` int(11) NOT NULL DEFAULT '1',
  `guardian_address` int(11) NOT NULL DEFAULT '1',
  `current_address` int(11) NOT NULL DEFAULT '1',
  `permanent_address` int(11) NOT NULL DEFAULT '1',
  `route_list` int(11) NOT NULL DEFAULT '1',
  `hostel_id` int(11) NOT NULL DEFAULT '1',
  `bank_account_no` int(11) NOT NULL DEFAULT '1',
  `national_identification_no` int(11) NOT NULL DEFAULT '1',
  `local_identification_no` int(11) NOT NULL DEFAULT '1',
  `rte` int(11) NOT NULL DEFAULT '1',
  `previous_school_details` int(11) NOT NULL DEFAULT '1',
  `student_note` int(11) NOT NULL DEFAULT '1',
  `upload_documents` int(11) NOT NULL DEFAULT '1',
  `staff_designation` int(11) NOT NULL DEFAULT '1',
  `staff_department` int(11) NOT NULL DEFAULT '1',
  `staff_last_name` int(11) NOT NULL DEFAULT '1',
  `staff_father_name` int(11) NOT NULL DEFAULT '1',
  `staff_mother_name` int(11) NOT NULL DEFAULT '1',
  `staff_date_of_joining` int(11) NOT NULL DEFAULT '1',
  `staff_phone` int(11) NOT NULL DEFAULT '1',
  `staff_emergency_contact` int(11) NOT NULL DEFAULT '1',
  `staff_marital_status` int(11) NOT NULL DEFAULT '1',
  `staff_photo` int(11) NOT NULL DEFAULT '1',
  `staff_current_address` int(11) NOT NULL DEFAULT '1',
  `staff_permanent_address` int(11) NOT NULL DEFAULT '1',
  `staff_qualification` int(11) NOT NULL DEFAULT '1',
  `staff_work_experience` int(11) NOT NULL DEFAULT '1',
  `staff_note` int(11) NOT NULL DEFAULT '1',
  `staff_epf_no` int(11) NOT NULL DEFAULT '1',
  `staff_basic_salary` int(11) NOT NULL DEFAULT '1',
  `staff_contract_type` int(11) NOT NULL DEFAULT '1',
  `staff_work_shift` int(11) NOT NULL DEFAULT '1',
  `staff_work_location` int(11) NOT NULL DEFAULT '1',
  `staff_leaves` int(11) NOT NULL DEFAULT '1',
  `staff_account_details` int(11) NOT NULL DEFAULT '1',
  `staff_social_media` int(11) NOT NULL DEFAULT '1',
  `staff_upload_documents` int(11) NOT NULL DEFAULT '1',
  `mobile_api_url` tinytext NOT NULL,
  `app_primary_color_code` varchar(20) DEFAULT NULL,
  `app_secondary_color_code` varchar(20) DEFAULT NULL,
  `app_logo` varchar(250) DEFAULT NULL,
  `zoom_api_key` varchar(100) DEFAULT NULL,
  `zoom_api_secret` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sch_settings` (`id`, `name`, `biometric`, `biometric_device`, `email`, `phone`, `address`, `lang_id`, `languages`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `is_duplicate_fees_invoice`, `timezone`, `session_id`, `cron_secret_key`, `currency_place`, `class_teacher`, `start_month`, `attendence_type`, `image`, `admin_logo`, `admin_small_logo`, `theme`, `fee_due_days`, `adm_auto_insert`, `adm_prefix`, `adm_start_from`, `adm_no_digit`, `adm_update_status`, `staffid_auto_insert`, `staffid_prefix`, `staffid_start_from`, `staffid_no_digit`, `staffid_update_status`, `is_active`, `online_admission`, `is_blood_group`, `is_student_house`, `roll_no`, `category`, `religion`, `cast`, `mobile_no`, `student_email`, `admission_date`, `lastname`, `student_photo`, `student_height`, `student_weight`, `measurement_date`, `father_name`, `father_phone`, `father_occupation`, `father_pic`, `mother_name`, `mother_phone`, `mother_occupation`, `mother_pic`, `guardian_relation`, `guardian_email`, `guardian_pic`, `guardian_address`, `current_address`, `permanent_address`, `route_list`, `hostel_id`, `bank_account_no`, `national_identification_no`, `local_identification_no`, `rte`, `previous_school_details`, `student_note`, `upload_documents`, `staff_designation`, `staff_department`, `staff_last_name`, `staff_father_name`, `staff_mother_name`, `staff_date_of_joining`, `staff_phone`, `staff_emergency_contact`, `staff_marital_status`, `staff_photo`, `staff_current_address`, `staff_permanent_address`, `staff_qualification`, `staff_work_experience`, `staff_note`, `staff_epf_no`, `staff_basic_salary`, `staff_contract_type`, `staff_work_shift`, `staff_work_location`, `staff_leaves`, `staff_account_details`, `staff_social_media`, `staff_upload_documents`, `mobile_api_url`, `app_primary_color_code`, `app_secondary_color_code`, `app_logo`, `zoom_api_key`, `zoom_api_secret`, `created_at`, `updated_at`) VALUES (1, 'SDH Smart School', 0, '', 'yourschoolemail@domain.com', 'Your School Phone', 'SDH Smart School', 4, '[\"4\"]', 'SDH Smart School', 'd-m-Y', '12-hour', 'INR', '₹', 'disabled', 0, 'Asia/Kolkata', 15, 'WG128ttGwW60apLxnxPP7kV2a', 'after_number', 'yes', '4', 0, '1.png', 'ww_logo.png', 'ww_favicon.png', 'default.jpg', 60, 0, 'School-', '000001', 6, 1, 0, '', '', 0, 1, 'no', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', '#424242', '#eeeeee', '1.png', 'W81CKZx_ShW7_7mIzsU4Ng', 'ioazt8apQxvxMoCK8bqkDMQHewk067SpbJN8', '2021-11-12 04:29:24', NULL);


#
# TABLE STRUCTURE FOR: school_houses
#

DROP TABLE IF EXISTS `school_houses`;

CREATE TABLE `school_houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_name` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (1, 'tulip', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (2, 'tulip', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (3, 'tet', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (4, 'tet', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (5, 'checvk', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (6, 'checvk', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (7, 'checvk', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (8, 'tulip', '', 'yes');


#
# TABLE STRUCTURE FOR: sections
#

DROP TABLE IF EXISTS `sections`;

CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'A', 'no', '2021-11-12 02:51:46', NULL);
INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'B', 'no', '2021-11-12 02:51:52', NULL);
INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'C', 'no', '2021-11-12 02:51:57', NULL);
INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'D', 'no', '2021-11-12 02:51:40', NULL);


#
# TABLE STRUCTURE FOR: send_notification
#

DROP TABLE IF EXISTS `send_notification`;

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text,
  `visible_student` varchar(10) NOT NULL DEFAULT 'no',
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `send_notification` (`id`, `title`, `publish_date`, `date`, `message`, `visible_student`, `visible_staff`, `visible_parent`, `created_by`, `created_id`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'New Message', '2021-11-15', '2021-11-15', '<p>\r\n\r\nNew Message\r\n\r\n\r\n\r\nNew Message\r\n\r\n\r\n\r\nNew Message\r\n\r\n\r\n\r\nNew Message\r\n\r\n\r\n\r\nNew Message\r\n\r\n\r\n\r\nNew Message\r\n\r\n<br></p>', 'Yes', 'Yes', 'Yes', 'Super Admin', 1, 'no', '2021-11-14 23:18:10', NULL);


#
# TABLE STRUCTURE FOR: sessions
#

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (7, '2016-17', 'no', '2017-04-20 12:12:19', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (11, '2017-18', 'no', '2017-04-20 12:11:37', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (13, '2018-19', 'no', '2016-08-25 00:56:44', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (14, '2019-20', 'no', '2016-08-25 00:56:55', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (15, '2020-21', 'no', '2016-10-01 10:58:08', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (16, '2021-22', 'no', '2016-10-01 10:58:20', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (18, '2022-23', 'no', '2016-10-01 10:59:02', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (19, '2023-24', 'no', '2016-10-01 10:59:10', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (20, '2024-25', 'no', '2016-10-01 10:59:18', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (21, '2025-26', 'no', '2016-10-01 11:00:10', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (22, '2026-27', 'no', '2016-10-01 11:00:18', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (23, '2027-28', 'no', '2016-10-01 11:00:24', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (24, '2028-29', 'no', '2016-10-01 11:00:30', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (25, '2029-30', 'no', '2016-10-01 11:00:37', '0000-00-00');


#
# TABLE STRUCTURE FOR: sms_config
#

DROP TABLE IF EXISTS `sms_config`;

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: source
#

DROP TABLE IF EXISTS `source`;

CREATE TABLE `source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `source` (`id`, `source`, `description`) VALUES (1, 'Complain Source1', '');
INSERT INTO `source` (`id`, `source`, `description`) VALUES (2, 'Complain Source2', '');


#
# TABLE STRUCTURE FOR: staff
#

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `department` int(11) DEFAULT '0',
  `designation` int(11) DEFAULT '0',
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `zoom_api_key` varchar(100) DEFAULT NULL,
  `zoom_api_secret` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `zoom_api_key`, `zoom_api_secret`) VALUES (1, '9000', 0, 0, 0, '', '', 'Super Admin', '', '', '', '', '', 'gursharan.smartdesignhut@gmail.com', '2020-01-01', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$5H8IY9bHV5bw6vF7z8oRue6kxD3jxTgIC39LaCFdjgBj47.LLsUuC', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, NULL);
INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `zoom_api_key`, `zoom_api_secret`) VALUES (9, 'S-02', 0, 1, 1, 'gdsfgdsfg', 'dsfgdf', 'Tanveer Singh', 'Singh', 'Baljeet Singh', 'Swaraj Kaur', '7894566132', '2314578', 'gursharan.dfr@gmail.com', '1989-06-26', 'Single', '2021-07-15', '0000-00-00', 'sector 88', 'sector 88', 'gdfsgdsfg', '', '$2y$10$Kqi2Fskv0KzRFCzEfIyf..RQSrsOpjZqdl0TIv84lAHJ0hXhBg6Pu', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, NULL);
INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `zoom_api_key`, `zoom_api_secret`) VALUES (10, '001', 0, 1, 1, 'MCA', '10 years', 'Shashi', 'Pal', 'Jagdish Chand', 'tara devi', '7814315878', '', 'shashi.smartdesignhut@gmail.com', '1987-07-19', 'Married', '2019-02-20', '0000-00-00', 'Current Address Current Address Current Address', 'Permanent Address Permanent Address Permanent Address', 'Note Note Note Note Note Note', '10.jpg', '$2y$10$bQSrELfOVAl0AVF8Vv/VpOckB160nmQcnoFUJizykwiKO.iCWZgva', 'Male', 'Sbi', '11056454164', 'SBI', 'SBI00001', '', '', '10000', '', 'permanent', '', '', 'https://www.facebook.com/', 'https://www.twitter .com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', '', 'joining_letter10.docx', '', 'Other Document', '', 0, 1, '', NULL, NULL);
INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `zoom_api_key`, `zoom_api_secret`) VALUES (11, '0001', 0, 1, 2, '', '', 'Library', 'Library', 'Library', 'Library', '', '', 'Library@gmail.com', '2019-07-08', '', '2021-11-08', '0000-00-00', '', '', '', '', '$2y$10$mMAnpPtM5eE6JTz2jqgACOfGYwu3gIMHJpZ.Yn1.dEtJepa8poeTG', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, NULL);


#
# TABLE STRUCTURE FOR: staff_attendance
#

DROP TABLE IF EXISTS `staff_attendance`;

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `staff_attendance_type_id` int(11) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staff_attendance_staff` (`staff_id`),
  KEY `FK_staff_attendance_staff_attendance_type` (`staff_attendance_type_id`),
  CONSTRAINT `FK_staff_attendance_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_staff_attendance_staff_attendance_type` FOREIGN KEY (`staff_attendance_type_id`) REFERENCES `staff_attendance_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `staff_attendance` (`id`, `date`, `staff_id`, `staff_attendance_type_id`, `remark`, `is_active`, `created_at`, `updated_at`) VALUES (1, '2021-11-01', 9, 1, '', 0, '0000-00-00 00:00:00', NULL);
INSERT INTO `staff_attendance` (`id`, `date`, `staff_id`, `staff_attendance_type_id`, `remark`, `is_active`, `created_at`, `updated_at`) VALUES (2, '2021-11-01', 10, 3, '', 0, '0000-00-00 00:00:00', NULL);


#
# TABLE STRUCTURE FOR: staff_attendance_type
#

DROP TABLE IF EXISTS `staff_attendance_type`;

CREATE TABLE `staff_attendance_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00');
INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00');
INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00');
INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2018-05-07 07:26:16', '0000-00-00');
INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Holiday', 'H', 'yes', '0000-00-00 00:00:00', '0000-00-00');


#
# TABLE STRUCTURE FOR: staff_designation
#

DROP TABLE IF EXISTS `staff_designation`;

CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`) VALUES (1, 'Lecturer', 'yes');
INSERT INTO `staff_designation` (`id`, `designation`, `is_active`) VALUES (2, 'Library', 'yes');


#
# TABLE STRUCTURE FOR: staff_leave_details
#

DROP TABLE IF EXISTS `staff_leave_details`;

CREATE TABLE `staff_leave_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `alloted_leave` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staff_leave_details_staff` (`staff_id`),
  KEY `FK_staff_leave_details_leave_types` (`leave_type_id`),
  CONSTRAINT `FK_staff_leave_details_leave_types` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_staff_leave_details_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `staff_leave_details` (`id`, `staff_id`, `leave_type_id`, `alloted_leave`) VALUES (1, 10, 1, '10');
INSERT INTO `staff_leave_details` (`id`, `staff_id`, `leave_type_id`, `alloted_leave`) VALUES (2, 10, 2, '5');


#
# TABLE STRUCTURE FOR: staff_leave_request
#

DROP TABLE IF EXISTS `staff_leave_request`;

CREATE TABLE `staff_leave_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int(11) NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `applied_by` varchar(200) NOT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staff_leave_request_staff` (`staff_id`),
  KEY `FK_staff_leave_request_leave_types` (`leave_type_id`),
  CONSTRAINT `FK_staff_leave_request_leave_types` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`),
  CONSTRAINT `FK_staff_leave_request_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `staff_leave_request` (`id`, `staff_id`, `leave_type_id`, `leave_from`, `leave_to`, `leave_days`, `employee_remark`, `admin_remark`, `status`, `applied_by`, `document_file`, `date`) VALUES (1, 10, 1, '2021-11-11', '2021-11-11', 1, '', '', 'approve', 'Shashi Pal', '', '2021-11-11');


#
# TABLE STRUCTURE FOR: staff_payroll
#

DROP TABLE IF EXISTS `staff_payroll`;

CREATE TABLE `staff_payroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `basic_salary` int(11) NOT NULL,
  `pay_scale` varchar(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: staff_payslip
#

DROP TABLE IF EXISTS `staff_payslip`;

CREATE TABLE `staff_payslip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `basic` int(11) NOT NULL,
  `total_allowance` int(11) NOT NULL,
  `total_deduction` int(11) NOT NULL,
  `leave_deduction` int(11) NOT NULL,
  `tax` varchar(200) NOT NULL,
  `net_salary` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staff_payslip_staff` (`staff_id`),
  CONSTRAINT `FK_staff_payslip_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `staff_payslip` (`id`, `staff_id`, `basic`, `total_allowance`, `total_deduction`, `leave_deduction`, `tax`, `net_salary`, `status`, `month`, `year`, `payment_mode`, `payment_date`, `remark`) VALUES (1, 10, 10000, 500, 0, 0, '0', 15000, 'paid', 'January', '2021', 'online', '2021-11-11', '');


#
# TABLE STRUCTURE FOR: staff_rating
#

DROP TABLE IF EXISTS `staff_rating`;

CREATE TABLE `staff_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 decline, 1 Approve',
  `entrydt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_staff_rating_staff` (`staff_id`),
  CONSTRAINT `FK_staff_rating_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `staff_rating` (`id`, `staff_id`, `comment`, `rate`, `user_id`, `role`, `status`, `entrydt`) VALUES (1, 9, 'fghf', 5, 5, 'student', 1, '2021-11-14 23:38:47');


#
# TABLE STRUCTURE FOR: staff_roles
#

DROP TABLE IF EXISTS `staff_roles`;

CREATE TABLE `staff_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `FK_staff_roles_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_staff_roles_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES (1, 7, 1, 0, '2021-09-04 09:50:03', NULL);
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES (2, 2, 9, 0, '2021-10-22 10:41:21', NULL);
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES (3, 2, 10, 0, '2021-11-11 05:21:51', NULL);
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES (4, 4, 11, 0, '2021-11-15 00:02:42', NULL);


#
# TABLE STRUCTURE FOR: staff_timeline
#

DROP TABLE IF EXISTS `staff_timeline`;

CREATE TABLE `staff_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(300) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_staff_timeline_staff` (`staff_id`),
  CONSTRAINT `FK_staff_timeline_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_applyleave
#

DROP TABLE IF EXISTS `student_applyleave`;

CREATE TABLE `student_applyleave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `apply_date` date NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `docs` text NOT NULL,
  `reason` text NOT NULL,
  `approve_by` int(11) NOT NULL,
  `request_type` int(11) NOT NULL COMMENT '0 student,1 staff',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (1, 4, '2021-11-15', '2021-11-15', '2021-11-12', 1, '2021-11-12 04:36:52', '1.png', 'I have no Reason.', 10, 1);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (2, 4, '2021-11-13', '2021-11-13', '2021-11-12', 0, '2021-11-12 04:35:38', '', 'Test Reason', 0, 0);


#
# TABLE STRUCTURE FOR: student_attendences
#

DROP TABLE IF EXISTS `student_attendences`;

CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `biometric_attendence` int(1) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `biometric_device_data` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `attendence_type_id` (`attendence_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `student_attendences` (`id`, `student_session_id`, `biometric_attendence`, `date`, `attendence_type_id`, `remark`, `biometric_device_data`, `is_active`, `created_at`, `updated_at`) VALUES (1, 5, 0, '2021-11-12', 1, '', NULL, 'no', '2021-11-12 05:38:46', NULL);
INSERT INTO `student_attendences` (`id`, `student_session_id`, `biometric_attendence`, `date`, `attendence_type_id`, `remark`, `biometric_device_data`, `is_active`, `created_at`, `updated_at`) VALUES (2, 5, 0, '2021-11-11', 1, '', NULL, 'no', '2021-11-12 05:39:18', NULL);
INSERT INTO `student_attendences` (`id`, `student_session_id`, `biometric_attendence`, `date`, `attendence_type_id`, `remark`, `biometric_device_data`, `is_active`, `created_at`, `updated_at`) VALUES (3, 5, 0, '2020-01-31', 1, '', NULL, 'no', '2021-11-12 05:39:47', NULL);
INSERT INTO `student_attendences` (`id`, `student_session_id`, `biometric_attendence`, `date`, `attendence_type_id`, `remark`, `biometric_device_data`, `is_active`, `created_at`, `updated_at`) VALUES (4, 5, 0, '2021-11-15', 1, '', NULL, 'no', '2021-11-14 21:18:24', NULL);
INSERT INTO `student_attendences` (`id`, `student_session_id`, `biometric_attendence`, `date`, `attendence_type_id`, `remark`, `biometric_device_data`, `is_active`, `created_at`, `updated_at`) VALUES (5, 5, 0, '2021-11-13', 1, '', NULL, 'no', '2021-11-14 21:19:24', NULL);


#
# TABLE STRUCTURE FOR: student_doc
#

DROP TABLE IF EXISTS `student_doc`;

CREATE TABLE `student_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_fees
#

DROP TABLE IF EXISTS `student_fees`;

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text,
  `date` date DEFAULT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_fees_deposite
#

DROP TABLE IF EXISTS `student_fees_deposite`;

CREATE TABLE `student_fees_deposite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_fees_master_id` (`student_fees_master_id`),
  KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_fees_discounts
#

DROP TABLE IF EXISTS `student_fees_discounts`;

CREATE TABLE `student_fees_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fees_discount_id` (`fees_discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_fees_master
#

DROP TABLE IF EXISTS `student_fees_master`;

CREATE TABLE `student_fees_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_system` int(1) NOT NULL DEFAULT '0',
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT '0.00',
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fee_session_group_id` (`fee_session_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_session
#

DROP TABLE IF EXISTS `student_session`;

CREATE TABLE `student_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT '0.00',
  `fees_discount` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` varchar(255) DEFAULT 'no',
  `is_alumni` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `student_id` (`student_id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`),
  CONSTRAINT `student_session_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_session_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_session_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_session_ibfk_4` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `is_alumni`, `created_at`, `updated_at`) VALUES (5, 15, 3, 5, 1, 0, 0, NULL, '0.00', '0.00', 'no', 0, '2021-11-14 22:24:24', NULL);


#
# TABLE STRUCTURE FOR: student_sibling
#

DROP TABLE IF EXISTS `student_sibling`;

CREATE TABLE `student_sibling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_subject_attendances
#

DROP TABLE IF EXISTS `student_subject_attendances`;

CREATE TABLE `student_subject_attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `subject_timetable_id` int(11) DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `attendence_type_id` (`attendence_type_id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `subject_timetable_id` (`subject_timetable_id`),
  CONSTRAINT `student_subject_attendances_ibfk_1` FOREIGN KEY (`attendence_type_id`) REFERENCES `attendence_type` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_subject_attendances_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_subject_attendances_ibfk_3` FOREIGN KEY (`subject_timetable_id`) REFERENCES `subject_timetable` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: student_timeline
#

DROP TABLE IF EXISTS `student_timeline`;

CREATE TABLE `student_timeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: students
#

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text,
  `permanent_address` text,
  `category_id` varchar(100) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text,
  `guardian_email` varchar(100) DEFAULT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `previous_school` text,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `measurement_date` date NOT NULL,
  `dis_reason` int(11) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `dis_note` text NOT NULL,
  `app_key` text,
  `parent_app_key` text,
  `disable_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `leave_date`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES (1, 2, 'School-000001', '', '2021-09-24', 'Rakesh', 'Kumar', 'No', 'uploads/student_images/1.png', '', '', NULL, NULL, NULL, 'Hindu', 'Kumar', '2016-01-31', 'Male', '', '', '', 0, 1, 'A+', 0, 0, '', '', '', '', '', 'father', '', '', '', 'dsadasd', '', '', 'Ramesh Kumar', 'Father', '987654321', '', '', 'gs02.calligraphyindia@gmail.com', '', '', '', 'yes', '', '125', '32', '2021-09-24', 0, '', NULL, '', NULL, NULL, '0000-00-00', '2021-10-28 04:17:53', NULL);
INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `leave_date`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES (2, 4, 'School-000002', '', '2021-09-24', 'gdfgd', 'fgdfgdsfg', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2019-09-24', 'Male', '', '', '', 0, 0, '', 0, 0, '', '', '', '', '', 'father', '', '', '', '', '', '', 'dfgdfg', 'Father', 'ggdfsgdfgfdg', '', '', '', '', '', '', 'yes', '', '', '', '2021-09-24', 0, '', NULL, '', NULL, NULL, '0000-00-00', '2021-09-24 16:36:46', NULL);
INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `leave_date`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES (3, 6, '001', '100', '2021-09-01', 'test', 'tsr', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2010-02-02', 'Male', '', '', '1', 0, 0, '', 0, 0, '', '', '', '', '', 'father', 'fatehe', '89798798', 'nbxzc', 'zxc', '6564654654', 'zxczxc', 'fatehe', 'Father', '89798798', 'nbxzc', 'zxczxc', 'zzzzz@zczc', '', '', '', 'yes', '', '', '', '2021-11-12', 0, '', NULL, '', NULL, NULL, '0000-00-00', '2021-11-12 03:33:18', NULL);


#
# TABLE STRUCTURE FOR: students_leaved
#

DROP TABLE IF EXISTS `students_leaved`;

CREATE TABLE `students_leaved` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `current_email` varchar(255) NOT NULL,
  `current_phone` varchar(255) NOT NULL,
  `occupation` text NOT NULL,
  `address` text NOT NULL,
  `studentid` int(11) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `created_at` date DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

INSERT INTO `students_leaved` (`id`, `current_email`, `current_phone`, `occupation`, `address`, `studentid`, `reason`, `created_at`, `name`) VALUES (1, 'Email@gmail.com', '9616161', 'asdsada', ' dsfsdf', 1, 'assadsad', '2021-11-18', 'Rakesh Kumar');


#
# TABLE STRUCTURE FOR: subject_group_class_sections
#

DROP TABLE IF EXISTS `subject_group_class_sections`;

CREATE TABLE `subject_group_class_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_group_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `description` text,
  `is_active` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `subject_group_id` (`subject_group_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `subject_group_class_sections_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_class_sections_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_class_sections_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (4, 1, 16, 15, NULL, 0, '2021-11-12 03:05:34', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (5, 1, 17, 15, NULL, 0, '2021-11-12 03:05:34', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (6, 1, 18, 15, NULL, 0, '2021-11-12 03:05:34', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (7, 2, 19, 15, NULL, 0, '2021-11-12 03:06:13', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (8, 2, 20, 15, NULL, 0, '2021-11-12 03:06:13', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (9, 2, 21, 15, NULL, 0, '2021-11-12 03:06:13', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (10, 3, 22, 15, NULL, 0, '2021-11-12 03:06:28', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (11, 3, 23, 15, NULL, 0, '2021-11-12 03:06:28', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (12, 3, 24, 15, NULL, 0, '2021-11-12 03:06:28', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (13, 4, 8, 15, NULL, 0, '2021-11-12 03:06:49', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (14, 4, 9, 15, NULL, 0, '2021-11-12 03:06:49', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (15, 4, 10, 15, NULL, 0, '2021-11-12 03:06:49', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (16, 5, 11, 15, NULL, 0, '2021-11-12 03:07:01', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (17, 5, 12, 15, NULL, 0, '2021-11-12 03:07:01', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (18, 6, 13, 15, NULL, 0, '2021-11-12 03:07:18', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (19, 6, 14, 15, NULL, 0, '2021-11-12 03:07:18', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (20, 6, 15, 15, NULL, 0, '2021-11-12 03:07:18', NULL);


#
# TABLE STRUCTURE FOR: subject_group_subjects
#

DROP TABLE IF EXISTS `subject_group_subjects`;

CREATE TABLE `subject_group_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_group_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `subject_group_id` (`subject_group_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `subject_group_subjects_ibfk_1` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_subjects_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_subjects_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (1, 1, 15, 1, '2021-10-20 15:21:00');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (2, 1, 15, 2, '2021-11-12 03:05:34');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (3, 1, 15, 3, '2021-11-12 03:05:34');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (4, 1, 15, 4, '2021-11-12 03:05:34');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (5, 1, 15, 5, '2021-11-12 03:05:34');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (6, 1, 15, 6, '2021-11-12 03:05:34');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (7, 2, 15, 1, '2021-11-12 03:06:13');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (8, 2, 15, 2, '2021-11-12 03:06:13');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (9, 2, 15, 3, '2021-11-12 03:06:13');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (10, 2, 15, 4, '2021-11-12 03:06:13');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (11, 2, 15, 5, '2021-11-12 03:06:13');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (12, 2, 15, 6, '2021-11-12 03:06:13');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (13, 3, 15, 1, '2021-11-12 03:06:28');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (14, 3, 15, 2, '2021-11-12 03:06:28');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (15, 3, 15, 3, '2021-11-12 03:06:28');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (16, 4, 15, 1, '2021-11-12 03:06:49');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (17, 4, 15, 2, '2021-11-12 03:06:49');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (18, 4, 15, 3, '2021-11-12 03:06:49');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (19, 5, 15, 5, '2021-11-12 03:07:01');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (20, 5, 15, 6, '2021-11-12 03:07:01');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (21, 6, 15, 2, '2021-11-12 03:07:18');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (22, 6, 15, 4, '2021-11-12 03:07:18');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (23, 6, 15, 6, '2021-11-12 03:07:18');


#
# TABLE STRUCTURE FOR: subject_groups
#

DROP TABLE IF EXISTS `subject_groups`;

CREATE TABLE `subject_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `subject_groups_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES (1, 'class 1', '', 15, '2021-10-20 15:21:00');
INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES (2, 'class 2', '', 15, '2021-11-12 03:06:13');
INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES (3, 'class 3', '', 15, '2021-11-12 03:06:28');
INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES (4, 'Nursery', '', 15, '2021-11-12 03:06:49');
INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES (5, 'LKG', '', 15, '2021-11-12 03:07:01');
INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES (6, 'UKG', '', 15, '2021-11-12 03:07:18');


#
# TABLE STRUCTURE FOR: subject_syllabus
#

DROP TABLE IF EXISTS `subject_syllabus`;

CREATE TABLE `subject_syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_for` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_from` varchar(255) NOT NULL,
  `time_to` varchar(255) NOT NULL,
  `presentation` text NOT NULL,
  `attachment` text NOT NULL,
  `lacture_youtube_url` varchar(255) NOT NULL,
  `lacture_video` varchar(255) NOT NULL,
  `sub_topic` text NOT NULL,
  `teaching_method` text NOT NULL,
  `general_objectives` text NOT NULL,
  `previous_knowledge` text NOT NULL,
  `comprehensive_questions` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `session_id` (`session_id`),
  KEY `created_by` (`created_by`),
  KEY `created_for` (`created_for`),
  CONSTRAINT `subject_syllabus_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_syllabus_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_syllabus_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_syllabus_ibfk_4` FOREIGN KEY (`created_for`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `subject_syllabus` (`id`, `topic_id`, `session_id`, `created_by`, `created_for`, `date`, `time_from`, `time_to`, `presentation`, `attachment`, `lacture_youtube_url`, `lacture_video`, `sub_topic`, `teaching_method`, `general_objectives`, `previous_knowledge`, `comprehensive_questions`, `status`, `created_at`) VALUES (1, 1, 15, 10, 10, '2021-11-08', '9:00 AM', '9:30 AM', '', '', '', '', '', 'Teaching Method test', 'Objectives test', 'Knowledge test', 'No Questions', 0, '2021-11-12 03:55:02');


#
# TABLE STRUCTURE FOR: subject_timetable
#

DROP TABLE IF EXISTS `subject_timetable`;

CREATE TABLE `subject_timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(20) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `time_from` varchar(20) DEFAULT NULL,
  `time_to` varchar(20) DEFAULT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`),
  KEY `subject_group_id` (`subject_group_id`),
  KEY `subject_group_subject_id` (`subject_group_subject_id`),
  KEY `staff_id` (`staff_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `subject_timetable_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_timetable_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_timetable_ibfk_3` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_timetable_ibfk_4` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_timetable_ibfk_5` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_timetable_ibfk_6` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `subject_timetable` (`id`, `day`, `class_id`, `section_id`, `subject_group_id`, `subject_group_subject_id`, `staff_id`, `time_from`, `time_to`, `room_no`, `session_id`, `created_at`) VALUES (1, 'Monday', 5, 1, 4, 16, 10, '9:00 AM', '9:30 AM', '001', 15, '2021-11-12 03:09:09');
INSERT INTO `subject_timetable` (`id`, `day`, `class_id`, `section_id`, `subject_group_id`, `subject_group_subject_id`, `staff_id`, `time_from`, `time_to`, `room_no`, `session_id`, `created_at`) VALUES (2, 'Monday', 5, 1, 4, 17, 9, '10:00 AM', '11:00 AM', '001', 15, '2021-11-12 03:10:05');


#
# TABLE STRUCTURE FOR: subjects
#

DROP TABLE IF EXISTS `subjects`;

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Maths', 'Sub-01', 'theory', 'no', '2021-11-12 03:01:53', NULL);
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Science', 'Sub-02', 'theory', 'no', '2021-11-12 03:02:09', NULL);
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Social Science', 'Sub-03', 'theory', 'no', '2021-11-12 03:02:26', NULL);
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Physical Education', 'Sub-04', 'theory', 'no', '2021-11-12 03:02:41', NULL);
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Computer', 'Sub-05', 'theory', 'no', '2021-11-12 03:03:04', NULL);
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'Drawing', 'Sub-06', 'practical', 'no', '2021-11-12 03:04:13', NULL);


#
# TABLE STRUCTURE FOR: submit_assignment
#

DROP TABLE IF EXISTS `submit_assignment`;

CREATE TABLE `submit_assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `docs` varchar(225) NOT NULL,
  `file_name` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `submit_assignment` (`id`, `homework_id`, `student_id`, `message`, `docs`, `file_name`, `created_at`) VALUES (1, 2, 3, 'Homework done', 'e7280c586f8bec4c476bdb48c53b9789.png', 'image_2021_11_12T09_10_22_815Z.png', '2021-11-14 23:45:13');


#
# TABLE STRUCTURE FOR: teacher_subjects
#

DROP TABLE IF EXISTS `teacher_subjects`;

CREATE TABLE `teacher_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  KEY `teacher_id` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: template_admitcards
#

DROP TABLE IF EXISTS `template_admitcards`;

CREATE TABLE `template_admitcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(250) DEFAULT NULL,
  `heading` text,
  `title` text,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `sign` varchar(200) DEFAULT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `is_name` int(1) NOT NULL DEFAULT '1',
  `is_father_name` int(1) NOT NULL DEFAULT '1',
  `is_mother_name` int(1) NOT NULL DEFAULT '1',
  `is_dob` int(1) NOT NULL DEFAULT '1',
  `is_admission_no` int(1) NOT NULL DEFAULT '1',
  `is_roll_no` int(1) NOT NULL DEFAULT '1',
  `is_address` int(1) NOT NULL DEFAULT '1',
  `is_gender` int(1) NOT NULL DEFAULT '1',
  `is_photo` int(11) NOT NULL,
  `is_class` int(11) NOT NULL DEFAULT '0',
  `is_section` int(11) NOT NULL DEFAULT '0',
  `content_footer` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `template_admitcards` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `sign`, `background_img`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_address`, `is_gender`, `is_photo`, `is_class`, `is_section`, `content_footer`, `created_at`, `updated_at`) VALUES (1, 'Sample Admit Card', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION (10+2) 2014', 'ab12c4b65f53ee621dcf84370a7c5be4.png', '0910482bf79df5fd103e8383d61b387a.png', 'Test', 'Mount Carmel School', 'test dmit card2', 'aa9c7087e68c5af1d2c04946de1d3bd3.png', '782a71f53ea6bca213012d49e9d46d98.jpg', 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, '', '2021-11-12 05:41:47', NULL);


#
# TABLE STRUCTURE FOR: template_marksheets
#

DROP TABLE IF EXISTS `template_marksheets`;

CREATE TABLE `template_marksheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(200) DEFAULT NULL,
  `heading` text,
  `title` text,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `left_sign` varchar(200) DEFAULT NULL,
  `middle_sign` varchar(200) DEFAULT NULL,
  `right_sign` varchar(200) DEFAULT NULL,
  `exam_session` int(1) DEFAULT '1',
  `is_name` int(1) DEFAULT '1',
  `is_father_name` int(1) DEFAULT '1',
  `is_mother_name` int(1) DEFAULT '1',
  `is_dob` int(1) DEFAULT '1',
  `is_admission_no` int(1) DEFAULT '1',
  `is_roll_no` int(1) DEFAULT '1',
  `is_photo` int(11) DEFAULT '1',
  `is_division` int(1) NOT NULL DEFAULT '1',
  `is_customfield` int(1) NOT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `is_class` int(11) NOT NULL DEFAULT '0',
  `is_section` int(11) NOT NULL DEFAULT '0',
  `content` text,
  `content_footer` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `template_marksheets` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `left_sign`, `middle_sign`, `right_sign`, `exam_session`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_photo`, `is_division`, `is_customfield`, `background_img`, `date`, `is_class`, `is_section`, `content`, `content_footer`, `created_at`, `updated_at`) VALUES (1, 'Sample Marksheet', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'f314cec3f688771ccaeddbcee6e52f7c.png', 'e824b2df53266266be2dbfd2001168b8.png', 'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION', 'Mount Carmel School', 'GOVT GIRLS H S SCHOOL', '331e0690e50f8c6b7a219a0a2b9667f7.png', '351f513d79ee5c0f642c2d36514a1ff4.png', 'fb79d2c0d163357d1706b78550a05e2c.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', NULL, 0, 0, NULL, NULL, '2020-02-28 19:56:06', NULL);


#
# TABLE STRUCTURE FOR: timetables
#

DROP TABLE IF EXISTS `timetables`;

CREATE TABLE `timetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: topic
#

DROP TABLE IF EXISTS `topic`;

CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `complete_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `lesson_id` (`lesson_id`),
  CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `topic` (`id`, `session_id`, `lesson_id`, `name`, `status`, `complete_date`, `created_at`) VALUES (1, 15, 1, 'Lesson 1 Topic 1', 1, '2021-11-25', '2021-11-12 03:58:21');
INSERT INTO `topic` (`id`, `session_id`, `lesson_id`, `name`, `status`, `complete_date`, `created_at`) VALUES (2, 15, 1, 'Lesson 1 Topic 2', 1, '2021-11-11', '2021-11-12 03:57:40');
INSERT INTO `topic` (`id`, `session_id`, `lesson_id`, `name`, `status`, `complete_date`, `created_at`) VALUES (3, 15, 2, 'Topic 1', 0, '0000-00-00', '2021-11-12 04:39:36');


#
# TABLE STRUCTURE FOR: transport_route
#

DROP TABLE IF EXISTS `transport_route`;

CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_title` varchar(100) DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `transport_route` (`id`, `route_title`, `no_of_vehicle`, `fare`, `note`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'phase 7', NULL, '200.00', NULL, 'no', '2021-10-20 16:58:22', NULL);


#
# TABLE STRUCTURE FOR: userlog
#

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (1, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 91.0, Windows 10', '2021-09-04 09:50:38');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (2, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 91.0, Windows 10', '2021-09-06 15:01:03');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (3, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-09-15 15:24:51');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (4, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-09-23 10:44:50');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (5, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-09-24 12:11:54');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (6, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-10-06 17:06:22');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (7, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-10-09 14:28:04');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (8, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-10-14 09:51:51');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (9, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-10-18 17:11:29');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (10, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-10-19 14:36:02');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (11, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-10-20 15:01:40');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (12, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-10-21 09:44:36');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (13, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-10-21 16:28:01');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (14, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-10-21 17:03:17');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (15, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-10-21 17:06:59');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (16, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-10-21 17:16:05');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (17, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-10-22 09:36:50');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (18, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '49.156.65.18', 'Firefox 93.0, Windows 10', '2021-10-22 02:53:07');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (19, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '27.255.222.186', 'Firefox 93.0, Windows 10', '2021-10-22 05:20:27');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (20, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '1.38.244.71', 'Chrome 94.0.4606.81, Windows 10', '2021-10-25 04:17:01');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (21, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '27.255.220.148', 'Chrome 95.0.4638.54, Windows 10', '2021-10-28 04:15:07');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (22, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '124.253.109.224', 'Chrome 95.0.4638.54, Windows 10', '2021-10-28 21:07:29');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (23, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '125.62.116.167', 'Chrome 95.0.4638.69, Windows 10', '2021-11-11 04:58:28');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (24, 'shashi.smartdesignhut@gmail.com', 'Teacher', '124.253.246.244', 'Chrome 95.0.4638.69, Windows 10', '2021-11-11 05:23:33');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (25, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '27.255.248.67', 'Chrome 95.0.4638.69, Windows 10', '2021-11-12 02:46:59');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (26, 'shashi.smartdesignhut@gmail.com', 'Teacher', '49.156.67.42', 'Chrome 95.0.4638.69, Windows 10', '2021-11-12 02:48:09');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (27, 'std3', 'student', '49.156.67.42', 'Firefox 94.0, Windows 10', '2021-11-12 03:32:35');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (28, 'std3', 'student', '27.255.222.33', 'Firefox 94.0, Windows 10', '2021-11-12 05:17:05');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (29, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '124.253.0.93', 'Chrome 95.0.4638.69, Windows 10', '2021-11-14 21:05:28');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (30, 'shashi.smartdesignhut@gmail.com', 'Teacher', '124.253.0.93', 'Chrome 95.0.4638.69, Windows 10', '2021-11-14 21:07:45');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (31, 'std3', 'student', '124.253.0.93', 'Firefox 94.0, Windows 10', '2021-11-14 21:10:26');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (32, 'std3', 'student', '124.253.108.55', 'Firefox 94.0, Windows 10', '2021-11-14 23:39:53');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (33, 'Library@gmail.com', 'Librarian', '124.253.108.55', 'Chrome 95.0.4638.69, Windows 10', '2021-11-15 00:04:02');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (34, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '47.9.76.213', 'Chrome 95.0.4638.69, Windows 10', '2021-11-15 04:52:20');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (35, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '124.253.3.43', 'Firefox 94.0, Windows 10', '2021-11-16 04:23:37');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (36, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '47.9.65.119', 'Chrome 96.0.4664.45, Windows 10', '2021-11-18 02:18:51');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text NOT NULL,
  `role` varchar(30) NOT NULL,
  `verification_code` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 'std1', 'cz9w9r', '', 'student', '', 0, 'yes', '2021-09-24 12:57:24', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (2, 0, 'parent1', '1dtvji', '1', 'parent', '', 0, 'yes', '2021-09-24 12:57:24', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (3, 2, 'std2', 'cv7wat', '', 'student', '', 0, 'yes', '2021-09-24 13:06:57', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (4, 0, 'parent2', '8j34ri', '2', 'parent', '', 0, 'yes', '2021-09-24 13:06:57', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (5, 3, 'std3', 'exjqem', '', 'student', '', 0, 'yes', '2021-11-12 03:22:49', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (6, 0, 'parent3', 'c47jqu', '3', 'parent', '', 0, 'yes', '2021-11-12 03:22:49', NULL);


#
# TABLE STRUCTURE FOR: users_authentication
#

DROP TABLE IF EXISTS `users_authentication`;

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: vehicle_routes
#

DROP TABLE IF EXISTS `vehicle_routes`;

CREATE TABLE `vehicle_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `vehicle_routes` (`id`, `route_id`, `vehicle_id`, `created_at`) VALUES (1, 1, 1, '2021-10-20 16:59:35');


#
# TABLE STRUCTURE FOR: vehicles
#

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_model`, `manufacture_year`, `driver_name`, `driver_licence`, `driver_contact`, `note`, `created_at`) VALUES (1, 'DGT98+89', '548', '1999', 'AAA', 'DWC', '424234234234', '234ffsdf', '2021-10-20 16:59:28');


#
# TABLE STRUCTURE FOR: visitors_book
#

DROP TABLE IF EXISTS `visitors_book`;

CREATE TABLE `visitors_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `no_of_pepple` int(11) NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `visitors_book` (`id`, `source`, `purpose`, `name`, `email`, `contact`, `id_proof`, `no_of_pepple`, `date`, `in_time`, `out_time`, `note`, `image`) VALUES (1, NULL, 'Purpose1', 'Visitor Name', NULL, 'zczxczxc', 'zxczxc', 0, '2021-11-12', '05:30 PM', '04:30 PM', 'xvxcv', '');


#
# TABLE STRUCTURE FOR: visitors_purpose
#

DROP TABLE IF EXISTS `visitors_purpose`;

CREATE TABLE `visitors_purpose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `visitors_purpose` (`id`, `visitors_purpose`, `description`) VALUES (1, 'Purpose1', '');
INSERT INTO `visitors_purpose` (`id`, `visitors_purpose`, `description`) VALUES (2, 'Purpose2', '');


