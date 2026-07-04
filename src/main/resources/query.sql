PRAGMA foreign_keys = ON;

-- 1
    SELECT * FROM courses;

-- 2
    SELECT * FROM students;

-- 3
    SELECT * FROM students WHERE age > 20;

-- 4
    SELECT students.name, courses.course_name
    FROM students
    JOIN courses
    ON courses.course_id = students.course_id;

-- 5
    SELECT course_id,
           COUNT(*)
    FROM
        students
    GROUP BY
        course_id;

-- 6
    UPDATE students
    SET age = 25
    WHERE id = 1;

    SELECT * FROM students WHERE students.id = 1;

-- 7
    UPDATE students
    SET course_id = 2
    WHERE id = 2;

    SELECT students.name, courses.course_name
    FROM students
    JOIN courses
    ON courses.course_id = students.course_id
    WHERE students.id = 2;

-- 8
    DELETE FROM students WHERE id = 4;

-- 9
    SELECT * FROM students;