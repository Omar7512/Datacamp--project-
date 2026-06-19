USE StudentDB;

-- جميع الطلاب
SELECT * FROM Students;

-- جميع المواد
SELECT * FROM Courses;

-- عرض الطلاب مع تخصصاتهم
SELECT
Students.full_name,
Departments.department_name
FROM Students
JOIN Departments
ON Students.department_id = Departments.department_id;

-- عرض تسجيل المواد
SELECT
Students.full_name,
Courses.course_name,
Enrollments.grade
FROM Enrollments
JOIN Students
ON Students.student_id = Enrollments.student_id
JOIN Courses
ON Courses.course_id = Enrollments.course_id;

-- عدد الطلاب بكل قسم
SELECT
Departments.department_name,
COUNT(*) AS total_students
FROM Students
JOIN Departments
ON Students.department_id=Departments.department_id
GROUP BY Departments.department_name;

-- عدد المسجلين بكل مادة
SELECT
Courses.course_name,
COUNT(*) AS total_enrolled
FROM Enrollments
JOIN Courses
ON Enrollments.course_id=Courses.course_id
GROUP BY Courses.course_name;
