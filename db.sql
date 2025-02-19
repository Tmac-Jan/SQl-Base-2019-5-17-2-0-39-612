create DATABASE student_examination_sys

CREATE TABLE `student`(
`id` varchar(32) NOT NULL PRIMARY key,
`name` varchar(32) NOT NULL,
`age` tinyint NOT NULL,
`sex` VARCHAR(2) NOT NULL,
);
INSERT INTO `student` VALUES ('001', '张三', 18, '男');
INSERT INTO `student` VALUES ('002', '李四', 20, '女');

CREATE TABLE `student`  (
  `id` varchar(32) CHARACTER NOT NULL,
  `name` varchar(32) CHARACTER NOT NULL,
  `age` tinyint(4) NOT NULL,
  `sex` varchar(2) CHARACTER  NOT NULL,
  PRIMARY KEY (`id`)
)
INSERT INTO `subject` VALUES ('1001', '语文', '王老师', '本次考试比较简单');
INSERT INTO `subject` VALUES ('1002', '数学', '刘老师', '本次考试比较难');


CREATE table `score` (
`id` varchar(32) int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`student_id` varchar(32) NOT NULL,
`subject_id` varchar(32) NOT NULL,
`score` decimal(2,1) NOT NULL,
CONSTRAINT `FK_score_student_id` FOREIGN KEY(`student_id`) REFERENCES `student`(`id`) on delete cascade on update cascade
);
alter table `score` add FOREIGN KEY (`subject_id`) REFERENCES `subject`(`id`);
INSERT INTO `score` VALUES (1, '001', '1001', 80.0);
INSERT INTO `score` VALUES (2, '002', '1002', 60.0);
INSERT INTO `score` VALUES (3, '001', '1001', 70.0);
INSERT INTO `score` VALUES (4, '002', '1002', 60.5);