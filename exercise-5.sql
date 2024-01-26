CREATE TABLE Students (
    StudentID int,
    Name varchar(255)
);

CREATE TABLE Grades (
    StudentID int,
    Subject varchar(255),
    Grade varchar(10)
);

INSERT INTO Students
VALUES (1, 'Amy Smith'),
       (2, 'Garret Smith'),
       (3, 'Bob Smith');
       
INSERT INTO Grades
VALUES (1, 'Math', 'A'),
       (1, 'English', 'B'),
       (2, 'Math', 'B'),
       (2, 'English', 'A'),
       (3, 'Math', 'B'),
       (3, 'English', 'C');
       
SELECT * 
FROM Students
INNER JOIN Grades
ON Students.StudentID = Grades.StudentID;
