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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `is_returned` int(11) DEFAULT 0,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `description` text DEFAULT NULL,
  `available` varchar(10) DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `books` (`id`, `book_title`, `book_no`, `isbn_no`, `subject`, `rack_no`, `publish`, `author`, `qty`, `perunitcost`, `postdate`, `description`, `available`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'asd', '123', '', '', '', '', '', 0, '0.00', '0000-00-00', '', '', 'no', '2021-10-20 14:14:38', NULL);


#
# TABLE STRUCTURE FOR: categories
#

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Lower', 'no', '2021-10-19 14:52:46', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Upper', 'no', '2021-10-30 16:42:10', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'Lower', 'no', '2021-10-30 16:42:17', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'Lower', 'no', '2021-10-30 16:43:23', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Lower', 'no', '2021-10-30 16:49:05', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'Lower', 'no', '2021-10-30 16:49:11', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (7, 'Upper', 'no', '2021-10-30 16:49:17', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (8, 'Upper', 'no', '2021-10-30 17:10:12', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (9, 'Upper', 'no', '2021-10-30 17:10:24', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (10, 'Upper', 'no', '2021-10-30 17:11:37', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (11, 'Upper', 'no', '2021-10-30 17:12:03', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (12, 'Upper', 'no', '2021-10-30 17:12:32', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (13, 'Upper', 'no', '2021-10-30 17:13:16', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (14, 'Upper', 'no', '2021-10-30 17:14:57', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (15, 'Lower', 'no', '2021-10-30 17:18:08', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (16, 'Lower', 'no', '2021-10-30 17:18:47', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (17, 'upper', 'no', '2021-10-30 17:35:56', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (18, 'upper', 'no', '2021-11-01 18:23:12', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (19, 'Lower', 'no', '2021-11-01 18:27:15', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (20, 'Lower', 'no', '2021-11-01 18:27:25', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (21, 'Lower', 'no', '2021-11-01 18:27:57', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (22, 'Upper Lower', 'no', '2021-11-01 18:28:44', NULL);
INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES (27, 'Boys', 'no', '2021-11-26 17:57:09', NULL);


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
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `certificates` (`id`, `certificate_name`, `certificate_text`, `left_header`, `center_header`, `right_header`, `left_footer`, `right_footer`, `center_footer`, `background_image`, `created_at`, `updated_at`, `created_for`, `status`, `header_height`, `content_height`, `footer_height`, `content_width`, `enable_student_image`, `enable_image_height`) VALUES (1, 'Sample Transfer Certificate', 'This is certify that <b>[name]</b> has born on [dob]  <br> and have following details [present_address] [guardian] [created_at] [admission_no] [roll_no] [class] [section] [gender] [admission_date] [category] [cast] [father_name] [mother_name] [religion] [email] [phone] .<br>We wish best of luck for future endeavors.', 'Reff. No.....1111111.........', 'To Whomever It May Concern', 'Date: _10__/_10__/__2019__', '.................................<br>admin', '.................................<br>principal', '.................................<br>admin', 'sampletc121.png', '2019-12-21 20:44:34', '0000-00-00', 2, 1, 360, 400, 480, 810, 1, 230);


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `message` text DEFAULT NULL,
  `chat_user_id` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `is_first` int(1) DEFAULT 0,
  `is_read` int(1) NOT NULL DEFAULT 0,
  `chat_connection_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'no', '2021-09-04 11:15:06', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (2, 1, 2, 'no', '2021-09-04 11:15:06', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (3, 1, 3, 'no', '2021-09-04 11:15:06', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (5, 3, 1, 'no', '2021-09-15 17:21:00', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (6, 3, 2, 'no', '2021-09-15 17:21:00', NULL);
INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES (7, 4, 1, 'no', '2021-09-15 17:21:07', NULL);


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: classes
#

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (1, '1st', 'no', '2021-09-04 11:15:06', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (3, '10th', 'no', '2021-09-15 17:21:00', NULL);
INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES (4, '2nd', 'no', '2021-09-15 17:21:07', NULL);


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: complaint_type
#

DROP TABLE IF EXISTS `complaint_type`;

CREATE TABLE `complaint_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: conference_staff
#

DROP TABLE IF EXISTS `conference_staff`;

CREATE TABLE `conference_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conference_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `conference_id` (`conference_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `conference_staff_ibfk_1` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE,
  CONSTRAINT `conference_staff_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: conferences
#

DROP TABLE IF EXISTS `conferences`;

CREATE TABLE `conferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purpose` varchar(20) NOT NULL DEFAULT 'class',
  `staff_id` int(11) DEFAULT NULL,
  `created_id` int(10) NOT NULL,
  `title` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `section_id` int(10) DEFAULT NULL,
  `session_id` int(10) NOT NULL,
  `host_video` int(1) NOT NULL DEFAULT 1,
  `client_video` int(1) NOT NULL DEFAULT 1,
  `description` varchar(50) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `return_response` text DEFAULT NULL,
  `api_type` varchar(30) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `created_id` (`created_id`),
  CONSTRAINT `conferences_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `conferences_ibfk_2` FOREIGN KEY (`created_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: conferences_history
#

DROP TABLE IF EXISTS `conferences_history`;

CREATE TABLE `conferences_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conference_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `total_hit` int(10) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: custom_field_values
#

DROP TABLE IF EXISTS `custom_field_values`;

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_field_id` (`custom_field_id`),
  CONSTRAINT `custom_field_values_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `validation` int(11) DEFAULT 0,
  `field_values` text DEFAULT NULL,
  `show_table` varchar(100) DEFAULT NULL,
  `visible_on_table` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (1, 'Electronics', 'yes');


#
# TABLE STRUCTURE FOR: disable_reason
#

DROP TABLE IF EXISTS `disable_reason`;

CREATE TABLE `disable_reason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `is_active`, `created_at`) VALUES (1, 'sendmail', NULL, NULL, NULL, NULL, NULL, '', '2020-02-28 19:16:03');


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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `enquiry` (`id`, `name`, `contact`, `address`, `reference`, `date`, `description`, `follow_up_date`, `note`, `source`, `email`, `assigned`, `class`, `no_of_child`, `status`) VALUES (1, 'sadasds', '545-454-5454', 'sasda', 'Rajeev', '2021-11-24', 'dsasdas', '2021-11-24', 'sada', 'Online', 'sadsd', 'sdssa', 1, '1', 'active');
INSERT INTO `enquiry` (`id`, `name`, `contact`, `address`, `reference`, `date`, `description`, `follow_up_date`, `note`, `source`, `email`, `assigned`, `class`, `no_of_child`, `status`) VALUES (2, 'asdasdd', '213-122-3313', 'sdasdad', 'Rajeev', '2021-11-24', 'asdsadd', '2021-11-24', 'sadadad', 'Online', 'asdsaddsa', 'sadsd', 1, '4', 'active');
INSERT INTO `enquiry` (`id`, `name`, `contact`, `address`, `reference`, `date`, `description`, `follow_up_date`, `note`, `source`, `email`, `assigned`, `class`, `no_of_child`, `status`) VALUES (3, 'yvhvhv', '545-454-5454', 'ttftftf', 'Rajeev', '2021-11-24', 'yvvvhvhv', '2021-11-24', 'yhvvhvh', 'Online', 'hgcgccc', 'yfyfyf', 1, '5', 'active');
INSERT INTO `enquiry` (`id`, `name`, `contact`, `address`, `reference`, `date`, `description`, `follow_up_date`, `note`, `source`, `email`, `assigned`, `class`, `no_of_child`, `status`) VALUES (4, 'first', '545-454-5454', 'hvhvhvhvh', 'Rajeev', '2021-11-24', 'vhvhvh', '2021-11-24', 'cgcgcg', 'Online', 'hbhbhbhbh', 'vgvgvgvgv', 1, '2', 'active');


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
  `roll_no` int(6) NOT NULL DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_class_batch_exam_id` (`exam_group_class_batch_exam_id`),
  KEY `student_id` (`student_id`),
  KEY `student_session_id` (`student_session_id`),
  CONSTRAINT `exam_group_class_batch_exam_students_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_class_batch_exam_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_class_batch_exam_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `exam_group_class_batch_exam_students` (`id`, `exam_group_class_batch_exam_id`, `student_id`, `student_session_id`, `roll_no`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 1, 1, 0, 0, '2021-09-24 13:22:06', NULL);


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
  `credit_hours` float(10,2) DEFAULT 0.00,
  `date_to` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `exam_group_class_batch_exam_subjects` (`id`, `exam_group_class_batch_exams_id`, `subject_id`, `date_from`, `time_from`, `duration`, `room_no`, `max_marks`, `min_marks`, `credit_hours`, `date_to`, `is_active`, `created_at`, `updated_at`) VALUES (2, 1, 1, '2021-09-23', '15:21:13', '3', '1', '1000.00', '33.00', '0.00', NULL, 0, '2021-09-24 15:21:45', NULL);


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
  `description` text DEFAULT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `is_publish` int(1) DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_id` (`exam_group_id`),
  CONSTRAINT `exam_group_class_batch_exams_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `exam_group_class_batch_exams` (`id`, `exam`, `session_id`, `date_from`, `date_to`, `description`, `exam_group_id`, `is_publish`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'gdfgdfgfdg', 15, NULL, NULL, '', 1, 0, 1, '2021-09-24 13:20:32', NULL);


#
# TABLE STRUCTURE FOR: exam_group_exam_connections
#

DROP TABLE IF EXISTS `exam_group_exam_connections`;

CREATE TABLE `exam_group_exam_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_id` int(11) DEFAULT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `exam_weightage` float(10,2) DEFAULT 0.00,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `get_marks` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `exam_group_student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_group_class_batch_exam_subject_id` (`exam_group_class_batch_exam_subject_id`),
  KEY `exam_group_student_id` (`exam_group_student_id`),
  KEY `exam_group_class_batch_exam_student_id` (`exam_group_class_batch_exam_student_id`),
  CONSTRAINT `exam_group_exam_results_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_subject_id`) REFERENCES `exam_group_class_batch_exam_subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_exam_results_ibfk_2` FOREIGN KEY (`exam_group_student_id`) REFERENCES `exam_group_students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `exam_group_exam_results_ibfk_3` FOREIGN KEY (`exam_group_class_batch_exam_student_id`) REFERENCES `exam_group_class_batch_exam_students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: exam_group_students
#

DROP TABLE IF EXISTS `exam_group_students`;

CREATE TABLE `exam_group_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(10) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'test', 'basic_system', '', 0, '2021-09-24 13:20:16', NULL);
INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Test Exam', 'basic_system', 'Test Exam\r\n', 0, '2021-10-19 16:13:48', NULL);
INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'test', 'basic_system', 'bkbkkkknnkkn', 0, '2021-11-01 19:18:19', NULL);
INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (4, 'test', 'basic_system', 'we', 0, '2021-11-01 19:53:40', NULL);
INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'Tsadas', 'basic_system', 'df', 0, '2021-11-01 19:55:54', NULL);
INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (6, 'Test', 'basic_system', 'bsdb', 0, '2021-11-01 19:57:52', NULL);
INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (7, 'test', 'basic_system', 'knk', 0, '2021-11-01 20:11:10', NULL);


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
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (1, 'First Head', 'First Head', 'yes', 'no', '2021-11-01 18:17:51', NULL);
INSERT INTO `expense_head` (`id`, `exp_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (2, 'Sdsfdsf Dsfdsfd', 'cczxc', 'yes', 'no', '2021-11-01 18:19:05', NULL);


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
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: fee_groups
#

DROP TABLE IF EXISTS `fee_groups`;

CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `is_active`, `created_at`) VALUES (1, 'Fee Group 1', 0, 'Fee Group 1 description\r\n', 'no', '2021-10-19 15:42:25');
INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `is_active`, `created_at`) VALUES (2, 'Class 1st fees', 0, 'Fees of class 1st', 'no', '2021-10-26 15:02:38');
INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `is_active`, `created_at`) VALUES (3, 'Fee Group 1d', 0, 'asdsadd', 'no', '2021-11-01 19:03:32');
INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `is_active`, `created_at`) VALUES (4, 'Fee Group', 0, 'dsfsdf', 'no', '2021-11-01 19:05:12');


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
  `fine_percentage` float(10,2) NOT NULL DEFAULT 0.00,
  `fine_amount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fee_session_group_id` (`fee_session_group_id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `feetype_id` (`feetype_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `amount`, `fine_type`, `due_date`, `fine_percentage`, `fine_amount`, `is_active`, `created_at`) VALUES (1, 1, 2, 2, 15, '2500.00', 'none', '2021-10-30', '0.00', '0.00', 'no', '2021-10-26 15:03:11');
INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `amount`, `fine_type`, `due_date`, `fine_percentage`, `fine_amount`, `is_active`, `created_at`) VALUES (2, 2, 1, 1, 15, '4500.00', 'none', '2021-10-29', '0.00', '0.00', 'no', '2021-10-26 15:13:18');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fee_groups_id` (`fee_groups_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES (1, 2, 15, 'no', '2021-10-26 15:03:11');
INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES (2, 1, 15, 'no', '2021-10-26 15:13:18');


#
# TABLE STRUCTURE FOR: feecategory
#

DROP TABLE IF EXISTS `feecategory`;

CREATE TABLE `feecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `fees_discounts` (`id`, `session_id`, `name`, `code`, `amount`, `description`, `is_active`, `created_at`) VALUES (1, 15, 'Discount 1', 'Discount11', '1500.00', 'Lower Student discount', 'no', '2021-10-19 15:43:41');
INSERT INTO `fees_discounts` (`id`, `session_id`, `name`, `code`, `amount`, `description`, `is_active`, `created_at`) VALUES (2, 15, 'sasa', 'Discount11', '1235.00', 'dfdsf', 'no', '2021-11-01 18:40:13');
INSERT INTO `fees_discounts` (`id`, `session_id`, `name`, `code`, `amount`, `description`, `is_active`, `created_at`) VALUES (3, 15, 'discount 1', 'Discount11', '141.00', 'sdsda', 'no', '2021-11-01 18:48:27');
INSERT INTO `fees_discounts` (`id`, `session_id`, `name`, `code`, `amount`, `description`, `is_active`, `created_at`) VALUES (4, 15, 'discount 1', 'Discount11', '141.00', 'sdsda', 'no', '2021-11-01 18:48:44');
INSERT INTO `fees_discounts` (`id`, `session_id`, `name`, `code`, `amount`, `description`, `is_active`, `created_at`) VALUES (5, 15, 'sdd', 'Ddsdf', '123.00', 'sdf', 'no', '2021-11-01 18:54:09');


#
# TABLE STRUCTURE FOR: fees_reminder
#

DROP TABLE IF EXISTS `fees_reminder`;

CREATE TABLE `fees_reminder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reminder_type` varchar(10) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `is_active` int(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `is_system` int(1) NOT NULL DEFAULT 0,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `feetype` (`id`, `is_system`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES (1, 0, NULL, 'Fees Type1', 'Fee1', 'no', '2021-10-19 15:42:55', NULL, 'Fees 1 description\r\n');
INSERT INTO `feetype` (`id`, `is_system`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES (2, 0, NULL, 'October', 'oct123', 'no', '2021-10-26 15:02:09', NULL, 'October fees collection\r\n');
INSERT INTO `feetype` (`id`, `is_system`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES (3, 0, NULL, 'Fees Type1', 'njsandk', 'no', '2021-11-01 19:16:02', NULL, 'sdjsjn');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `ext_url` text DEFAULT NULL,
  `open_new_tab` int(11) DEFAULT 0,
  `ext_url_link` text DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (1, 1, 'Home', 1, 0, NULL, NULL, NULL, 'home', 1, 0, NULL, 'no', '2019-12-03 03:41:50');
INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (2, 1, 'Contact Us', 76, 0, NULL, NULL, NULL, 'contact-us', 4, 0, NULL, 'no', '2019-12-03 03:41:52');
INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (3, 1, 'Complain', 2, 0, NULL, NULL, NULL, 'complain', 3, 0, NULL, 'no', '2019-12-03 03:41:52');
INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (4, 1, 'Admission', 0, 0, '1', NULL, 'http://yourschoolurl.com/online_admission', 'admssion', 2, 0, NULL, 'no', '2019-12-21 21:03:00');


#
# TABLE STRUCTURE FOR: front_cms_menus
#

DROP TABLE IF EXISTS `front_cms_menus`;

CREATE TABLE `front_cms_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `open_new_tab` int(10) NOT NULL DEFAULT 0,
  `ext_url` text NOT NULL,
  `ext_url_link` text NOT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `is_homepage` int(1) DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `publish_date` date NOT NULL,
  `publish` int(10) DEFAULT 0,
  `sidebar` int(10) DEFAULT 0,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (1, 'default', 1, 'Home', 'page/home', 'page', 'home', '', '', '', '', '<p>home page</p>', '0000-00-00', 1, NULL, 'no', '2019-12-02 20:53:47');
INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<p>[form-builder:complain]</p>', '0000-00-00', 1, NULL, 'no', '2019-11-13 15:46:36');
INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (54, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>', '0000-00-00', 0, NULL, 'no', '2018-05-18 20:16:04');


#
# TABLE STRUCTURE FOR: front_cms_program_photos
#

DROP TABLE IF EXISTS `front_cms_program_photos`;

CREATE TABLE `front_cms_program_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) DEFAULT NULL,
  `media_gallery_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: front_cms_programs
#

DROP TABLE IF EXISTS `front_cms_programs`;

CREATE TABLE `front_cms_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `feature_image` text NOT NULL,
  `publish_date` date NOT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int(10) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: front_cms_settings
#

DROP TABLE IF EXISTS `front_cms_settings`;

CREATE TABLE `front_cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int(10) DEFAULT 0,
  `is_active_front_cms` int(11) DEFAULT 0,
  `is_active_sidebar` int(1) DEFAULT 0,
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
  `google_analytics` text DEFAULT NULL,
  `footer_text` varchar(500) DEFAULT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `fav_icon`, `created_at`) VALUES (1, 'material_pink', NULL, NULL, NULL, NULL, '', '', '[\"news\",\"complain\"]', '', '', '', '', '', '', '', '', '', '', '2020-02-28 19:18:32');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `grades` (`id`, `exam_type`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'basic_system', 'First Grade', '90.0', '80.00', '100.00', 'sdasdds', 'no', '2021-11-26 18:19:37', NULL);


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
  `description` text DEFAULT NULL,
  `create_date` date NOT NULL,
  `evaluation_date` date NOT NULL,
  `document` varchar(200) NOT NULL,
  `created_by` int(11) NOT NULL,
  `evaluated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_group_subject_id` (`subject_group_subject_id`),
  CONSTRAINT `homework_ibfk_1` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (1, 1, 1, 16, '2021-11-27', '2021-11-28', 5, 3, 0, '<p>dfsfsfdff</p>', '2021-11-26', '0000-00-00', '1.jpg', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (2, 1, 1, 16, '2021-11-27', '2021-11-28', 5, 3, 0, '<p>dfsfsfdff</p>', '2021-11-26', '0000-00-00', '2.jpg', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (3, 1, 1, 16, '2021-11-27', '2021-11-28', 5, 3, 0, '<p>fsfsdfsf</p>', '2021-11-26', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (4, 1, 1, 16, '2021-11-27', '2021-11-28', 5, 3, 0, '<p>fsfsdfsf</p>', '2021-11-26', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (5, 1, 1, 16, '2021-11-27', '2021-11-28', 5, 3, 0, '<p>fsfsdfsf</p>', '2021-11-26', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (6, 1, 1, 16, '2021-11-27', '2021-11-27', 5, 3, 0, '<p>adsdasdsa</p>', '2021-11-26', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (7, 1, 1, 16, '2021-11-27', '2021-11-27', 5, 3, 0, '<p>adsdasdsa</p>', '2021-11-26', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (8, 1, 1, 16, '2021-11-27', '2021-11-28', 5, 3, 0, '<p>sadassdsa</p>', '2021-11-26', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (9, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>dsddf</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (10, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>sadds</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (11, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>sadds</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (12, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>sadasd</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (13, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 4, 0, '<p>fds</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (14, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>dssa</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (15, 1, 1, 16, '2021-12-01', '2021-12-02', 5, 3, 0, '<p>sadasd</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (16, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>xzxxzzx</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (17, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>xzxxzzx</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (18, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>ASSADSDDS</p>', '2021-11-30', '0000-00-00', '18.png', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (19, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>ubbjj</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (20, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>dasad</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (21, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 4, 0, '<p>asdasd</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (22, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>knk</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (23, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>knk</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (24, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>knk</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (25, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>knk</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (26, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>knk</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (27, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>knk</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (28, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>asdsad</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (29, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>asdsad</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (30, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 3, 0, '<p>xzxzxxz</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (31, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 4, 0, '<p>xzcxzccx</p>', '2021-11-30', '0000-00-00', '', 5, 0);
INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES (32, 1, 1, 16, '2021-12-01', '2021-12-01', 5, 4, 0, '<p>dsfdsffsd</p>', '2021-11-30', '0000-00-00', '', 5, 0);


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: hostel
#

DROP TABLE IF EXISTS `hostel`;

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `hostel` (`id`, `hostel_name`, `type`, `address`, `intake`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Hosel1', 'Girls', 'Address1', 12, 'adsadsadasdsdas', 'no', '2021-10-20 15:47:34', NULL);
INSERT INTO `hostel` (`id`, `hostel_name`, `type`, `address`, `intake`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Hostel 2', 'Combine', 'adsdsdsd', 0, 'vjvjvjvvjv', 'no', '2021-10-26 18:40:40', NULL);


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
  `cost_per_bed` float(10,2) DEFAULT 0.00,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `hostel_rooms` (`id`, `hostel_id`, `room_type_id`, `room_no`, `no_of_bed`, `cost_per_bed`, `title`, `description`, `created_at`, `updated_at`) VALUES (1, 1, 1, '51', 50, '5000.00', NULL, 'ibjbjjbkjb', '2021-10-20 15:48:38', NULL);
INSERT INTO `hostel_rooms` (`id`, `hostel_id`, `room_type_id`, `room_no`, `no_of_bed`, `cost_per_bed`, `title`, `description`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2', 1, '4000.00', NULL, 'dfsdfsdf', '2021-10-26 18:48:35', NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_admission_no`, `enable_student_name`, `enable_class`, `enable_fathers_name`, `enable_mothers_name`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `status`) VALUES (1, 'Sample Student Identity Card', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1);


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
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES (1, '1', 'First Income', '121s2asd', '2021-10-19', '500', 'bdjbdjsdbasj', 'yes', 'no', '2021-10-19 16:12:31', NULL, 'uploads/school_income/1.jpg');
INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES (2, '1', 'Second Income', '	121s2asd', '2021-11-24', '500', 'asdsdds', 'yes', 'no', '2021-11-01 17:12:53', NULL, NULL);
INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES (3, '1', 'Third Income', '121s2asd', '2021-11-25', '45000', 'sadasdsd', 'yes', 'no', '2021-11-01 17:26:40', NULL, NULL);
INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES (4, '1', 'bjasbj', '121s2as', '2021-11-24', '1511', 'sadsdas', 'yes', 'no', '2021-11-01 17:27:46', NULL, NULL);
INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES (5, '1', '121s2as', '121s2as	', '2021-11-25', '112122', '121s2as	', 'yes', 'no', '2021-11-01 17:28:58', NULL, NULL);
INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES (6, '1', '121s2as', '121s2as', '2021-11-30', '331313000', 'ddsasad', 'yes', 'no', '2021-11-01 17:39:59', NULL, NULL);
INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES (7, '1', 'bbbjbjbjb', 'fnsfnsdnf123', '2021-11-24', '1234', 'dfsfdsffd', 'yes', 'no', '2021-11-01 17:47:37', NULL, NULL);


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (1, 'Income first', 'Description1', 'yes', 'no', '2021-10-19 15:45:11', NULL);
INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (2, 'INCOME FIRST', 'jsajdbjdsb', 'yes', 'no', '2021-11-01 18:00:16', NULL);
INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (3, 'INCOME FIRST', 'adsds', 'yes', 'no', '2021-11-01 18:01:24', NULL);
INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (4, 'Income First', 'dsfsdf', 'yes', 'no', '2021-11-01 18:02:27', NULL);
INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (5, 'Income First', 'Income first', 'yes', 'no', '2021-11-01 18:02:42', NULL);
INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES (6, 'Ddfsf Afdf', 'saasd', 'yes', 'no', '2021-11-01 18:05:49', NULL);


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item` (`id`, `item_category_id`, `name`, `unit`, `item_photo`, `description`, `created_at`, `updated_at`, `item_store_id`, `item_supplier_id`, `quantity`, `date`) VALUES (1, 1, 'Pen', 'PCS', NULL, 'Pens', '2021-10-20 15:42:50', NULL, NULL, NULL, 0, '0000-00-00');


#
# TABLE STRUCTURE FOR: item_category
#

DROP TABLE IF EXISTS `item_category`;

CREATE TABLE `item_category` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES (1, 'Plastic', 'yes', 'Plastic description', '2021-10-20 15:37:06', NULL);


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
  `is_returned` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` varchar(10) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_category_id` (`item_category_id`),
  CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_issue` (`id`, `issue_type`, `issue_to`, `issue_by`, `issue_date`, `return_date`, `item_category_id`, `item_id`, `quantity`, `note`, `is_returned`, `created_at`, `is_active`) VALUES (1, '2', '8', 'Super Admin  (9000)', '2021-10-20', '2021-10-24', 1, 1, 2, 'this is note for issue item', 1, '2021-10-20 15:43:08', 'no');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `item_stock` (`id`, `item_id`, `supplier_id`, `symbol`, `store_id`, `quantity`, `purchase_price`, `date`, `attachment`, `description`, `is_active`, `created_at`) VALUES (1, 1, 1, '+', 1, 12, '12', '2021-10-20', NULL, 'sdsds', 'yes', '2021-10-20 15:42:16');


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

INSERT INTO `item_store` (`id`, `item_store`, `code`, `description`) VALUES (1, 'Test Store', 'stock123', 'Stock Description\r\n');


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

INSERT INTO `item_supplier` (`id`, `item_supplier`, `phone`, `email`, `address`, `contact_person_name`, `contact_person_phone`, `contact_person_email`, `description`) VALUES (1, 'Supplier 1', '1234567890', 'test@gmail.com', 'address1', 'Supplier2', '12345678890', 'test@gmail.com', 'test description');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `leave_types` (`id`, `type`, `is_active`) VALUES (1, 'Student', 'yes');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `subject_group_subject_id` (`subject_group_subject_id`),
  KEY `subject_group_class_sections_id` (`subject_group_class_sections_id`),
  CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`subject_group_class_sections_id`) REFERENCES `subject_group_class_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: libarary_members
#

DROP TABLE IF EXISTS `libarary_members`;

CREATE TABLE `libarary_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `library_card_no` varchar(200) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: logs
#

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text DEFAULT NULL,
  `record_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `agent` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8;

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
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (39, 'Record updated On settings id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 14:36:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (40, 'New Record inserted On  categories id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 14:52:47', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (41, 'New Record inserted On students id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 14:56:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (42, 'New Record inserted On  student session id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 14:56:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (43, 'New Record inserted On users id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 14:56:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (44, 'New Record inserted On users id 6', 6, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 14:56:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (45, 'Record updated On students id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 14:56:42', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (46, 'Record updated On students id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 14:56:42', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (47, 'Record updated On students id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 14:56:42', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (48, 'Record updated On students id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 14:56:42', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (49, 'New Record inserted On school houses id 9', 9, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 15:37:31', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (50, 'New Record inserted On school houses id 10', 10, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 15:38:22', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (51, 'New Record inserted On school houses id 11', 11, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 15:40:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (52, 'New Record inserted On  fee groups id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 15:42:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (53, 'New Record inserted On  fee type id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 15:42:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (54, 'New Record inserted On  fees discounts id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 15:43:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (55, 'New Record inserted On  income head   id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 15:45:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (56, 'New Record inserted On  Income   id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 16:12:31', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (57, 'Record updated On  Income   id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 16:12:31', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (58, 'New Record inserted On exam groups id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 16:13:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (59, 'New Record inserted On  online exam id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 16:15:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (60, 'New Record inserted On students id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:29:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (61, 'New Record inserted On  student session id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:29:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (62, 'New Record inserted On users id 7', 7, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:29:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (63, 'New Record inserted On users id 8', 8, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:29:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (64, 'Record updated On students id 4', 4, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:29:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (65, 'New Record inserted On students id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:47:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (66, 'New Record inserted On  student session id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:47:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (67, 'New Record inserted On users id 9', 9, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:47:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (68, 'New Record inserted On users id 10', 10, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:47:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (69, 'Record updated On students id 5', 5, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:47:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (70, 'New Record inserted On students id 6', 6, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:55:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (71, 'New Record inserted On  student session id 6', 6, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:55:43', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (72, 'New Record inserted On users id 11', 11, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:55:43', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (73, 'New Record inserted On users id 12', 12, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:55:44', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (74, 'Record updated On students id 6', 6, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:55:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (75, 'New Record inserted On students id 7', 7, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:58:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (76, 'New Record inserted On  student session id 7', 7, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:58:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (77, 'New Record inserted On users id 13', 13, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:58:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (78, 'New Record inserted On users id 14', 14, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:58:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (79, 'Record updated On students id 7', 7, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 18:58:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (80, 'New Record inserted On students id 8', 8, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 19:28:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (81, 'New Record inserted On  student session id 8', 8, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 19:28:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (82, 'New Record inserted On users id 15', 15, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 19:28:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (83, 'New Record inserted On users id 16', 16, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 19:28:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (84, 'Record updated On students id 8', 8, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 19:28:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (85, 'New Record inserted On department id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 19:44:47', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (86, 'New Record inserted On  staff designation id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-19 19:45:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (87, 'New Record inserted On sections id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 14:29:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (88, 'New Record inserted On subjects id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 14:29:41', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (89, 'New Record inserted On subject groups id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 14:30:39', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (90, 'Record updated On staff id 8', 8, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:35:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (91, 'Record updated On staff id 8', 8, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:35:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (92, 'New Record inserted On item category id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:37:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (93, 'New Record inserted On item id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:37:45', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (94, 'New Record inserted On item store id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:39:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (95, 'New Record inserted On item supplier id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:41:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (96, 'New Record inserted On item stock id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:42:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (97, 'Record updated On  item id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:42:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (98, 'Record updated On  item id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:42:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (99, 'New Record inserted On item issue id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:43:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (100, 'New Record inserted On transport route id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:44:13', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (101, 'New Record inserted On vehicles id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:45:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (102, 'New Record inserted On vehicle routes id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:45:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (103, 'New Record inserted On hostel id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:46:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (104, 'Record updated On  hostel id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:47:34', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (105, 'New Record inserted On room types id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:47:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (106, 'New Record inserted On hostel rooms id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-20 15:48:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (107, 'New Record inserted On  fee type id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 15:02:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (108, 'New Record inserted On  fee groups id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 15:02:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (109, 'New Record inserted On  fee groups feetype id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 15:03:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (110, 'Record deleted On  student fees master 1', 1, 5, 'Delete', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 15:03:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (111, 'New Record inserted On  fee groups feetype id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 15:13:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (112, 'Record deleted On  student fees master 2', 2, 5, 'Delete', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 15:13:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (113, 'New Record inserted On students id 9', 9, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:07:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (114, 'New Record inserted On  student session id 9', 9, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:07:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (115, 'New Record inserted On users id 17', 17, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:07:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (116, 'New Record inserted On users id 18', 18, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:07:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (117, 'Record updated On students id 9', 9, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:07:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (118, 'Record updated On students id 9', 9, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:07:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (119, 'Record updated On students id 9', 9, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:07:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (120, 'Record updated On students id 9', 9, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:07:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (121, 'Record updated On students id 9', 9, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:07:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (122, 'New Record inserted On students id 10', 10, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:42:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (123, 'New Record inserted On  student session id 10', 10, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:42:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (124, 'New Record inserted On users id 19', 19, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:42:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (125, 'New Record inserted On users id 20', 20, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:42:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (126, 'Record updated On students id 10', 10, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:42:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (127, 'Record updated On settings id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:47:01', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (128, 'New Record inserted On students id 11', 11, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:49:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (129, 'New Record inserted On  student session id 11', 11, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:49:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (130, 'New Record inserted On users id 21', 21, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:49:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (131, 'New Record inserted On users id 22', 22, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:49:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (132, 'Record updated On students id 11', 11, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:49:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (133, 'New Record inserted On students id 12', 12, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:52:00', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (134, 'New Record inserted On  student session id 12', 12, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:52:00', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (135, 'New Record inserted On users id 23', 23, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:52:00', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (136, 'New Record inserted On users id 24', 24, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:52:00', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (137, 'Record updated On students id 12', 12, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:52:00', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (138, 'New Record inserted On students id 13', 13, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:54:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (139, 'New Record inserted On  student session id 13', 13, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:54:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (140, 'New Record inserted On users id 25', 25, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:54:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (141, 'New Record inserted On users id 26', 26, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:54:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (142, 'Record updated On students id 13', 13, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 16:54:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (143, 'New Record inserted On students id 14', 14, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:29:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (144, 'New Record inserted On  student session id 14', 14, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:29:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (145, 'New Record inserted On users id 27', 27, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:29:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (146, 'New Record inserted On users id 28', 28, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:29:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (147, 'Record updated On students id 14', 14, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:29:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (148, 'New Record inserted On hostel id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:40:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (149, 'New Record inserted On room types id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:40:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (150, 'New Record inserted On hostel rooms id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:48:35', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (151, 'Record updated On students id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:49:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (152, 'Record updated On  student session id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:49:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (153, 'Record updated On students id 2', 2, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:49:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (154, 'Record updated On  student session id 2', 2, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:49:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (155, 'Record updated On students id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:50:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (156, 'Record updated On  student session id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.81', '2021-10-26 18:50:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (157, 'New Record inserted On  categories id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 16:42:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (158, 'New Record inserted On  categories id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 16:42:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (159, 'New Record inserted On  categories id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 16:43:23', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (160, 'New Record inserted On  categories id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 16:49:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (161, 'New Record inserted On  categories id 6', 6, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 16:49:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (162, 'New Record inserted On  categories id 7', 7, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 16:49:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (163, 'New Record inserted On  categories id 8', 8, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:10:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (164, 'New Record inserted On  categories id 9', 9, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:10:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (165, 'New Record inserted On  categories id 10', 10, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:11:37', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (166, 'New Record inserted On  categories id 11', 11, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:12:03', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (167, 'New Record inserted On  categories id 12', 12, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:12:32', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (168, 'New Record inserted On  categories id 13', 13, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:13:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (169, 'New Record inserted On  categories id 14', 14, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:14:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (170, 'New Record inserted On  categories id 15', 15, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:18:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (171, 'New Record inserted On  categories id 16', 16, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:18:47', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (172, 'New Record inserted On  categories id 17', 17, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:35:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (173, 'New Record inserted On school houses id 12', 12, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-10-30 17:42:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (174, 'New Record inserted On  Income   id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 17:12:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (175, 'New Record inserted On  Income   id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 17:26:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (176, 'New Record inserted On  Income   id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 17:27:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (177, 'New Record inserted On  Income   id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 17:28:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (178, 'New Record inserted On  Income   id 6', 6, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 17:39:59', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (179, 'New Record inserted On  Income   id 7', 7, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 17:47:37', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (180, 'New Record inserted On  income head   id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:00:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (181, 'New Record inserted On  income head   id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:01:24', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (182, 'New Record inserted On  income head   id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:02:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (183, 'New Record inserted On  income head   id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:02:42', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (184, 'New Record inserted On  income head   id 6', 6, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:05:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (185, 'New Record inserted On  expense head id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:17:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (186, 'New Record inserted On  expense head id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:19:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (187, 'New Record inserted On  categories id 18', 18, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:23:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (188, 'New Record inserted On  categories id 19', 19, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:27:15', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (189, 'New Record inserted On  categories id 20', 20, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:27:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (190, 'New Record inserted On  categories id 21', 21, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:27:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (191, 'New Record inserted On  categories id 22', 22, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:28:44', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (192, 'New Record inserted On  categories id 23', 23, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:28:54', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (193, 'Record deleted On categories id 23', 23, 5, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:31:03', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (194, 'New Record inserted On school houses id 13', 13, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:36:34', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (195, 'New Record inserted On  fees discounts id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:40:13', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (196, 'New Record inserted On  fees discounts id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:48:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (197, 'New Record inserted On  fees discounts id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:48:44', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (198, 'New Record inserted On  fees discounts id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 18:54:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (199, 'New Record inserted On  fee groups id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 19:03:32', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (200, 'New Record inserted On  fee groups id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 19:05:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (201, 'New Record inserted On  fee type id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 19:16:02', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (202, 'New Record inserted On exam groups id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 19:18:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (203, 'New Record inserted On exam groups id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 19:53:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (204, 'New Record inserted On exam groups id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 19:55:54', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (205, 'New Record inserted On exam groups id 6', 6, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 19:57:52', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (206, 'New Record inserted On exam groups id 7', 7, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-01 20:11:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (207, 'Record updated On staff id 9', 9, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 15:33:54', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (208, 'Record updated On staff id 9', 9, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:11:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (209, 'Record updated On staff id 9', 9, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:11:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (210, 'New Record inserted On student apply leave id 1', 1, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:22:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (211, 'New Record inserted On student apply leave id 2', 2, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:23:03', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (212, 'New Record inserted On student apply leave id 3', 3, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:23:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (213, 'New Record inserted On student apply leave id 4', 4, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:23:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (214, 'New Record inserted On student apply leave id 5', 5, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:34:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (215, 'Record updated On  student apply leave id 5', 5, NULL, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:34:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (216, 'New Record inserted On student apply leave id 6', 6, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:34:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (217, 'Record updated On  student apply leave id 6', 6, NULL, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:34:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (218, 'New Record inserted On student apply leave id 7', 7, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:35:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (219, 'Record updated On  student apply leave id 7', 7, NULL, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:35:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (220, 'New Record inserted On student apply leave id 8', 8, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:39:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (221, 'New Record inserted On student apply leave id 9', 9, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:42:03', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (222, 'New Record inserted On student apply leave id 10', 10, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:42:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (223, 'New Record inserted On student apply leave id 11', 11, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:43:59', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (224, 'New Record inserted On student apply leave id 12', 12, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:45:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (225, 'New Record inserted On student apply leave id 13', 13, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:50:28', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (226, 'New Record inserted On student apply leave id 14', 14, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:53:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (227, 'New Record inserted On student apply leave id 15', 15, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 17:53:47', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (228, 'New Record inserted On student apply leave id 16', 16, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 18:01:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (229, 'Record updated On  student apply leave id 16', 16, NULL, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 18:01:46', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (230, 'Record updated On staff id 9', 9, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 18:34:15', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (231, 'Record updated On staff id 9', 9, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.54', '2021-11-02 18:34:15', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (232, 'Record updated On  permission student id 11', 11, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-03 14:21:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (233, 'Record updated On  permission student id 15', 15, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-03 14:21:28', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (234, 'Record updated On  permission student id 20', 20, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-03 14:21:52', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (235, 'Record updated On  permission student id 16', 16, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-03 14:22:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (236, 'Record updated On  permission student id 14', 14, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-03 14:22:34', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (237, 'New Record inserted On  categories id 24', 24, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 16:59:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (238, 'New Record inserted On students id 15', 15, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:18:52', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (239, 'New Record inserted On  student session id 15', 15, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:18:52', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (240, 'New Record inserted On users id 29', 29, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:18:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (241, 'New Record inserted On users id 30', 30, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:18:54', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (242, 'Record updated On students id 15', 15, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:18:54', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (243, 'Record updated On students id 15', 15, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:18:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (244, 'New Record inserted On  categories id 25', 25, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:50:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (245, 'Record deleted On categories id 25', 25, 5, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:51:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (246, 'Record deleted On categories id 24', 24, 5, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:51:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (247, 'New Record inserted On  categories id 26', 26, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:53:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (248, 'Record deleted On categories id 26', 26, 5, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-16 17:53:28', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (249, 'Record updated On sessions id 16', 16, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 15:10:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (250, 'Record updated On settings id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 15:30:33', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (251, 'New Record inserted On subjects id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:15:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (252, 'New Record inserted On subjects id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:17:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (253, 'New Record inserted On subjects id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:17:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (254, 'Record deleted On subjects id 5', 5, 5, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:17:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (255, 'Record deleted On subjects id 4', 4, 5, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:18:02', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (256, 'Record deleted On subjects id 3', 3, 5, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:18:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (257, 'New Record inserted On subjects id 6', 6, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:24:23', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (258, 'Record deleted On subjects id 6', 6, 5, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:24:29', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (259, 'New Record inserted On subjects id 7', 7, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:24:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (260, 'Record deleted On subjects id 7', 7, 5, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:24:45', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (261, 'New Record inserted On subjects id 8', 8, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:29:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (262, 'Record deleted On subjects id 8', 8, 5, 'Delete', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 16:29:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (263, 'New Record inserted On students id 16', 16, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 18:32:29', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (264, 'New Record inserted On  student session id 16', 16, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 18:32:29', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (265, 'New Record inserted On users id 31', 31, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 18:32:29', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (266, 'New Record inserted On users id 32', 32, 5, 'Insert', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 18:32:29', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (267, 'Record updated On students id 16', 16, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 18:32:29', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (268, 'Record updated On students id 16', 16, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 18:32:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (269, 'Record updated On students id 16', 16, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 18:32:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (270, 'Record updated On students id 16', 16, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 18:32:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (271, 'Record updated On students id 16', 16, 5, 'Update', '::1', 'Windows 10', 'Chrome 95.0.4638.69', '2021-11-17 18:32:30', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (272, 'New Record inserted On student apply leave id 17', 17, NULL, 'Insert', '127.0.0.1', 'Windows 10', 'Firefox 94.0', '2021-11-19 15:24:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (273, 'New Record inserted On leave types id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-19 15:29:55', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (274, 'Record updated On  student apply leave id 17', 17, NULL, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 94.0', '2021-11-19 16:05:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (275, 'Record updated On  student apply leave id 17', 17, NULL, 'Update', '127.0.0.1', 'Windows 10', 'Firefox 94.0', '2021-11-19 16:05:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (276, 'New Record inserted On  online exam id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-19 17:04:03', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (277, 'New Record inserted On  onlineexam questions id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-19 17:07:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (278, 'New Record inserted On  onlineexam questions id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-19 17:07:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (279, 'Record updated On  online exam id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-19 17:08:23', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (280, 'Record updated On  online exam id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-19 17:10:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (281, 'Record updated On  online exam id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-19 17:12:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (282, 'Record updated On  online exam id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-19 17:12:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (283, 'Record deleted On classes id 2', 2, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 15:25:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (284, 'New Record inserted On students id 17', 17, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 17:27:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (285, 'New Record inserted On  student session id 17', 17, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 17:27:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (286, 'New Record inserted On users id 33', 33, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 17:27:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (287, 'New Record inserted On users id 34', 34, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 17:27:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (288, 'Record updated On students id 17', 17, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 17:27:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (289, 'Record updated On  online exam id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 18:02:22', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (290, 'Record updated On  online exam id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 18:04:34', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (291, 'Record updated On  online exam id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 18:04:44', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (292, 'Record updated On  online exam id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 18:05:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (293, 'Record updated On  online exam id 3', 3, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 18:06:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (294, 'New Record inserted On student apply leave id 18', 18, NULL, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 18:22:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (295, 'New Record inserted On source id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 18:58:22', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (296, 'New Record inserted On source id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 18:58:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (297, 'New Record inserted On reference id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 18:59:05', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (298, 'New Record inserted On  enquiry id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 18:59:40', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (299, 'New Record inserted On students id 18', 18, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 19:08:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (300, 'New Record inserted On  student session id 18', 18, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 19:08:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (301, 'New Record inserted On users id 35', 35, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 19:08:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (302, 'New Record inserted On users id 36', 36, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 19:08:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (303, 'Record updated On students id 18', 18, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 19:08:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (304, 'New Record inserted On  enquiry id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 19:14:47', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (305, 'New Record inserted On visitors purpose id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 19:17:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (306, 'New Record inserted On  visitors  id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 19:17:47', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (307, 'New Record inserted On  enquiry id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 19:38:20', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (308, 'New Record inserted On  enquiry id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-24 19:39:58', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (309, 'New Record inserted On  categories id 27', 27, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 17:57:09', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (310, 'New Record inserted On grades id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 18:19:37', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (311, 'New Record inserted On subject groups id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 18:28:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (312, 'New Record inserted On homework id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 18:32:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (313, 'Record updated On homework id 1', 1, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 18:32:19', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (314, 'New Record inserted On homework id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 18:32:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (315, 'Record updated On homework id 2', 2, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 18:32:26', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (316, 'New Record inserted On homework id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 18:38:53', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (317, 'New Record inserted On homework id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 18:42:33', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (318, 'New Record inserted On homework id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 18:43:23', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (319, 'New Record inserted On homework id 6', 6, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 19:34:18', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (320, 'New Record inserted On homework id 7', 7, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 19:34:49', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (321, 'New Record inserted On homework id 8', 8, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-26 19:37:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (322, 'New Record inserted On homework id 9', 9, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:05:45', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (323, 'New Record inserted On homework id 10', 10, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:12:21', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (324, 'New Record inserted On homework id 11', 11, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:12:28', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (325, 'New Record inserted On homework id 12', 12, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:17:32', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (326, 'New Record inserted On homework id 13', 13, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:19:52', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (327, 'New Record inserted On homework id 14', 14, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:23:37', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (328, 'New Record inserted On homework id 15', 15, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:29:25', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (329, 'New Record inserted On homework id 16', 16, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:30:17', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (330, 'New Record inserted On homework id 17', 17, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:30:20', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (331, 'New Record inserted On homework id 18', 18, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:31:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (332, 'Record updated On homework id 18', 18, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 14:31:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (333, 'New Record inserted On homework id 19', 19, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:20:16', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (334, 'Record updated On students id 17', 17, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:25:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (335, 'Record updated On  student session id 17', 17, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:25:10', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (336, 'Record updated On students id 17', 17, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:25:44', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (337, 'Record updated On  student session id 17', 17, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:25:44', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (338, 'New Record inserted On homework id 20', 20, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:28:35', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (339, 'New Record inserted On homework id 21', 21, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:31:29', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (340, 'New Record inserted On homework id 22', 22, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:45:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (341, 'New Record inserted On homework id 23', 23, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:45:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (342, 'New Record inserted On homework id 24', 24, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:50:28', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (343, 'New Record inserted On homework id 25', 25, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:50:32', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (344, 'New Record inserted On homework id 26', 26, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:51:56', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (345, 'New Record inserted On homework id 27', 27, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:52:01', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (346, 'New Record inserted On homework id 28', 28, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:52:31', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (347, 'New Record inserted On homework id 29', 29, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:53:08', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (348, 'New Record inserted On homework id 30', 30, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 15:54:12', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (349, 'New Record inserted On homework id 31', 31, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 16:07:11', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (350, 'New Record inserted On homework id 32', 32, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 16:09:36', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (351, 'New Record inserted On libarary members id 1', 1, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:39:51', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (352, 'Record deleted On libarary members id 1', 1, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:42:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (353, 'Record deleted On book issues id 1', 1, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:42:27', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (354, 'New Record inserted On libarary members id 2', 2, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:42:37', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (355, 'Record deleted On libarary members id 2', 2, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:47:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (356, 'Record deleted On book issues id 2', 2, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:47:57', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (357, 'New Record inserted On libarary members id 3', 3, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:48:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (358, 'Record deleted On libarary members id 3', 3, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:48:39', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (359, 'Record deleted On book issues id 3', 3, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:48:39', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (360, 'New Record inserted On libarary members id 4', 4, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:49:14', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (361, 'Record deleted On libarary members id 4', 4, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:49:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (362, 'Record deleted On book issues id 4', 4, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:49:38', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (363, 'New Record inserted On libarary members id 5', 5, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:49:50', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (364, 'Record deleted On libarary members id 5', 5, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:50:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (365, 'Record deleted On book issues id 5', 5, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:50:04', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (366, 'New Record inserted On libarary members id 6', 6, 5, 'Insert', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:50:33', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (367, 'Record deleted On libarary members id 6', 6, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:52:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (368, 'Record deleted On book issues id 6', 6, 5, 'Delete', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 17:52:06', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (369, 'Record updated On staff id 10', 10, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 19:13:48', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (370, 'Record updated On staff id 10', 10, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 19:15:20', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES (371, 'Record updated On staff id 10', 10, 5, 'Update', '::1', 'Windows 10', 'Chrome 96.0.4664.45', '2021-11-30 19:15:21', NULL);


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT 0,
  `group_list` text DEFAULT NULL,
  `user_list` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `send_notification_id` (`send_notification_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: notification_setting
#

DROP TABLE IF EXISTS `notification_setting`;

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `is_notification` int(11) NOT NULL DEFAULT 0,
  `display_notification` int(11) NOT NULL DEFAULT 0,
  `template` longtext NOT NULL,
  `variables` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `template`, `variables`, `created_at`) VALUES (1, 'student_admission', '1', '0', 0, 0, 'Dear {{firstname}} {{lastname}} your admission is confirm in Class: {{class}} Section:  {{section}} for Session: {{current_session_name}} for more detail contact System Admin\r\n{{firstname}} {{lastname}} {{class}} {{section}} {{admission_no}} {{roll_no}} {{admission_date}} {{mobileno}} {{email}} {{dob}} {{guardian_name}} {{guardian_relation}} {{guardian_phone}} {{father_name}} {{father_phone}} {{blood_group}} {{mother_name}} {{gender}} {{guardian_email}}', '{{firstname}}  {{lastname}}  {{class}}  {{section}}  {{admission_no}}  {{roll_no}}  {{admission_date}}   {{mobileno}}  {{email}}  {{dob}}  {{guardian_name}}  {{guardian_relation}}  {{guardian_phone}}  {{father_name}}  {{father_phone}}  {{blood_group}}  {{mother_name}}  {{gender}}  {{guardian_email}} {{current_session_name}}', '2020-02-01 14:28:40');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `template`, `variables`, `created_at`) VALUES (2, 'exam_result', '1', '0', 0, 1, 'Dear {{student_name}} - {{exam_roll_no}}, your {{exam}} result has been published.', '{{student_name}} {{exam_roll_no}} {{exam}}', '2020-06-16 00:17:47');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `template`, `variables`, `created_at`) VALUES (3, 'fee_submission', '1', '0', 0, 1, 'Dear parents, we have received  Fees Amount {{fee_amount}} for  {{firstname}} {{lastname}}  by Your School Name', ' {{firstname}} {{lastname}} {{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '2020-02-08 22:53:20');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `template`, `variables`, `created_at`) VALUES (4, 'absent_attendence', '1', '0', 0, 1, 'Absent Notice :{{firstname}} {{lastname}}  was absent on date {{date}} in period {{subject_name}} {{subject_code}} {{subject_type}} from Your School Name', '{{firstname}} {{lastname}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{current_session_name}}             {{time_from}} {{time_to}} {{subject_name}} {{subject_code}} {{subject_type}} ', '2020-02-08 23:03:13');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `template`, `variables`, `created_at`) VALUES (5, 'login_credential', '1', '0', 0, 0, 'Hello {{display_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}}', '{{url}} {{display_name}} {{username}} {{password}}', '2020-02-08 21:25:33');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `template`, `variables`, `created_at`) VALUES (6, 'homework', '1', '0', 0, 1, 'New Homework has been created for {{student_name}} at {{homework_date}} for the class {{class}} {{section}} {{subject}}. kindly submit your homework before {{submit_date}} .Thank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}}', '2020-02-08 21:25:33');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `template`, `variables`, `created_at`) VALUES (7, 'fees_reminder', '1', '0', 0, 1, 'Dear parents, please pay fee amount Rs.{{due_amount}} of {{fee_type}} before {{due_date}} for {{firstname}} {{lastname}} from smart school (ignore if you already paid)', '{{fee_type}}{{fee_code}}{{due_date}}{{firstname}} {{lastname}}{{school_name}}{{fee_amount}}{{due_amount}}{{deposit_amount}}', '2020-02-08 21:25:33');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `template`, `variables`, `created_at`) VALUES (8, 'online_classes', '1', '0', 0, 1, 'Dear student, your live class \"{{title}}\" has been scheduled on {{date}} for the duration of {{duration}} minute, please do not share the link to any body.', '{{title}} {{date}} {{duration}}', '2020-06-25 15:09:17');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `template`, `variables`, `created_at`) VALUES (9, 'online_meeting', '1', '0', 0, 0, 'Dear staff, your live meeting \"{{title}}\" has been scheduled on {{date}} for the duration of {{duration}} minute, please do not share the link to any body.', '{{title}} {{date}} {{duration}} {{employee_id}} {{department}} {{designation}} {{name}} {{contact_no}} {{email}}', '2020-06-25 15:07:41');


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
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
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
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) NOT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_enroll` int(255) DEFAULT 0,
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `app_key` text DEFAULT NULL,
  `document` text DEFAULT NULL,
  `disable_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `exam` text DEFAULT NULL,
  `attempt` int(11) NOT NULL,
  `exam_from` date DEFAULT NULL,
  `exam_to` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `duration` time NOT NULL,
  `passing_percentage` float NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `publish_result` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `onlineexam_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `onlineexam` (`id`, `exam`, `attempt`, `exam_from`, `exam_to`, `time_from`, `time_to`, `duration`, `passing_percentage`, `description`, `session_id`, `publish_result`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'English', 1, '2021-09-01', '2021-10-31', NULL, NULL, '03:00:00', '33', 'Unit test', 15, 0, '1', '2021-09-24 13:19:19', NULL);
INSERT INTO `onlineexam` (`id`, `exam`, `attempt`, `exam_from`, `exam_to`, `time_from`, `time_to`, `duration`, `passing_percentage`, `description`, `session_id`, `publish_result`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Test Exam', 1, '2021-10-20', '2021-10-21', NULL, NULL, '01:00:00', '45', 'sadsdad', 15, 0, '1', '2021-10-19 16:15:05', NULL);
INSERT INTO `onlineexam` (`id`, `exam`, `attempt`, `exam_from`, `exam_to`, `time_from`, `time_to`, `duration`, `passing_percentage`, `description`, `session_id`, `publish_result`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'First exam', 1, '2021-11-18', '2021-11-25', NULL, NULL, '01:00:00', '100', 'First Exam', 16, 1, '1', '2021-11-24 18:06:58', NULL);


#
# TABLE STRUCTURE FOR: onlineexam_attempts
#

DROP TABLE IF EXISTS `onlineexam_attempts`;

CREATE TABLE `onlineexam_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onlineexam_student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_student_id` (`onlineexam_student_id`),
  CONSTRAINT `onlineexam_attempts_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `onlineexam_attempts` (`id`, `onlineexam_student_id`, `created_at`, `updated_at`) VALUES (2, 3, '2021-11-24 18:06:14', NULL);


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_id` (`onlineexam_id`),
  KEY `question_id` (`question_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `onlineexam_questions_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_questions_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_questions_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 3, NULL, '0', '2021-11-19 17:07:10', NULL);
INSERT INTO `onlineexam_questions` (`id`, `question_id`, `onlineexam_id`, `session_id`, `is_active`, `created_at`, `updated_at`) VALUES (2, 2, 3, NULL, '0', '2021-11-19 17:07:12', NULL);


#
# TABLE STRUCTURE FOR: onlineexam_student_results
#

DROP TABLE IF EXISTS `onlineexam_student_results`;

CREATE TABLE `onlineexam_student_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onlineexam_student_id` int(11) NOT NULL,
  `onlineexam_question_id` int(11) NOT NULL,
  `select_option` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_student_id` (`onlineexam_student_id`),
  KEY `onlineexam_question_id` (`onlineexam_question_id`),
  CONSTRAINT `onlineexam_student_results_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_student_results_ibfk_2` FOREIGN KEY (`onlineexam_question_id`) REFERENCES `onlineexam_questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `onlineexam_student_results` (`id`, `onlineexam_student_id`, `onlineexam_question_id`, `select_option`, `created_at`, `updated_at`) VALUES (3, 3, 1, 'opt_b', '2021-11-24 18:06:31', NULL);
INSERT INTO `onlineexam_student_results` (`id`, `onlineexam_student_id`, `onlineexam_question_id`, `select_option`, `created_at`, `updated_at`) VALUES (4, 3, 2, 'opt_b', '2021-11-24 18:06:31', NULL);


#
# TABLE STRUCTURE FOR: onlineexam_students
#

DROP TABLE IF EXISTS `onlineexam_students`;

CREATE TABLE `onlineexam_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onlineexam_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `onlineexam_id` (`onlineexam_id`),
  KEY `student_session_id` (`student_session_id`),
  CONSTRAINT `onlineexam_students_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  CONSTRAINT `onlineexam_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `onlineexam_students` (`id`, `onlineexam_id`, `student_session_id`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2021-09-24 13:20:01', NULL);
INSERT INTO `onlineexam_students` (`id`, `onlineexam_id`, `student_session_id`, `created_at`, `updated_at`) VALUES (3, 3, 17, '2021-11-24 18:05:54', NULL);


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: permission_category
#

DROP TABLE IF EXISTS `permission_category`;

CREATE TABLE `permission_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perm_group_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int(11) DEFAULT 0,
  `enable_add` int(11) DEFAULT 0,
  `enable_edit` int(11) DEFAULT 0,
  `enable_delete` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5010 DEFAULT CHARSET=utf8;

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
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (5006, 1, 'Drop Out Students', 'show_all_students', 1, 1, 1, 1, '2021-11-03 14:42:45');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (5007, 12, 'Assign Hostel', 'assign_hostel', 1, 1, 1, 1, '2021-11-03 14:50:29');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (5008, 12, 'Hostels Assigned ', 'assigned_hostels', 1, 1, 1, 1, '2021-11-03 14:52:59');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (5009, 12, 'Hostel Leaved Students', 'studenthostelleaved', 1, 1, 1, 1, '2021-11-03 14:54:22');


#
# TABLE STRUCTURE FOR: permission_group
#

DROP TABLE IF EXISTS `permission_group`;

CREATE TABLE `permission_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT 0,
  `system` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8;

INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (1, 'Fees', 'fees', 0, 1, 1, 2, '2020-06-11 06:21:35');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (2, 'Class Timetable', 'class_timetable', 1, 1, 1, 7, '2020-05-31 01:27:50');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (3, 'Homework', 'homework', 0, 1, 1, 19, '2020-06-01 08:19:14');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (4, 'Download Center', 'download_center', 0, 1, 1, 8, '2020-06-01 08:22:49');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (5, 'Attendance', 'attendance', 0, 1, 1, 5, '2020-06-01 08:27:18');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (7, 'Examinations', 'examinations', 0, 1, 1, 6, '2020-06-01 08:29:50');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (8, 'Notice Board', 'notice_board', 0, 1, 1, 13, '2020-06-01 08:30:35');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (11, 'Library', 'library', 0, 1, 0, 9, '2021-11-03 14:21:04');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (12, 'Transport Routes', 'transport_routes', 0, 1, 1, 11, '2020-06-01 09:21:30');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (13, 'Hostel Rooms', 'hostel_rooms', 0, 1, 1, 12, '2020-06-01 09:22:27');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (14, 'Calendar To Do List', 'calendar_to_do_list', 0, 1, 0, 21, '2021-11-03 14:22:34');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (15, 'Online Examination', 'online_examination', 0, 1, 0, 23, '2021-11-03 14:21:28');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (16, 'Teachers Rating', 'teachers_rating', 0, 1, 0, 0, '2021-11-03 14:22:07');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (17, 'Chat', 'chat', 0, 1, 1, 25, '2020-06-01 10:23:06');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (18, 'Multi Class', 'multi_class', 1, 1, 1, 26, '2020-05-31 01:26:52');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (19, 'Lesson Plan', 'lesson_plan', 0, 1, 1, 29, '2020-06-07 11:08:30');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (20, 'Syllabus Status', 'syllabus_status', 0, 1, 0, 29, '2021-11-03 14:21:52');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (23, 'Apply Leave', 'apply_leave', 0, 1, 1, 0, '2020-06-11 10:50:23');
INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (500, 'Live Classes', 'live_classes', 0, 1, 1, 500, '2021-10-30 18:35:05');


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
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: questions
#

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `opt_a` text DEFAULT NULL,
  `opt_b` text DEFAULT NULL,
  `opt_c` text DEFAULT NULL,
  `opt_d` text DEFAULT NULL,
  `opt_e` text DEFAULT NULL,
  `correct` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `questions` (`id`, `subject_id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `opt_e`, `correct`, `created_at`, `updated_at`) VALUES (1, 1, '<p>Who is the father of nation?</p>', '<p>Subhassh Chandra Bose</p>', '<p>Mahatma Gandhi</p>', '<p>Nehru</p>', '<p>Mangal Pandey</p>', '<p>Rajendra Prasad</p>\r\n', 'opt_b', '2021-11-19 17:07:01', NULL);
INSERT INTO `questions` (`id`, `subject_id`, `question`, `opt_a`, `opt_b`, `opt_c`, `opt_d`, `opt_e`, `correct`, `created_at`, `updated_at`) VALUES (2, 1, '<p>What is the National Game of India?</p>', '<p>Hockey</p>', '<p>Cricket</p>', '<p>Football</p>', '<p>Carrom</p>', '<p>Ludo</p>\r\n', 'opt_a', '2021-11-19 17:07:01', NULL);


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: reference
#

DROP TABLE IF EXISTS `reference`;

CREATE TABLE `reference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `reference` (`id`, `reference`, `description`) VALUES (1, 'Rajeev', 'sdsadd');


#
# TABLE STRUCTURE FOR: roles
#

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `is_superadmin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1483 DEFAULT CHARSET=utf8;

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
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1260, 2, 27, 1, 0, 0, 0, '2019-11-30 10:06:13');
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
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1464, 1, 5005, 1, 0, 0, 0, '2020-06-14 12:42:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1465, 2, 5005, 1, 0, 0, 0, '2020-06-14 12:59:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1466, 3, 5004, 1, 0, 0, 0, '2020-06-14 13:03:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1467, 1, 5004, 1, 0, 0, 0, '2020-06-14 12:42:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1468, 6, 5003, 1, 0, 0, 0, '2020-06-14 13:05:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1469, 4, 5003, 1, 0, 0, 0, '2020-06-14 13:05:28');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1470, 3, 5003, 1, 1, 0, 1, '2020-06-14 13:03:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1471, 2, 5003, 1, 1, 0, 1, '2020-06-14 12:59:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1472, 1, 5003, 1, 1, 0, 1, '2020-06-14 12:42:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1473, 2, 5002, 1, 1, 0, 1, '2020-06-14 12:59:50');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1474, 1, 5002, 1, 1, 0, 1, '2020-06-14 12:42:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1475, 1, 5001, 1, 0, 1, 0, '2020-06-14 12:42:11');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1478, 2, 5006, 1, 0, 0, 0, '2021-11-03 15:30:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1479, 2, 40, 1, 0, 0, 0, '2021-11-03 15:35:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1480, 2, 5007, 1, 0, 0, 0, '2021-11-03 15:35:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1481, 2, 5008, 1, 0, 0, 0, '2021-11-03 15:35:08');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1482, 2, 5009, 1, 0, 0, 0, '2021-11-03 15:35:08');


#
# TABLE STRUCTURE FOR: room_types
#

DROP TABLE IF EXISTS `room_types`;

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `room_types` (`id`, `room_type`, `description`, `created_at`, `updated_at`) VALUES (1, 'Non AC', 'Non AC Rooms', '2021-10-20 15:47:57', NULL);
INSERT INTO `room_types` (`id`, `room_type`, `description`, `created_at`, `updated_at`) VALUES (2, 'Ac', 'ljjjgjgjg', '2021-10-26 18:40:57', NULL);


#
# TABLE STRUCTURE FOR: sch_settings
#

DROP TABLE IF EXISTS `sch_settings`;

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `biometric` int(11) DEFAULT 0,
  `biometric_device` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `languages` varchar(500) NOT NULL,
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(255) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `is_duplicate_fees_invoice` int(1) DEFAULT 0,
  `timezone` varchar(30) DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `cron_secret_key` varchar(100) NOT NULL,
  `currency_place` varchar(50) NOT NULL DEFAULT 'before_number',
  `class_teacher` varchar(100) NOT NULL,
  `start_month` varchar(40) NOT NULL,
  `attendence_type` int(10) NOT NULL DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `admin_logo` varchar(255) NOT NULL,
  `admin_small_logo` varchar(255) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `fee_due_days` int(3) DEFAULT 0,
  `adm_auto_insert` int(1) NOT NULL DEFAULT 1,
  `adm_prefix` varchar(50) NOT NULL DEFAULT 'ssadm19/20',
  `adm_start_from` varchar(11) NOT NULL,
  `adm_no_digit` int(10) NOT NULL DEFAULT 6,
  `adm_update_status` int(11) NOT NULL DEFAULT 0,
  `staffid_auto_insert` int(11) NOT NULL DEFAULT 1,
  `staffid_prefix` varchar(100) NOT NULL DEFAULT 'staffss/19/20',
  `staffid_start_from` varchar(50) NOT NULL,
  `staffid_no_digit` int(11) NOT NULL DEFAULT 6,
  `staffid_update_status` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(255) DEFAULT 'no',
  `online_admission` int(1) DEFAULT 0,
  `is_blood_group` int(10) NOT NULL DEFAULT 1,
  `is_student_house` int(10) NOT NULL DEFAULT 1,
  `roll_no` int(11) NOT NULL DEFAULT 1,
  `category` int(11) NOT NULL,
  `religion` int(11) NOT NULL DEFAULT 1,
  `cast` int(11) NOT NULL DEFAULT 1,
  `mobile_no` int(11) NOT NULL DEFAULT 1,
  `student_email` int(11) NOT NULL DEFAULT 1,
  `admission_date` int(11) NOT NULL DEFAULT 1,
  `lastname` int(11) NOT NULL,
  `student_photo` int(11) NOT NULL DEFAULT 1,
  `student_height` int(11) NOT NULL DEFAULT 1,
  `student_weight` int(11) NOT NULL DEFAULT 1,
  `measurement_date` int(11) NOT NULL DEFAULT 1,
  `father_name` int(11) NOT NULL DEFAULT 1,
  `father_phone` int(11) NOT NULL DEFAULT 1,
  `father_occupation` int(11) NOT NULL DEFAULT 1,
  `father_pic` int(11) NOT NULL DEFAULT 1,
  `mother_name` int(11) NOT NULL DEFAULT 1,
  `mother_phone` int(11) NOT NULL DEFAULT 1,
  `mother_occupation` int(11) NOT NULL DEFAULT 1,
  `mother_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_relation` int(11) NOT NULL DEFAULT 1,
  `guardian_email` int(11) NOT NULL DEFAULT 1,
  `guardian_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_address` int(11) NOT NULL DEFAULT 1,
  `current_address` int(11) NOT NULL DEFAULT 1,
  `permanent_address` int(11) NOT NULL DEFAULT 1,
  `route_list` int(11) NOT NULL DEFAULT 1,
  `hostel_id` int(11) NOT NULL DEFAULT 1,
  `bank_account_no` int(11) NOT NULL DEFAULT 1,
  `national_identification_no` int(11) NOT NULL DEFAULT 1,
  `local_identification_no` int(11) NOT NULL DEFAULT 1,
  `rte` int(11) NOT NULL DEFAULT 1,
  `previous_school_details` int(11) NOT NULL DEFAULT 1,
  `student_note` int(11) NOT NULL DEFAULT 1,
  `upload_documents` int(11) NOT NULL DEFAULT 1,
  `staff_designation` int(11) NOT NULL DEFAULT 1,
  `staff_department` int(11) NOT NULL DEFAULT 1,
  `staff_last_name` int(11) NOT NULL DEFAULT 1,
  `staff_father_name` int(11) NOT NULL DEFAULT 1,
  `staff_mother_name` int(11) NOT NULL DEFAULT 1,
  `staff_date_of_joining` int(11) NOT NULL DEFAULT 1,
  `staff_phone` int(11) NOT NULL DEFAULT 1,
  `staff_emergency_contact` int(11) NOT NULL DEFAULT 1,
  `staff_marital_status` int(11) NOT NULL DEFAULT 1,
  `staff_photo` int(11) NOT NULL DEFAULT 1,
  `staff_current_address` int(11) NOT NULL DEFAULT 1,
  `staff_permanent_address` int(11) NOT NULL DEFAULT 1,
  `staff_qualification` int(11) NOT NULL DEFAULT 1,
  `staff_work_experience` int(11) NOT NULL DEFAULT 1,
  `staff_note` int(11) NOT NULL DEFAULT 1,
  `staff_epf_no` int(11) NOT NULL DEFAULT 1,
  `staff_basic_salary` int(11) NOT NULL DEFAULT 1,
  `staff_contract_type` int(11) NOT NULL DEFAULT 1,
  `staff_work_shift` int(11) NOT NULL DEFAULT 1,
  `staff_work_location` int(11) NOT NULL DEFAULT 1,
  `staff_leaves` int(11) NOT NULL DEFAULT 1,
  `staff_account_details` int(11) NOT NULL DEFAULT 1,
  `staff_social_media` int(11) NOT NULL DEFAULT 1,
  `staff_upload_documents` int(11) NOT NULL DEFAULT 1,
  `mobile_api_url` tinytext NOT NULL,
  `app_primary_color_code` varchar(20) DEFAULT NULL,
  `app_secondary_color_code` varchar(20) DEFAULT NULL,
  `app_logo` varchar(250) DEFAULT NULL,
  `zoom_api_key` varchar(100) DEFAULT NULL,
  `zoom_api_secret` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sch_settings` (`id`, `name`, `biometric`, `biometric_device`, `email`, `phone`, `address`, `lang_id`, `languages`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `is_duplicate_fees_invoice`, `timezone`, `session_id`, `cron_secret_key`, `currency_place`, `class_teacher`, `start_month`, `attendence_type`, `image`, `admin_logo`, `admin_small_logo`, `theme`, `fee_due_days`, `adm_auto_insert`, `adm_prefix`, `adm_start_from`, `adm_no_digit`, `adm_update_status`, `staffid_auto_insert`, `staffid_prefix`, `staffid_start_from`, `staffid_no_digit`, `staffid_update_status`, `is_active`, `online_admission`, `is_blood_group`, `is_student_house`, `roll_no`, `category`, `religion`, `cast`, `mobile_no`, `student_email`, `admission_date`, `lastname`, `student_photo`, `student_height`, `student_weight`, `measurement_date`, `father_name`, `father_phone`, `father_occupation`, `father_pic`, `mother_name`, `mother_phone`, `mother_occupation`, `mother_pic`, `guardian_relation`, `guardian_email`, `guardian_pic`, `guardian_address`, `current_address`, `permanent_address`, `route_list`, `hostel_id`, `bank_account_no`, `national_identification_no`, `local_identification_no`, `rte`, `previous_school_details`, `student_note`, `upload_documents`, `staff_designation`, `staff_department`, `staff_last_name`, `staff_father_name`, `staff_mother_name`, `staff_date_of_joining`, `staff_phone`, `staff_emergency_contact`, `staff_marital_status`, `staff_photo`, `staff_current_address`, `staff_permanent_address`, `staff_qualification`, `staff_work_experience`, `staff_note`, `staff_epf_no`, `staff_basic_salary`, `staff_contract_type`, `staff_work_shift`, `staff_work_location`, `staff_leaves`, `staff_account_details`, `staff_social_media`, `staff_upload_documents`, `mobile_api_url`, `app_primary_color_code`, `app_secondary_color_code`, `app_logo`, `zoom_api_key`, `zoom_api_secret`, `created_at`, `updated_at`) VALUES (1, 'Your School Name', 0, '', 'yourschoolemail@domain.com', 'Your School Phone', 'Your School Address', 4, '[\"4\"]', 'Your School Code', 'd-m-Y', '12-hour', 'USD', '$', 'disabled', 0, 'UTC', 16, '', 'after_number', 'no', '4', 0, '1.png', 'ww_logo.png', 'ww_favicon.png', 'default.jpg', 60, 1, 'School-', '000001', 6, 1, 0, '', '', 0, 1, 'no', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', '#424242', '#eeeeee', '1.png', NULL, NULL, '2021-11-17 15:30:33', NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (1, 'tulip', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (2, 'tulip', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (3, 'tet', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (4, 'tet', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (5, 'checvk', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (6, 'checvk', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (7, 'checvk', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (8, 'tulip', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (9, 'New House', 'New House Description', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (10, 'New House', 'New House Description', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (11, 'Check House', 'Check House ', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (12, 'new', '', 'yes');
INSERT INTO `school_houses` (`id`, `house_name`, `description`, `is_active`) VALUES (13, 'Tulip S', 'kndsk', 'yes');


#
# TABLE STRUCTURE FOR: sections
#

DROP TABLE IF EXISTS `sections`;

CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'a', 'no', '2021-09-04 11:14:53', NULL);
INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'b', 'no', '2021-09-04 11:14:57', NULL);
INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (3, 'c', 'no', '2021-09-04 11:14:59', NULL);
INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES (5, 'd', 'no', '2021-10-20 14:29:18', NULL);


#
# TABLE STRUCTURE FOR: send_notification
#

DROP TABLE IF EXISTS `send_notification`;

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text DEFAULT NULL,
  `visible_student` varchar(10) NOT NULL DEFAULT 'no',
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: sessions
#

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (7, '2016-17', 'no', '2017-04-20 12:12:19', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (11, '2017-18', 'no', '2017-04-20 12:11:37', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (13, '2018-19', 'no', '2016-08-25 00:56:44', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (14, '2019-20', 'no', '2016-08-25 00:56:55', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (15, '2020-21', 'no', '2021-11-17 15:24:21', '0000-00-00');
INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES (16, '2021-22', 'no', '2021-11-17 15:30:00', '0000-00-00');
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
  `contact` text DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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

INSERT INTO `source` (`id`, `source`, `description`) VALUES (1, 'Online', 'sad');
INSERT INTO `source` (`id`, `source`, `description`) VALUES (2, 'Whatsapp', 'njsnad');


#
# TABLE STRUCTURE FOR: staff
#

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `department` int(11) DEFAULT 0,
  `designation` int(11) DEFAULT 0,
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `zoom_api_key`, `zoom_api_secret`) VALUES (5, '9000', 0, 0, 0, '', '', 'Super Admin', '', '', '', '', '', 'fmohd9870@gmail.com', '2020-01-01', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$6iUFddOAhOmW45L77E3P9uz4/SK2kLHNU4.dYH4dZ29YKGAJHAkpy', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, NULL);
INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `zoom_api_key`, `zoom_api_secret`) VALUES (8, '010', 0, 1, 1, '', '', 'Test', 'Teacher', '', '', '1234567890', '', 'test@gmail.com', '1999-06-23', 'Single', '2021-10-19', '0000-00-00', '', '', '', '8.jpg', '$2y$10$/ur8UoXmk3VYEHDz659AteWFs35nsLp.PN27KBdoakO3Tyu4wXR1K', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '', NULL, NULL);
INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `zoom_api_key`, `zoom_api_secret`) VALUES (9, 's123', 0, 1, 1, 'kmdmskfmkdsm', 'mkmkasmkmdska', 'Rahul', 'Yadav', 'Father 1', 'Mother  1', '4455669877', '6116161665', 'rahul@gmail.com', '2009-07-15', 'Married', '2021-11-02', '0000-00-00', 'dsfdfsdffddfsfjjnjn', 'nkdsnfknfksnd', 'ddsmkmdfksfkds', '', '$2y$10$BSddxNwfkJPqWlRqJAxGLOqjYXiot6btb51L1hCh3SIxZu4GSyKxm', 'Male', '', '', '', '', '', '', '12344', '123', 'permanent', 'day', 'dsffdfsdffd', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', NULL, NULL);
INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `zoom_api_key`, `zoom_api_secret`) VALUES (10, 'ftftft46', 0, 1, 1, 'gcgcgcgcg', 'cchvhvhv', 'bjbjbjb', 'vvhvvh', 'bjbjbjb', 'hvhvhvh', '656-565-6565', '', 'test1@gmail.com', '2000-07-20', 'Single', '2021-11-30', '0000-00-00', 'ggjgjj', 'hhvhvhv', 'hvhvhvh', '', '$2y$10$./p6MiWtaRI8STzi7.oqIOPqeknBAjvYgYG5kosHZi.Va9PFULr22', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', NULL, NULL);


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: staff_attendance_type
#

DROP TABLE IF EXISTS `staff_attendance_type`;

CREATE TABLE `staff_attendance_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`) VALUES (1, 'Professor', 'yes');


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `staff_leave_details` (`id`, `staff_id`, `leave_type_id`, `alloted_leave`) VALUES (1, 10, 1, '');


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `entrydt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_staff_rating_staff` (`staff_id`),
  CONSTRAINT `FK_staff_rating_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: staff_roles
#

DROP TABLE IF EXISTS `staff_roles`;

CREATE TABLE `staff_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `FK_staff_roles_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_staff_roles_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES (3, 7, 5, 0, '2021-10-18 20:42:08', NULL);
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES (6, 2, 8, 0, '2021-10-20 15:35:53', NULL);
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES (7, 2, 9, 0, '2021-11-02 18:34:15', NULL);
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES (8, 4, 10, 0, '2021-11-30 19:15:20', NULL);


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `docs` text NOT NULL,
  `reason` text NOT NULL,
  `approve_by` int(11) NOT NULL,
  `request_type` int(11) NOT NULL COMMENT '0 student,1 staff',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (1, 1, '2021-12-03', '2021-12-04', '2021-11-02', 0, '2021-11-02 17:22:58', '', 'Reason for leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (2, 1, '2021-12-03', '2021-12-04', '2021-11-02', 0, '2021-11-02 17:23:03', '', 'Reason for leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (3, 1, '2021-11-03', '2021-12-07', '2021-11-02', 0, '2021-11-02 17:23:21', '', 'Reason for leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (4, 1, '2021-11-03', '2021-12-07', '2021-11-02', 0, '2021-11-02 17:23:51', '', 'Reason for leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (5, 1, '2021-11-03', '2021-12-07', '2021-11-02', 0, '2021-11-02 17:34:48', '5.jpg', 'Reason for leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (6, 1, '2021-11-03', '2021-12-07', '2021-11-02', 0, '2021-11-02 17:34:55', '6.jpg', 'Reason for leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (7, 1, '2021-11-03', '2021-12-07', '2021-11-02', 0, '2021-11-02 17:35:48', '7.jpg', 'Reason for leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (8, 1, '2021-11-07', '2021-11-15', '2021-11-02', 0, '2021-11-02 17:39:05', '', 'sick leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (9, 1, '2021-11-07', '2021-11-15', '2021-11-02', 0, '2021-11-02 17:42:03', '', 'sick leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (10, 1, '2021-11-07', '2021-11-15', '2021-11-02', 0, '2021-11-02 17:42:09', '', 'sick leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (11, 1, '2021-11-07', '2021-11-15', '2021-11-02', 0, '2021-11-02 17:43:59', '', 'sick leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (12, 1, '2021-11-07', '2021-11-15', '2021-11-02', 0, '2021-11-02 17:45:11', '', 'sick leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (13, 1, '2021-11-23', '2021-11-30', '2021-11-02', 0, '2021-11-02 17:50:28', '', 'Due to sick Leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (14, 1, '2021-11-25', '2021-11-30', '2021-11-02', 0, '2021-11-02 17:53:06', '', 'Application for leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (15, 1, '2021-11-28', '2021-11-30', '2021-11-02', 0, '2021-11-02 17:53:47', '', 'Application for leave', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (16, 1, '2021-11-24', '2021-11-26', '2021-11-02', 0, '2021-11-02 18:01:46', '16.jpg', 'Leave for marriage', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (17, 16, '2021-11-20', '2021-11-20', '2021-11-19', 2, '2021-11-19 16:49:18', '17.jpg', 'Not Feeling well', 0, 0);
INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES (18, 17, '2021-11-25', '2021-11-25', '2021-11-24', 2, '2021-11-24 18:32:56', '', 'mmkmkmkmk', 0, 0);


#
# TABLE STRUCTURE FOR: student_attendences
#

DROP TABLE IF EXISTS `student_attendences`;

CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_session_id` int(11) DEFAULT NULL,
  `biometric_attendence` int(1) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `biometric_device_data` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `attendence_type_id` (`attendence_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `student_doc` (`id`, `student_id`, `title`, `doc`) VALUES (1, 1, 'adhaar', 'big-white-metal-closed-roller-260nw-1073065202.jpg');
INSERT INTO `student_doc` (`id`, `student_id`, `title`, `doc`) VALUES (2, 1, 'asddas', 'depositphotos_52856505-stock-illustration-drill-bit.jpg');
INSERT INTO `student_doc` (`id`, `student_id`, `title`, `doc`) VALUES (3, 1, 'adsd', 'istockphoto-1127572985-612x612.jpg');


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
  `amount_fine` float(10,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `amount_detail` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_fees_master_id` (`student_fees_master_id`),
  KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `is_system` int(1) NOT NULL DEFAULT 0,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_session_id` (`student_session_id`),
  KEY `fee_session_group_id` (`fee_session_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `student_fees_master` (`id`, `is_system`, `student_session_id`, `fee_session_group_id`, `amount`, `is_active`, `created_at`) VALUES (1, 0, 1, 1, '0.00', 'no', '2021-10-26 15:03:35');
INSERT INTO `student_fees_master` (`id`, `is_system`, `student_session_id`, `fee_session_group_id`, `amount`, `is_active`, `created_at`) VALUES (2, 0, 3, 2, '0.00', 'no', '2021-10-26 15:13:50');


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
  `transport_fees` float(10,2) NOT NULL DEFAULT 0.00,
  `fees_discount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_active` varchar(255) DEFAULT 'no',
  `is_alumni` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `is_alumni`, `created_at`, `updated_at`) VALUES (1, 15, 1, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', 0, '2021-09-24 12:57:24', NULL);
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `is_alumni`, `created_at`, `updated_at`) VALUES (2, 15, 2, 4, 1, 0, 0, NULL, '0.00', '0.00', 'no', 0, '2021-09-24 13:06:57', NULL);
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `is_alumni`, `created_at`, `updated_at`) VALUES (15, 15, 15, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', 0, '2021-11-16 17:18:52', NULL);
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `is_alumni`, `created_at`, `updated_at`) VALUES (17, 16, 17, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', 0, '2021-11-24 17:27:56', NULL);
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `is_alumni`, `created_at`, `updated_at`) VALUES (18, 16, 18, 1, 1, 0, 0, NULL, '0.00', '0.00', 'no', 0, '2021-11-24 19:08:11', NULL);
INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `is_alumni`, `created_at`, `updated_at`) VALUES (19, 16, 17, 3, 1, 0, 0, NULL, '0.00', '0.00', 'no', 0, '2021-11-26 17:55:58', NULL);


#
# TABLE STRUCTURE FOR: student_sibling
#

DROP TABLE IF EXISTS `student_sibling`;

CREATE TABLE `student_sibling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `leave_date` date DEFAULT NULL,
  `add_info` text DEFAULT NULL,
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
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) DEFAULT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `measurement_date` date NOT NULL,
  `dis_reason` int(11) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `dis_note` text NOT NULL,
  `app_key` text DEFAULT NULL,
  `parent_app_key` text DEFAULT NULL,
  `disable_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `leave_date`, `add_info`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES (1, 2, 'School-000001', '', '2021-09-24', 'Rakesh', 'Kumar', 'No', 'uploads/student_images/1.png', '', '', NULL, NULL, NULL, 'Hindu', 'Kumar', '2016-01-31', 'Male', '', '', '', 0, 1, 'A+', 0, 0, '2021-11-18', 'assadsad', '', '', '', '', '', 'father', '', '', '', 'dsadasd', '', '', 'Ramesh Kumar', 'Father', '987654321', '', '', 'ramesh@gmail.com', '', '', '', 'yes', '', '125', '32', '2021-09-24', 0, '', '', NULL, NULL, '0000-00-00', '2021-11-08 16:10:48', NULL);
INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `leave_date`, `add_info`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES (2, 4, 'School-000002', '', '2021-09-24', 'gdfgd', 'fgdfgdsfg', 'No', 'uploads/student_images/no_image.png', '', '', NULL, NULL, NULL, '', '', '2019-09-24', 'Male', '', '', '', 0, 0, '', 0, 0, '2021-11-24', 'dfsf', '', '', '', '', '', 'father', '', '', '', '', '', '', 'dfgdfg', 'Father', 'ggdfsgdfgfdg', '', '', '', '', '', '', 'yes', '', '', '', '2021-09-24', 0, '', '', NULL, NULL, '0000-00-00', '2021-11-08 16:26:31', NULL);
INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `leave_date`, `add_info`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES (15, 30, 'School-000003', '151515', '2021-11-16', 'Suresh', 'Kumar', 'No', 'uploads/student_images/15.jpg', '151-515-1515', 'dsf@gmail.com', NULL, NULL, NULL, 'dsddsff', 'fdsdsf', '2009-03-12', 'Male', 'sasdsdsadsad', '', '1', 0, 1, 'O+', 1, 0, '2021-11-30', 'asdsd', '', '', '', '', '', 'father', 'Mahesh Kumar', '888-115-5888', 'sadsdsdsdasd', 'sadsaasdsd', '115-515-0000', 'asddsas', 'Mahesh Kumar', 'Father', '888-115-5888', 'sadsdsdsdasd', 'sasdsdsadsad', 'sd@gmail.com', '', '', '', 'yes', '', '151', '50', '2021-11-16', 0, '', '', NULL, NULL, '0000-00-00', '2021-11-16 17:41:26', NULL);
INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `leave_date`, `add_info`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES (16, 32, 'School-000004', '84848', '2021-11-17', 'jjbjdfsd', 'jnjdsnfj', 'No', 'uploads/student_images/16.jpg', '151-511-5554', 'ewrewe@gmail.com', NULL, NULL, NULL, 'jnjdsfjn', 'sdfmksdfm', '2019-11-14', 'Others', '', '', '2', 0, 1, 'O+', 0, 0, NULL, NULL, '', '', '', '', '', 'father', 'ddsfdsf', '123-232-1123', 'csdfdfs', 'ssdfsdf', '123-233-2123', 'fsdfdf', 'ddsfdsf', 'Father', '123-232-1123', 'csdfdfs', 'werwerwerwer', 'weere@gmail.com', 'uploads/student_images/16father.jpg', 'uploads/student_images/16mother.jpg', 'uploads/student_images/16guardian.jpg', 'yes', '', '1212', '12', '2021-11-17', 0, '', '', NULL, NULL, '0000-00-00', '2021-11-17 18:32:30', NULL);
INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `leave_date`, `add_info`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES (17, 34, 'School-000005', '485485', '2021-11-24', 'rctctc', 'jjnjn', 'No', 'uploads/student_images/no_image.png', '445-454-5545', 'fmohd9870@gmail.com', NULL, NULL, NULL, 'hbhbh', 'jnjnj', '2010-02-03', 'Male', '', '', '1', 0, 0, '', 0, 0, NULL, NULL, '', '', '', '', '', 'father', 'vhvhvhvhh', '484-548-4848', 'jbjjjnjnj', 'kkkknkn', '485-485-4545', 'yh hbjnkn', 'vhvhvhvhh', 'Father', '484-548-4848', 'jbjjjnjnj', 'njnjnj', 'fmohd9870@gmail.com', '', '', '', 'yes', '', '848', '88', '2021-11-24', 0, '', '', NULL, NULL, '0000-00-00', '2021-11-30 15:25:44', NULL);
INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `leave_date`, `add_info`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES (18, 36, 'School-000006', '5454', '2021-11-24', 'dsfsdf', 'sdfsd', 'No', 'uploads/student_images/no_image.png', '454-545-4555', 'dsfsdf@gmail.com', NULL, NULL, NULL, 'dsdfd', 'sdfsd', '2019-11-06', 'Male', '', '', '1', 0, 0, '', 0, 0, NULL, NULL, '', '', '', '', '', 'father', 'dsfsdf', '848-484-5454', 'fddfsddsff', 'fsddsdf', '511-512-1212', 'sadsda', 'dsfsdf', 'Father', '848-484-5454', 'fddfsddsff', 'dsdasd', 'fsdf@gmail.com', '', '', '', 'yes', '', '', '', '2021-11-24', 0, '', '', NULL, NULL, '0000-00-00', '2021-11-24 19:08:11', NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

INSERT INTO `students_leaved` (`id`, `current_email`, `current_phone`, `occupation`, `address`, `studentid`, `reason`, `created_at`, `name`) VALUES (1, 'Email@gmail.com', '9616161', 'asdsada', ' dsfsdf', 1, 'assadsad', '2021-11-18', 'Rakesh Kumar');
INSERT INTO `students_leaved` (`id`, `current_email`, `current_phone`, `occupation`, `address`, `studentid`, `reason`, `created_at`, `name`) VALUES (15, 'dsf@gmail.com', '151-515-1515', 'dsad', 'sasdsdsadsad', 15, 'asdsd', '2021-11-30', 'Suresh Kumar');


#
# TABLE STRUCTURE FOR: subject_group_class_sections
#

DROP TABLE IF EXISTS `subject_group_class_sections`;

CREATE TABLE `subject_group_class_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_group_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_section_id` (`class_section_id`),
  KEY `subject_group_id` (`subject_group_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `subject_group_class_sections_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_class_sections_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_class_sections_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 1, 15, NULL, 0, '2021-10-20 14:30:39', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (2, 1, 2, 15, NULL, 0, '2021-10-20 14:30:39', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (3, 1, 3, 15, NULL, 0, '2021-10-20 14:30:39', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (4, 2, 1, 16, NULL, 0, '2021-11-26 18:28:27', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (5, 2, 2, 16, NULL, 0, '2021-11-26 18:28:27', NULL);
INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES (6, 2, 3, 16, NULL, 0, '2021-11-26 18:28:27', NULL);


#
# TABLE STRUCTURE FOR: subject_group_subjects
#

DROP TABLE IF EXISTS `subject_group_subjects`;

CREATE TABLE `subject_group_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_group_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `subject_group_id` (`subject_group_id`),
  KEY `session_id` (`session_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `subject_group_subjects_ibfk_1` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_subjects_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_group_subjects_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (1, 1, 15, 1, '2021-10-20 14:30:39');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (2, 1, 15, 2, '2021-10-20 14:30:39');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (3, 2, 16, 1, '2021-11-26 18:28:27');
INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES (4, 2, 16, 2, '2021-11-26 18:28:27');


#
# TABLE STRUCTURE FOR: subject_groups
#

DROP TABLE IF EXISTS `subject_groups`;

CREATE TABLE `subject_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `subject_groups_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES (1, 'Group1', 'Group1 description\r\n', 15, '2021-10-20 14:30:39');
INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES (2, 'Group1', 'sadsadds', 16, '2021-11-26 18:28:27');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `session_id` (`session_id`),
  KEY `created_by` (`created_by`),
  KEY `created_for` (`created_for`),
  CONSTRAINT `subject_syllabus_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_syllabus_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_syllabus_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subject_syllabus_ibfk_4` FOREIGN KEY (`created_for`) REFERENCES `staff` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'english', 'Sub-01', 'theory', 'no', '2021-09-24 14:58:56', NULL);
INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES (2, 'Hindi', 'Hindi010', 'theory', 'no', '2021-10-20 14:29:41', NULL);


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
  `file_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `sign` varchar(200) DEFAULT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `is_name` int(1) NOT NULL DEFAULT 1,
  `is_father_name` int(1) NOT NULL DEFAULT 1,
  `is_mother_name` int(1) NOT NULL DEFAULT 1,
  `is_dob` int(1) NOT NULL DEFAULT 1,
  `is_admission_no` int(1) NOT NULL DEFAULT 1,
  `is_roll_no` int(1) NOT NULL DEFAULT 1,
  `is_address` int(1) NOT NULL DEFAULT 1,
  `is_gender` int(1) NOT NULL DEFAULT 1,
  `is_photo` int(11) NOT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `template_admitcards` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `sign`, `background_img`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_address`, `is_gender`, `is_photo`, `is_class`, `is_section`, `content_footer`, `created_at`, `updated_at`) VALUES (1, 'Sample Admit Card', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION (10+2) 2014', 'ab12c4b65f53ee621dcf84370a7c5be4.png', '0910482bf79df5fd103e8383d61b387a.png', 'Test', 'Mount Carmel School', 'test dmit card2', 'aa9c7087e68c5af1d2c04946de1d3bd3.png', '782a71f53ea6bca213012d49e9d46d98.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2020-02-28 19:56:15', NULL);


#
# TABLE STRUCTURE FOR: template_marksheets
#

DROP TABLE IF EXISTS `template_marksheets`;

CREATE TABLE `template_marksheets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(200) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `left_sign` varchar(200) DEFAULT NULL,
  `middle_sign` varchar(200) DEFAULT NULL,
  `right_sign` varchar(200) DEFAULT NULL,
  `exam_session` int(1) DEFAULT 1,
  `is_name` int(1) DEFAULT 1,
  `is_father_name` int(1) DEFAULT 1,
  `is_mother_name` int(1) DEFAULT 1,
  `is_dob` int(1) DEFAULT 1,
  `is_admission_no` int(1) DEFAULT 1,
  `is_roll_no` int(1) DEFAULT 1,
  `is_photo` int(11) DEFAULT 1,
  `is_division` int(1) NOT NULL DEFAULT 1,
  `is_customfield` int(1) NOT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `lesson_id` (`lesson_id`),
  CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: transport_route
#

DROP TABLE IF EXISTS `transport_route`;

CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_title` varchar(100) DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `transport_route` (`id`, `route_title`, `no_of_vehicle`, `fare`, `note`, `is_active`, `created_at`, `updated_at`) VALUES (1, 'Hazratganj', NULL, '0.00', NULL, 'no', '2021-10-20 15:44:13', NULL);


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
  `login_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (1, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 91.0, Windows 10', '2021-09-04 09:50:38');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (2, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 91.0, Windows 10', '2021-09-06 15:01:03');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (3, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-09-15 15:24:51');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (4, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-09-23 10:44:50');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (5, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-09-24 12:11:54');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (6, 'gursharan.smartdesignhut@gmail.com', 'Super Admin', '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-10-06 17:06:22');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (7, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 94.0.4606.81, Windows 10', '2021-10-18 20:43:53');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (8, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 94.0.4606.81, Windows 10', '2021-10-19 14:12:17');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (9, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 94.0.4606.81, Windows 10', '2021-10-20 14:05:04');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (10, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 94.0.4606.81, Windows 10', '2021-10-22 14:20:24');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (11, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 94.0.4606.81, Windows 10', '2021-10-25 14:12:19');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (12, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 94.0.4606.81, Windows 10', '2021-10-26 14:21:31');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (13, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-10-27 14:15:07');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (14, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-10-28 14:12:11');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (15, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-10-29 14:12:42');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (16, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-10-30 14:04:29');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (17, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-11-01 13:53:58');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (18, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-11-02 14:18:02');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (19, 'std1', 'student', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-11-02 14:20:03');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (20, 'parent1', 'parent', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-11-02 14:21:32');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (21, 'test@gmail.com', 'Teacher', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-11-02 14:59:08');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (22, 'rahul@gmail.com', 'Teacher', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-11-02 15:36:09');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (23, 'std1', 'student', '::1', 'Chrome 95.0.4638.54, Windows 10', '2021-11-02 17:21:00');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (24, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.69, Windows 10', '2021-11-03 14:06:39');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (25, 'parent1', 'parent', '::1', 'Chrome 95.0.4638.69, Windows 10', '2021-11-03 14:23:47');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (26, 'test@gmail.com', 'Teacher', '127.0.0.1', 'Firefox 93.0, Windows 10', '2021-11-03 14:45:35');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (27, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.69, Windows 10', '2021-11-08 14:16:46');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (28, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.69, Windows 10', '2021-11-11 16:04:00');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (29, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.69, Windows 10', '2021-11-12 14:38:09');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (30, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.69, Windows 10', '2021-11-15 14:36:11');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (31, 'parent1', 'parent', '::1', 'Chrome 95.0.4638.69, Windows 10', '2021-11-15 15:02:27');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (32, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.69, Windows 10', '2021-11-16 14:20:21');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (33, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 95.0.4638.69, Windows 10', '2021-11-17 15:06:12');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (34, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 96.0.4664.45, Windows 10', '2021-11-18 14:45:28');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (35, 'test@gmail.com', 'Teacher', '::1', 'Chrome 96.0.4664.45, Windows 10', '2021-11-19 15:19:20');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (36, 'std16', 'student', '127.0.0.1', 'Firefox 94.0, Windows 10', '2021-11-19 15:22:15');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (37, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 96.0.4664.45, Windows 10', '2021-11-24 14:10:39');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (38, 'std17', 'student', '::1', 'Chrome 96.0.4664.45, Windows 10', '2021-11-24 18:03:28');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (39, 'test@gmail.com', 'Teacher', '127.0.0.1', 'Firefox 94.0, Windows 10', '2021-11-24 18:16:24');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (40, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 96.0.4664.45, Windows 10', '2021-11-26 17:42:23');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (41, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 96.0.4664.45, Windows 10', '2021-11-30 14:04:53');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (42, 'test1@gmail.com', 'Librarian', '::1', 'Chrome 96.0.4664.45, Windows 10', '2021-11-30 19:17:33');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (43, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 96.0.4664.45, Windows 10', '2021-12-02 14:22:03');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (44, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 96.0.4664.45, Windows 10', '2021-12-02 16:52:05');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (45, 'fmohd9870@gmail.com', 'Super Admin', '::1', 'Chrome 96.0.4664.45, Windows 10', '2021-12-04 14:30:55');


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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (1, 1, 'std1', 'cz9w9r', '', 'student', '', 0, 'yes', '2021-09-24 12:57:24', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (2, 0, 'parent1', '1dtvji', '1', 'parent', '', 0, 'yes', '2021-09-24 12:57:24', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (3, 2, 'std2', 'cv7wat', '', 'student', '', 0, 'yes', '2021-09-24 13:06:57', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (4, 0, 'parent2', '8j34ri', '2', 'parent', '', 0, 'yes', '2021-09-24 13:06:57', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (5, 3, 'std3', 't4id2a', '', 'student', '', 0, 'yes', '2021-10-19 14:56:41', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (6, 0, 'parent3', 'tc0dbm', '3', 'parent', '', 0, 'yes', '2021-10-19 14:56:41', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (7, 4, 'std4', '4qzao6', '', 'student', '', 0, 'yes', '2021-10-19 18:29:04', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (8, 4, 'parent4', 'g6fihn', '4', 'parent', '', 0, 'yes', '2021-10-19 18:29:05', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (17, 9, 'std9', 'zge2lv', '', 'student', '', 0, 'yes', '2021-10-26 16:07:26', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (18, 0, 'parent9', 'ipl0vx', '9', 'parent', '', 0, 'yes', '2021-10-26 16:07:27', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (19, 10, 'std10', 'wfeo2p', '', 'student', '', 0, 'yes', '2021-10-26 16:42:17', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (20, 0, 'parent10', 'n2aaiw', '10', 'parent', '', 0, 'yes', '2021-10-26 16:42:17', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (21, 11, 'std11', '6xydw8', '', 'student', '', 0, 'yes', '2021-10-26 16:49:36', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (22, 0, 'parent11', 'jrldjr', '11', 'parent', '', 0, 'yes', '2021-10-26 16:49:36', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (23, 12, 'std12', 'bx3t6k', '', 'student', '', 0, 'yes', '2021-10-26 16:52:00', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (24, 0, 'parent12', 'xfp7il', '12', 'parent', '', 0, 'yes', '2021-10-26 16:52:00', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (25, 13, 'std13', 'gt69f7', '', 'student', '', 0, 'yes', '2021-10-26 16:54:17', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (26, 0, 'parent13', 'xiij7m', '13', 'parent', '', 0, 'yes', '2021-10-26 16:54:19', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (27, 14, 'std14', '6vnt8u', '', 'student', '', 0, 'yes', '2021-10-26 18:29:26', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (28, 0, 'parent14', '3nudj0', '14', 'parent', '', 0, 'yes', '2021-10-26 18:29:26', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (29, 15, 'std15', 'kzgj8g', '', 'student', '', 0, 'yes', '2021-11-16 17:18:52', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (30, 0, 'parent15', 'yc35t8', '15', 'parent', '', 0, 'yes', '2021-11-16 17:18:53', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (31, 16, 'std16', 'mnzqqr', '', 'student', '', 0, 'yes', '2021-11-17 18:32:29', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (32, 0, 'parent16', 'wiacp4', '16', 'parent', '', 0, 'yes', '2021-11-17 18:32:29', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (33, 17, 'std17', '497xmc', '', 'student', '', 0, 'yes', '2021-11-24 17:27:56', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (34, 0, 'parent17', 'by6vx6', '17', 'parent', '', 0, 'yes', '2021-11-24 17:27:57', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (35, 18, 'std18', 'i8ypqr', '', 'student', '', 0, 'yes', '2021-11-24 19:08:11', NULL);
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES (36, 0, 'parent18', 'z70m6f', '18', 'parent', '', 0, 'yes', '2021-11-24 19:08:11', NULL);


#
# TABLE STRUCTURE FOR: users_authentication
#

DROP TABLE IF EXISTS `users_authentication`;

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `vehicle_routes` (`id`, `route_id`, `vehicle_id`, `created_at`) VALUES (1, 1, 1, '2021-10-20 15:45:36');


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
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_model`, `manufacture_year`, `driver_name`, `driver_licence`, `driver_contact`, `note`, `created_at`) VALUES (1, '0101', 'Safari', '2018', 'Driver test', '090jnnnn0992', '1234567890', 'sdsddsas', '2021-10-20 15:45:17');


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

INSERT INTO `visitors_book` (`id`, `source`, `purpose`, `name`, `email`, `contact`, `id_proof`, `no_of_pepple`, `date`, `in_time`, `out_time`, `note`, `image`) VALUES (1, NULL, 'dsfdsf', 'sdffsdd', NULL, '123-212-3232', 'sdsdads', 2, '2021-11-24', '07:15 PM', '07:15 PM', 'dsfdfssd', '');


#
# TABLE STRUCTURE FOR: visitors_purpose
#

DROP TABLE IF EXISTS `visitors_purpose`;

CREATE TABLE `visitors_purpose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `visitors_purpose` (`id`, `visitors_purpose`, `description`) VALUES (1, 'dsfdsf', 'dffsfd');


