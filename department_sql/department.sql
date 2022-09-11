/* selecting rooms that can seat at least 100 people */
SELECT name
FROM rooms
WHERE capacity > 100;

/* selecting the courses with the earliest start time */
SELECT name
FROM courses 
WHERE start_time=(SELECT MIN(start_time) FROM courses);

