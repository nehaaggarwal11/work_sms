-- Smart School Zoom Live Classes DB
-- version 1.0
-- https://smart-school.in
-- https://qdocs.in

-- --------------------------------------------------------

CREATE TABLE `conferences` (
  `id` int(11) primary key auto_increment NOT NULL,
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `conference_staff` (
  `id` int(11) primary key auto_increment NOT NULL,
  `conference_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `conferences_history` (
 `id` int(11) primary key auto_increment NOT NULL,
  `conference_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `total_hit` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




ALTER TABLE `conferences_history`
  ADD KEY `confernce_id` (`conference_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_id` (`student_id`);


ALTER TABLE `conferences_history`
  ADD CONSTRAINT `conferences_history_ibfk_1` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conferences_history_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conferences_history_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;




ALTER TABLE `conferences`
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `created_id` (`created_id`);


ALTER TABLE `conference_staff`
  ADD KEY `conference_id` (`conference_id`),
  ADD KEY `staff_id` (`staff_id`);


ALTER TABLE `conferences`
  ADD CONSTRAINT `conferences_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conferences_ibfk_2` FOREIGN KEY (`created_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

ALTER TABLE `conference_staff`
  ADD CONSTRAINT `conference_staff_ibfk_1` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conference_staff_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;


INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `template`, `variables`, `created_at`) VALUES
(NULL, 'online_classes', '1', '0', 0, 1, 'Dear student, your live class \"{{title}}\" has been scheduled on {{date}} for the duration of {{duration}} minute, please do not share the link to any body.', '{{title}} {{date}} {{duration}}', '2020-06-25 15:09:17'),
(NULL, 'online_meeting', '1', '0', 0, 0, 'Dear staff, your live meeting \"{{title}}\" has been scheduled on {{date}} for the duration of {{duration}} minute, please do not share the link to any body.', '{{title}} {{date}} {{duration}} {{employee_id}} {{department}} {{designation}} {{name}} {{contact_no}} {{email}}', '2020-06-25 15:07:41');


ALTER TABLE sch_settings
  ADD `zoom_api_key` varchar(100) DEFAULT NULL after app_logo,
  ADD `zoom_api_secret` varchar(100) DEFAULT NULL after zoom_api_key;
 

ALTER TABLE staff
    ADD `zoom_api_key` varchar(100) DEFAULT NULL after verification_code,
  ADD `zoom_api_secret` varchar(100) DEFAULT NULL after zoom_api_key;



INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES

(500, 'Zoom Live Classes', 'zoom_live_classes', 1, 0, '2020-06-10 13:37:23');

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES

(5001, 500, 'Setting', 'setting', 1, 0, 1, 0, '2020-06-10 13:39:04'),
(5002, 500, 'Live Classes', 'live_classes', 1, 1, 0, 1, '2020-05-31 15:41:32'),
(5003, 500, 'Live Meeting', 'live_meeting', 1, 1, 0, 1, '2020-06-01 12:41:41'),
(5004, 500, 'Live Meeting Report', 'live_meeting_report', 1, 0, 0, 0, '2020-06-10 05:07:40'),
(5005, 500, 'Live Classes Report', 'live_classes_report', 1, 0, 0, 0, '2020-06-10 06:29:53');

INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES (500, 'Live Classes', 'live_classes', '0', '1', '1', '500', CURRENT_TIMESTAMP);

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES
(null, 1, 5005, 1, 0, 0, 0, '2020-06-14 12:42:11'),
(null, 2, 5005, 1, 0, 0, 0, '2020-06-14 12:59:50'),
(null, 3, 5004, 1, 0, 0, 0, '2020-06-14 13:03:50'),
(null, 1, 5004, 1, 0, 0, 0, '2020-06-14 12:42:11'),
(null, 6, 5003, 1, 0, 0, 0, '2020-06-14 13:05:52'),
(null, 4, 5003, 1, 0, 0, 0, '2020-06-14 13:05:28'),
(null, 3, 5003, 1, 1, 0, 1, '2020-06-14 13:03:50'),
(null, 2, 5003, 1, 1, 0, 1, '2020-06-14 12:59:50'),
(null, 1, 5003, 1, 1, 0, 1, '2020-06-14 12:42:11'),
(null, 2, 5002, 1, 1, 0, 1, '2020-06-14 12:59:50'),
(null, 1, 5002, 1, 1, 0, 1, '2020-06-14 12:42:11'),
(null, 1, 5001, 1, 0, 1, 0, '2020-06-14 12:42:11');

