CREATE TABLE `Student` (
  `student_id` integer PRIMARY KEY,
  `student_name` varchar(255),
  `student_class` integer,
  `student_department` varchar(255),
  `class_teacher` varchar(255)
);

CREATE TABLE `Teacher` (
  `teacher_id` integer PRIMARY KEY,
  `teacher_name` varchar(255),
  `teacher_subject` varchar(255)
);

CREATE TABLE `Subject` (
  `name` varchar(255),
  `id` integer,
  `teacher_id` integer,
  PRIMARY KEY (`id`, `teacher_id`)
);

CREATE TABLE `Mark` (
  `subject_id` integer,
  `mark` integer,
  `mark_id` integer PRIMARY KEY,
  `student_id` integer
);

ALTER TABLE `Subject` ADD FOREIGN KEY (`id`) REFERENCES `Student` (`student_id`);

ALTER TABLE `Subject` ADD FOREIGN KEY (`id`) REFERENCES `Mark` (`mark_id`);

ALTER TABLE `Student` ADD FOREIGN KEY (`student_id`) REFERENCES `Teacher` (`teacher_id`);
