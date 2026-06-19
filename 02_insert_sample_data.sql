USE StudentDB;

INSERT INTO Departments(department_name)
VALUES
('Computer Engineering'),
('Software Engineering');

INSERT INTO Students
VALUES
(230201963,'Omar Abualrob','omarmoath665@gmail.com',1),
(230201964,'Ahmad Ali','ahmad@gmail.com',1),
(230201965,'Sara Ahmed','sara@gmail.com',2);

INSERT INTO Instructors(full_name,email)
VALUES
('Dr. Khalil','khalil@uni.edu'),
('Dr. Ayse','ayse@uni.edu');

INSERT INTO Courses(course_name,credits,instructor_id)
VALUES
('Database Systems',3,1),
('Data Structures',4,2),
('Programming II',4,1);

INSERT INTO Enrollments(student_id,course_id,grade)
VALUES
(230201963,1,'AA'),
(230201963,2,'BA'),
(230201964,1,'BB'),
(230201965,3,'AA');
