-- Β.1. Μαθήματα που έχει εγγραφεί ο φοιτητής
SELECT C.course_id, C.course_name
FROM ENROLLMENT E
JOIN COURSES C ON E.course_id = C.course_id
WHERE E.student_id = ?;

-- Β.2. Μαθήματα, διδάσκοντες και βαθμολογίες του φοιτητή
SELECT C.course_name, I.instructor_name, I.instructor_surname, E.exam_grade
FROM EXAMS E
JOIN COURSES C ON E.course_id = C.course_id
JOIN INSTRUCTORS I ON E.instructor_id = I.instructor_id
WHERE E.student_id = ?;

-- Β.3. Μαθήματα που έχει παρακολουθήσει φοιτητής με συγκεκριμένο διδάσκοντα
SELECT C.course_name, E.exam_date, E.exam_grade, E.exam_result
FROM EXAMS E
JOIN COURSES C ON E.course_id = C.course_id
WHERE E.student_id = ? AND E.instructor_id = ?;

-- Β.4. Πληροφορίες διδασκόντων και τμημάτων
SELECT I.instructor_id, I.rank, I.instructor_name, I.instructor_surname, I.specialty,
       D.department_name, D.location
FROM INSTRUCTORS I
LEFT JOIN DEPARTMENTS D ON CAST(I.department_id AS INTEGER) = D.department_id;

-- Β.5. Μέσος όρος όλων των βαθμών του φοιτητή
SELECT AVG(exam_grade) AS avg_grade 
FROM EXAMS 
WHERE student_id = ?;

-- Β.6. Μέσος όρος μόνο των επιτυχών μαθημάτων του φοιτητή
SELECT AVG(exam_grade) AS passed_avg_grade
FROM EXAMS
WHERE student_id = ? AND exam_result = 'Επιτυχία';

-- Β.7. Πτυχιακές που έχει αναλάβει ο διδάσκων
SELECT T.title, T.topic, T.student_id, S.student_name, S.student_surname
FROM THESIS T
JOIN STUDENTS S ON T.student_id = S.student_id
WHERE T.instructor_id = ?;
