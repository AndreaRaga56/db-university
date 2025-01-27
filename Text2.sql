1
SELECT `students`.`id`, `students`.`name`, `students`.`surname`, `degrees`.`name`
FROM `students`
INNER JOIN `degrees` 
ON `degrees`.`id`=`students`.`degree_id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia"

2
SELECT `courses`.`id`, `courses`.`name`, `departments`.`name` AS `dipartimento`, `departments`.`address`,`degrees`.`level`, `degrees`.`name`
FROM `courses`
INNER JOIN `degrees` 
ON `degrees`.`id`=`courses`.`degree_id`
INNER JOIN `departments` 
ON `degrees`.`department_id`=`departments`.`id`
WHERE `degrees`.`level`="magistrale"
AND `departments`.`name` = "Dipartimento di Neuroscienze"

3
SELECT *
FROM `teachers` 
INNER JOIN `course_teacher` 
ON `teachers`.`id`=`course_teacher`.`teacher_id`
INNER JOIN `courses` 
ON `courses`.`id`=`course_teacher`.`course_id`
WHERE `teachers`.`id` = 44

4
SELECT `students`.`surname`, `students`.`name`, `degrees`.`name`, `degrees`.`level`, `departments`.`name`
FROM `students` 
INNER JOIN `degrees` 
ON `degrees`.`id`=`students`.`degree_id`
INNER JOIN `departments` 
ON `departments`.`id`=`degrees`.`department_id`
ORDER BY `students`.`surname`, `students`.`name`

5
SELECT `degrees`.`id`, `degrees`.`name`, `courses`.`name`, `teachers`.`name`, `teachers`.`surname`
FROM `teachers` 
INNER JOIN `course_teacher` 
ON `teachers`.`id`=`course_teacher`.`teacher_id`
INNER JOIN `courses` 
ON `courses`.`id`=`course_teacher`.`course_id`
INNER JOIN `degrees` 
ON `degrees`.`id`=`courses`.`degree_id`

6
SELECT `teachers`.`id`, `teachers`.`name`, `teachers`.`surname`, `departments`.`name`, COUNT(`courses`.`id` ) AS `numero di corsi`
FROM  `departments` 
INNER JOIN `degrees` 
ON `departments`.`id`=`degrees`.`department_id`
INNER JOIN `courses` 
ON `degrees`.`id`=`courses`.`degree_id`
INNER JOIN `course_teacher` 
ON `courses`.`id`=`course_teacher`.`course_id`
INNER JOIN `teachers`
ON `teachers`.`id`=`course_teacher`.`teacher_id`
WHERE `departments`.`name`="Dipartimento di Matematica"
GROUP BY `teachers`.`id`
