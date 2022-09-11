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