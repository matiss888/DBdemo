PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

INSERT INTO courses (course_id,course_name,credits)
VALUES
    (1,'Become Artist',5),
    (2,'Learn Java',10),
    (3,'Human anatomy',8);

INSERT INTO students (id,name,email,age,course_id)
VALUES
    (1,'John','john@gmail.com',20,1),
    (2,'Matt','matt@gmail.com',22,1),
    (3,'Rock','rock@gmail.com',32,2),
    (4,'Kate','kate@gmail.com',65,2),
    (5,'Lily','lily@gmail.com',45,3);
