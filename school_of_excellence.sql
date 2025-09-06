-- ========================================
-- Assignment 1 + 2 Merged SQL Script
-- ========================================

-- 1️⃣ Create the database
CREATE DATABASE IF NOT EXISTS SchoolOfExcellence;

-- 2️⃣ Use the database
USE SchoolOfExcellence;

-- ========================================
-- 3️⃣ Create Students table
-- ========================================
CREATE TABLE IF NOT EXISTS Students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_date DATE,
    gender CHAR(1),
    join_date DATE,
    email VARCHAR(100),
    level TINYINT,
    track VARCHAR(10),
    gpa DECIMAL(5,2)
);

-- ========================================
-- 4️⃣ Create Teachers table
-- ========================================
CREATE TABLE IF NOT EXISTS Teachers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_date DATE,
    gender CHAR(1),
    email VARCHAR(100),
    office_number INT
);

-- ========================================
-- 5️⃣ Create Subjects table
-- ========================================
CREATE TABLE IF NOT EXISTS Subjects (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- ========================================
-- 6️⃣ Insert sample data into Students
-- ========================================
INSERT INTO Students (id, name, birth_date, gender, join_date, email, level, track, gpa) VALUES
(1, 'Alice Johnson', '2005-04-12', 'F', '2023-09-01', 'alice.johnson@example.com', 1, 'Science', 3.85),
(2, 'Bob Smith', '2004-11-23', 'M', '2023-09-01', 'bob.smith@example.com', 2, 'Science', 4.40),
(3, 'Charlie Davis', '2005-07-15', 'M', '2023-09-01', 'charlie.davis@example.com', 1, 'Science', 3.95),
(4, 'Diana Lee', '2004-03-08', 'F', '2023-09-01', 'diana.lee@example.com', 2, 'Arts', 3.20),
(5, 'Ethan Brown', '2005-09-30', 'M', '2023-09-01', 'ethan.brown@example.com', 3, 'Science', 3.10),
(6, 'Fiona Green', '2004-12-02', 'F', '2023-09-01', 'fiona.green@example.com', 1, 'Science', 4.90),
(7, 'George White', '2005-05-19', 'M', '2023-09-01', 'george.white@example.com', 3, 'Arts', 2.95),
(8, 'Hannah Black', '2004-08-14', 'F', '2023-09-01', 'hannah.black@example.com', 2, 'Science', 4.55),
(9, 'Ian Clark', '2005-01-27', 'M', '2023-09-01', 'ian.clark@example.com', 1, 'Science', 3.80),
(10, 'Julia King', '2004-06-10', 'F', '2023-09-01', 'julia.king@example.com', 2, 'Arts', 3.35);

-- ========================================
-- 7️⃣ Insert sample data into Teachers
-- ========================================
INSERT INTO Teachers (id, name, birth_date, gender, email, office_number) VALUES
(1, 'Alice Thompson', '1980-04-12', 'F', 'alice.thompson@example.com', 101),
(2, 'Brian Smith', '1975-11-23', 'M', 'brian.smith@example.com', 102),
(3, 'Catherine Davis', '1982-07-15', 'F', 'catherine.davis@example.com', 103),
(4, 'Daniel Lee', '1978-03-08', 'M', 'daniel.lee@example.com', 104),
(5, 'Emily Brown', '1985-09-30', 'F', 'emily.brown@example.com', 105),
(6, 'Frank Green', '1981-12-02', 'M', 'frank.green@example.com', 106),
(7, 'Grace White', '1983-05-19', 'F', 'grace.white@example.com', 107),
(8, 'Henry Black', '1979-08-14', 'M', 'henry.black@example.com', 108),
(9, 'Isabella Clark', '1984-01-27', 'F', 'isabella.clark@example.com', 109),
(10, 'Jack King', '1980-06-10', 'M', 'jack.king@example.com', 110);

-- ========================================
-- 8️⃣ Insert sample data into Subjects
-- ========================================
INSERT INTO Subjects (id, name) VALUES
(1, 'Mathematics'),
(2, 'Physics'),
(3, 'Chemistry'),
(4, 'Biology'),
(5, 'English'),
(6, 'History'),
(7, 'Geography');

-- ========================================
-- 9️⃣ Example SELECT queries
-- ========================================
SELECT * FROM Students;
SELECT * FROM Teachers;
SELECT * FROM Subjects;

-- ========================================
-- 10️⃣ Update examples
-- ========================================
UPDATE Students
SET email = 'yzw-xaqw@example.com'
WHERE id = 3;

UPDATE Teachers
SET office_number = 100
WHERE id = 1;

-- ========================================
-- 11️⃣ Rename a table
-- ========================================
RENAME TABLE Subjects TO school_Subjects;
RENAME TABLE school_Subjects TO Subjects;

-- ========================================
-- 12️⃣ Delete a column (optional)
-- ========================================
ALTER TABLE Subjects
DROP COLUMN description;

-- ========================================
-- Assignment 2 Operations
-- ========================================

-- 1️⃣ Create table for top students
CREATE TABLE IF NOT EXISTS top_students AS
SELECT *
FROM Students
WHERE gpa > 4.5;

-- 2️⃣ Create table for failed students
CREATE TABLE IF NOT EXISTS Failed_students AS
SELECT *
FROM Students
WHERE gpa < 3;

-- 3️⃣ Display students whose names start with Letter A
SELECT *
FROM Students
WHERE name LIKE 'A%';

-- 4️⃣ Display students whose names have exactly 4 letters
SELECT name
FROM Students
WHERE LENGTH(name) = 4;

-- 5️⃣ Display count of students in level 2
SELECT COUNT(*) AS Total_students
FROM Students
WHERE level = 2;

-- 6️⃣ Display distinct tracks
SELECT DISTINCT track
FROM Students;

-- 7️⃣ Display subject names in uppercase
SELECT UPPER(name) AS subject_name_upper
FROM Subjects;

-- 8️⃣ Average GPA
SELECT AVG(gpa) AS avg_gpa
FROM Students;

-- 9️⃣ Floor of average GPA
SELECT FLOOR(AVG(gpa)) AS avg_gpa_floor
FROM Students;

-- 10️⃣ Update gender column (F/M to Female/Male)
SET SQL_SAFE_UPDATES = 0;
UPDATE Students
SET gender = CASE
                WHEN gender = 'F' THEN 'Female'
                WHEN gender = 'M' THEN 'Male'
             END
WHERE id IS NOT NULL;
SET SQL_SAFE_UPDATES = 1;

-- 11️⃣ Correct GPA for students with GPA < 5
SET SQL_SAFE_UPDATES = 0;
UPDATE Students
SET gpa = gpa + 0.25
WHERE gpa < 5;
SET SQL_SAFE_UPDATES = 1;

-- ========================================
-- 12️⃣ View final state of tables
-- ========================================
SELECT * FROM Students;
SELECT * FROM top_students;
SELECT * FROM Failed_students;


