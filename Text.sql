1
SELECT  *
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990

2
SELECT  *
FROM `courses`
WHERE `cfu`>10

3
SELECT  COUNT(*)
FROM `students`
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) < 30
ORDER BY  `date_of_birth` ASC
//In totale sono 1192

4
SELECT  *
FROM courses
WHERE `period`= "I semestre"
AND `year`= 1

5
SELECT  *
FROM `exams`
WHERE `date` = "2020-06-20"
AND `hour` BETWEEN "14:00:00" AND "23:59:59"

6
SELECT  *
FROM `degrees`
WHERE `level`="magistrale"

7
SELECT  COUNT(*)
FROM `departments`

8
SELECT  *
FROM `teachers`
WHERE `phone` IS NULL



/// Extra e Bonus

9
INSERT INTO `university_db`.`students` (`id`, `degree_id`, `name`, `surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`)
VALUES ('5001', '1', 'Andrea', 'Ragazzoli', '2000-11-15', 'RGZNDR00S15D434V', '2025-01-24', '625032', 'andrearaga56@gmail.com');

10
UPDATE `university_db`.`teachers`
SET `office_number` = '126'
WHERE (`id` = '58');

11
UPDATE `university_db`.`students`
SET `id` = '', `degree_id` = '', `name` = '', `surname` = '', `date_of_birth` = '', `fiscal_code` = '', `enrolment_date` = '', `registration_number` = '', `email` = ''
WHERE (`id` = '5001');


Bonus 1
SELECT COUNT(YEAR(`enrolment_date`)), (YEAR(`enrolment_date`)) AS Anno
FROM `students`
GROUP BY Anno

Bonus 2
SELECT `office_address`, COUNT(`office_address`) AS `n`
FROM `teachers`
GROUP BY `office_address`
ORDER BY `n` DESC

Bonus 3
SELECT `exam_id`, AVG(`vote`)
FROM `exam_student`
GROUP BY `exam_id`

Bonus 4
SELECT `department_id`, COUNT(`id`)
FROM `degrees`
GROUP BY `department_id`