USE StudentDB;

CREATE VIEW StudentCourses AS

SELECT
Students.full_name,
Courses.course_name,
Enrollments.grade

FROM Enrollments

JOIN Students
ON Students.student_id=Enrollments.student_id

JOIN Courses
ON Courses.course_id=Enrollments.course_id;
