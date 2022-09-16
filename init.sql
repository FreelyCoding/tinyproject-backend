DROP DATABASE IF EXISTS `course_selection`;

CREATE DATABASE `course_selection`;
USE `course_selection`;

CREATE TABLE `student` 
(
    `id` int PRIMARY KEY AUTO_INCREMENT,
    `student_id` char(12) NOT NULL UNIQUE,
    `name` char(10) NOT NULL,
    `college_grade` char(6) NOT NULL,
    `major` char(20) NOT NULL DEFAULT "",
    `class` char(20) NOT NULL DEFAULT "",
    `email` varchar(255) NOT NULL DEFAULT ""
);

CREATE TABLE `course`
(
    `id` int PRIMARY KEY AUTO_INCREMENT,
    `course_id` char(20) NOT NULL UNIQUE,
    `name` char(15) NOT NULL,
    `teacher` char(10) NOT NULL,
    `classroom` char(15) NOT NULL DEFAULT "",
    `max_capacity` smallint NOT NULL,
    `cur_capacity` smallint NOT NULL DEFAULT 0,
    CONSTRAINT `check_max_capacity` CHECK (`max_capacity` >= 0),
    CONSTRAINT `check_cur_capacity` CHECK (`cur_capacity` >= 0)
);

CREATE TABLE `selection`
(
    `id` int PRIMARY KEY AUTO_INCREMENT,
    `student_id` char(12) NOT NULL,
    `course_id` char(20) NOT NULL,
    `score` smallint,
    FOREIGN KEY(`student_id`) REFERENCES `student`(`student_id`),
    FOREIGN KEY(`course_id`) REFERENCES `course`(`course_id`),
    CONSTRAINT `check_score` CHECK(score >= 0 AND score <= 100)
);

INSERT INTO `student` (`student_id`, `name`, `college_grade`)
VALUES ('20230000', '张三', '2020'), ('21230001', '李四', '2021'), ('20232000', '王五', '2020');

INSERT INTO `course` (`course_id`, `name`, `teacher`, `max_capacity`) 
VALUES ('JXB0001', '程序设计', '赵六', 100), ('JXB0004', '计算机组成', '钱七', 70);

INSERT INTO `selection` (`student_id`, `course_id`)
VALUES ('20230000', 'JXB0001'), ('21230001', 'JXB0004');

UPDATE `course`
SET `cur_capacity` = 1
WHERE `course_id` = 'JXB0001' OR `course_id` = 'JXB0004';


