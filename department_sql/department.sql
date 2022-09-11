/* selecting rooms that can seat at least 100 people */
SELECT name
FROM rooms
WHERE capacity > 100;

/* selecting the courses with the earliest start time */
SELECT name
FROM courses 
WHERE start_time=(SELECT MIN(start_time) FROM courses);

/* a list of all the students not enrolled in a course */
SELECT DISTINCT name
FROM   students
WHERE id NOT IN (SELECT DISTINCT student_id FROM enrolled);

/* counting the number of CS students enrolled in any course */
SELECT count(*) FROM enrolled WHERE student_id in 
(SELECT student_id FROM majorsln WHERE dept_id in (SELECT id FROM departments WHERE name = 'CS'))

/* counting the number of CS students enrolled in CSC275 */
SELECT count(*) FROM enrolled WHERE student_id in 
(SELECT student_id FROM majorsln WHERE dept_id in (SELECT id FROM departments WHERE name = 'CS')) 
and course_crn in (SELECT crn FROM courses WHERE name = 'CSC275')

/* counting the number of majors that each student has declared */
SELECT student_id, COUNT(dept_id) AS MajorsCount FROM majorsln GROUP BY student_id