create DATABASE student_examination_sys

CREATE TABLE `student`(
`id` varchar(32) NOT NULL PRIMARY key,
`name` varchar(32) NOT NULL,
`age` tinyint NOT NULL,
`sex` VARCHAR(2) NOT NULL,
);
CREATE TABLE `student`  (
  `id` varchar(32) CHARACTER NOT NULL,
  `name` varchar(32) CHARACTER NOT NULL,
  `age` tinyint(4) NOT NULL,
  `sex` varchar(2) CHARACTER  NOT NULL,
  PRIMARY KEY (`id`)
)

SET FOREIGN_KEY_CHECKS = 1;

CREATE table `score` (
`id` varchar(32) NOT NULL PRIMARY key,
`student_id` varchar(32) NOT NULL,
`subject_id` varchar(32) NOT NULL,
`score` decimal(2,1) NOT NULL,
CONSTRAINT `FK_score_student_id` FOREIGN KEY(`student_id`) REFERENCES `student`(`id`) on delete cascade on update cascade
);
alter table `score` add FOREIGN KEY (`subject_id`) REFERENCES `subject`(`id`);