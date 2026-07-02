-- INSERT για STUDENTS
INSERT INTO STUDENTS (student_id, student_name, student_surname, gender, email, address, postal_code, phone, advisor_professor, department_id) 
VALUES (2023001, 'Σπύρος', 'Παπαδοπούλου', 'Άρρεν', 'emaila@gmail.com', 'Διεύθυνση Κατοικίας 1', 49100, 123456789, 'Δρ. Χαριλάου', 1);
       (2023002, 'Λάμπρος', 'Κυριάκου', 'Άρρεν', 'emailb@gmail.com', 'Διεύθυνση Κατοικίας 2', 49100, 234567890, 'Δρ. Ιωάννου', 2);
       (2023003, 'Ελένη', 'Βασιλείου', 'Θήλυ', 'emailc@gmail.com', 'Διεύθυνση Κατοικίας 3', 49100, 345678901, 'Δρ. Παπαδημητρίου', 1);
       (2023004, 'Σμαράγδα', 'Γεωργίου', 'Θήλυ', 'emaild@gmail.com', 'Διεύθυνση Κατοικίας 4', 49100, 456789012, 'Δρ. Αντρέου', 1);
       (2023005, 'Ναταλία', 'Αλεξάνδρου', 'Θήλυ', 'emaile@gmail.com', 'Διεύθυνση Κατοικίας 5', 49100, 567890123, 'Δρ. Κοντοβούρκης', 4);

-- INSERT για UNDERGRADUATESTUDENT
INSERT INTO UNDERGRADUATESTUDENT (student_id, input_method, category, attendance_school, input_sequence, admission_grade) 
VALUES (2023001, 'Πανελλήνιες', 'Ντόπιος', '2ο Λύκειο Αγίου Σάββα', 5, 17.5);
       (2023002, 'Πανελλήνιες', 'Ντόπιος', '2ο Λύκειο Αγίου Ιωάννη', 15, 13.5);
       (2023003, 'Παγκύπριες', 'Αλλοδαπός', '7ο Λύκειο Πολεμιδιών', 2, 19.0);
       (2023004, 'Πανελλήνιες', 'Ντόπιος', '2ο Λύκειο Αγίου Σάββα', 22, 13.0);
       (2023005, 'Πανελλήνιες', 'Ντόπιος', '2ο Λύκειο Αγίου Σάββα', 10, 14.2);


-- INSERT για POSTGRADUATESTUDENT
INSERT INTO POSTGRADUATESTUDENT (student_id, first_degree, first_degree_grade, graduation_university, university_geographic_area) 
VALUES (2021001, 'Οικονομικά', 7.8, 'Οικονομικό Πανεπιστήμιο Αθηνών', 'Ελλάδα');
       (2021002, 'Μαθηματικά', 8.1, 'Πανεπιστήμιο Πατρών', 'Ελλάδα');
       (2021003, 'Ψυχολογία', 8.7, 'Πανεπιστήμιο Κύπρου', 'Κύπρος');
       (2021004, 'Πληροφορική', 9.2, 'Καποδιστριακό Πανεπιστήμιο Αθηνών', 'Ελλάδα');
       (2021005, 'Πληροφορική', 9.7, 'Τμήμα Πληροφορικής Ιονίου Πανεπιστημίου', 'Ελλάδα');
       

-- INSERT για PROFICIENCYSTUDENT
INSERT INTO PROFICIENCYSTUDENT (student_id, master, master_grade, master_university, university_geographic_area) 
VALUES (2020001, 'Διοίκηση', 8.1, 'Εθνικό και Καποδιστριακό Πανεπιστήμιο Αθηνών', 'Ελλάδα');
       (2020002, 'Θεωρητικά Μαθηματικά', 8.7, 'Πανεπιστήμιο Αιγαίου', 'Ελλάδα');
       (2020003, 'Κοινωνική Ψυχολογία Συγκρούσεων', 8.8, 'Εθνικό και Καποδιστριακό Πανεπιστήμιο Αθηνών', 'Ελλάδα');
       (2020004, 'Δίκτυα Επικοινωνιών και Ασφάλεια Συστημάτων', 7.6, 'Αριστοτέλειο Πανεπιστήμιο Θεσσαλονίκης', 'Ελλάδα');
       (2020005, 'Προηγμένα Συστήματα Πληροφορικής', 9.0, 'Πανεπιστήμιο Πειραιώς', 'Ελλάδα');


-- INSERT για INSTRUCTORS
INSERT INTO INSTRUCTORS (instructor_id, instructor_name, instructor_surname, gender, specialty, rank, knowledge_subject, department_id, email, address, postal_code, phone) 
VALUES (100, 'Μαρία', 'Ψαρουδάκη', 'Θήλυ', 'Μαθηματικός', 'Καθηγητής', 'Θεωρητικά Μαθηματικά', 2, 'instructor1@university.com', 'Διεύθυνση 1', 49100, 987654321);
       (101, 'Αναστασία', 'Μακρή', 'Θήλυ', 'Οικονομικά', 'Επίκουρος', 'Διοίκηση', 1, 'instructor2@university.com', 'Διεύθυνση 2', 49100, 876543210);
       (102, 'Ιωάννης', 'Χαραλάμπους', 'Άρρεν', 'Ψυχολογία', 'Αναπληρωτής', 'Κοινωνική Ψυχολογία Συγκρούσεων', 3, 'instructor3@university.com', 'Διεύθυνση 3', 49100, 765432109);
       (103, 'Γιώργος', 'Φιλίππου', 'Άρρεν', 'Πληροφορική', 'Καθηγητής', 'Προηγμένα Συστήματα Πληροφορικής', 4, 'instructor4@university.com', 'Διεύθυνση 4', 49100, 654321098);
       (104, 'Ειρήνη', 'Δημητρίου', 'Θήλυ', 'Πληροφορική', 'Επίκουρος', 'Δίκτυα Επικοινωνιών και Ασφάλεια Συστημάτων', 4, 'instructor5@university.com', 'Διεύθυνση 5', 49100, 543210987);


-- INSERT για DEPARTMENTS
INSERT INTO DEPARTMENTS (department_id, department_name, location, headquarters, postal_code, minimum_semesters, major, email, phone, social_media, director) 
VALUES (4, 'Τμήμα Πληροφορικής Ιονίου Πανεπιστημίου', 'Κέρκυρα', 'Κέρκυρα', 49100, 8, 'Πληροφορική', 'cs@university.com', 2101234567, 'social1', 'Πρύτανης Αντρέας Χρίστου');
       (3, 'Τμήμα Ιστορίας Ιονίου Πανεπιστημίου', 'Κέρκυρα', 'Κέρκυρα', 49100, 8, 'Ιστορία', 'cs@university.com', 2101234567, 'social1', 'Πρύτανης Αντρέας Χρίστου');
       (1, 'Διοίκηση Επιχειρήσεων', 'Πάτρα', 'Πάτρα', 49102, 8, 'Διοίκηση Επιχειρήσεων', 'cs2@university.com', 2101234577, 'social3', 'Δρ. Ιάκωβος Καλλίδης');
       (2, 'Τμήμα Μουσικής Ιονίου Πανεπιστημίου', 'Κέρκυρα', 'Κέρκυρα', 49100, 8, 'Μουσική', 'cs@university.com', 2101234567, 'social1', 'Πρύτανης Αντρέας Χρίστου');
       (5, 'Ψυχολογία', 'Κύπρος', 'Κύπρος', 4285, 8, 'Ψυχολογία', 'cs4@university.com', 99548756, 'social4', 'Δρ. Αλέξαντρος Αντωνίου');


-- INSERT για THESIS
INSERT INTO THESIS (thesis_id, student_id, topic, title, instructor_id, curriculum, mandatory, starting_conditions, completion_limit) 
VALUES (2, 2023002, 'Πτυχιακή 2', 'Τίτλος 2', 104, 'Πληροφορική', 'Ναι', 'Σχόλια', '6 μήνες');
       (3, 2023003, 'Πτυχιακή 3', 'Τίτλος 3', 102, 'Ψυχολογία', 'Όχι', 'Σχόλια', '3 μήνες');
       (4, 2023004, 'Πτυχιακή 4', 'Τίτλος 4', 101, 'Διοίκηση', 'Ναι', 'Σχόλια', '3 μήνες');
       (5, 2023005, 'Πτυχιακή 5', 'Τίτλος 5', 100, 'Μαθηματικά', 'Όχι', 'Σχόλια', '6 μήνες');


-- INSERT για ENROLLMENT
INSERT INTO ENROLLMENT (student_id, course_id, grade, admission_reason, course_status) 
VALUES (2023001, 1, 4, 'NULL', 'Ενεργό');
       (2023002, 2, 5, 'NULL', 'Ανενεργό');
       (2023003, 3, 6, 'NULL', 'Ανενεργό');
       (2023004, 4, 3, 'NULL', 'Ενεργό');
       (2023005, 5, 10, 'NULL', 'Ενεργό');

-- INSERT για EXAMS
INSERT INTO EXAMS (exam_id, student_id, course_id, exam_date, exam_type, exam_grade, exam_result, retake_statement, retake_date, instructor_id, retake_type, retake_grade, retake_result) 
VALUES (1, 2023001, 1, '2025-06-01', 'Γραπτή', 5, 'Επιτυχία', 'Όχι', NULL, 1, NULL, NULL, NULL);
       (2, 2023002, 1, '2025-06-02', 'Γραπτή', 3, 'Αποτυχία', 'Ναι', NULL, 1, NULL, NULL, NULL);
       (3, 2023003, 1, '2025-06-04', 'Προφορική', 7, 'Επιτυχία', 'Όχι', NULL, 1, NULL, NULL, NULL);
       (4, 2023004, 1, '2025-06-06', 'Προφορική', 9, 'Επιτυχία', 'Όχι', NULL, 1, NULL, NULL, NULL);
       (5, 2023005, 1, '2025-06-07', 'Γραπτή', 2, 'Αποτυχία', 'Ναι', NULL, 1, NULL, NULL, NULL);

-- INSERT για SCHEDULE
INSERT INTO SCHEDULE (schedule_id, course_id, instructor_id, day, hour, building, room) 
VALUES (1, 1, 100, 'Δευτέρα', '11:00', 'Αρεταίος', 'AΙΘ1');
       (2, 2, 101, 'Τρίτη', '13:00', 'Γαληνός', 'AΙΘ1');
       (3, 3, 102, 'Τρίτη', '18:00', 'Γαληνός', 'AΙΘ1');
       (4, 4, 103, 'Πέμπτη', '09:00', 'Αρεταίος', 'AΙΘ2');
       (5, 5, 104, 'Παρασκευή', '13:00', 'Αρεταίος', 'AΙΘ3');

-- INSERT για SCHOLARSHIPFINANCIALSUPPORT
INSERT INTO SCHOLARSHIPFINANCIALSUPPORT (scholarship_id, student_id, scholarship_type, scholarship_price, scholarship_start, scholarship_end, scholarship_grant, scholarship_status) 
VALUES (1, 2023001, 'Για Διεθνής Φοιτητές', 2000, '2025-01-01', '2025-12-31', 'Πανεπιστήμιο', 'Ενεργό');
       (2, 2023002, 'Με Βάση την Αξία', 2500, '2024-01-01', '2024-12-31', 'Πανεπιστήμιο', 'Ανενεργό');
       (3, 2023003, 'Με Βάση τις Ανάγκες', 3200, '2024-10-10', '2025-10-10', 'Πανεπιστήμιο', 'Ενεργό');
       (4, 2023004, 'Με Ιδιαίτερη Εστίαση', 2600, '2023-05-05', '2024-05-05', 'Πανεπιστήμιο', 'Ανενεργό');
       (5, 2023005, 'Για Διεθνής Φοιτητές', 2200, '2025-01-01', '2025-06-31', 'Πανεπιστήμιο', 'Ενεργό');

-- INSERT για PRACTICALTRAINING
INSERT INTO PRACTICALTRAINING (practical_id, student_id, course_id, company, practical_position, duration, instructor_id, practical_evaluation) 
VALUES (1, 2023001, 1, 'Εταιρεία 1', 'Θέση 1', '6 μήνες', 101, 'Πολύ Καλά');
       (2, 2023002, 2, 'Εταιρεία 2', 'Θέση 2', '6 μήνες', 102, 'Εξαιρετικά');
       (3, 2023003, 3, 'Εταιρεία 3', 'Θέση 3', '6 μήνες', 103, 'Πολύ Καλά');
       (4, 2023004, 4, 'Εταιρεία 4', 'Θέση 4', '6 μήνες', 104, 'Μέτρια');
       (5, 2023005, 5, 'Εταιρεία 5', 'Θέση 5', '6 μήνες', 105, 'Εξαιρετικά');

-- INSERT για REQUESTS
INSERT INTO REQUESTS (request_id, student_id, request_type, request_date, request_status, request_comments) 
VALUES (1, 2023001, 'Βεβαίωση Σπουδών', '2025-03-01', 'Ολοκληρώθηκε', NULL);
       (2, 2023001, 'Απαλλαγή Μαθημάτων', '2025-03-03', 'Ολοκληρώθηκε', NULL);
       (3, 2023002, 'Μεταγραφή', '2025-03-12', 'Αναμένεται', NULL);
       (4, 2023003, 'Βεβαίωση Σπουδών', '2025-03-19', 'Αναμένεται', NULL);
       (5, 2023005, 'Παράπονα', '2025-03-21', 'Αναμένεται', NULL);

-- INSERT για EVALUATION
INSERT INTO EVALUATION (evaluation_id, student_id, instructor_id, course_id, rating, comments) 
VALUES (1, 2023001, 100, 1, 5, NULL);
       (2, 2023002, 101, 2, 4, NULL);
       (3, 2023003, 102, 3, 2, NULL);
       (4, 2023004, 103, 4, 2, NULL);
       (5, 2023005, 104, 5, 1, NULL);

-- Νέοι φοιτητές για POSTGRADUATE και PROFICIENCY (για JOIN στον STUDENTS)

INSERT INTO STUDENTS (student_id, student_name, student_surname)
VALUES 
(2021002, 'Γεώργιος', 'Παπαδόπουλος'),
(2021003, 'Αικατερίνη', 'Δημητρίου'),
(2021004, 'Παναγιώτης', 'Αντωνίου'),
(2021005, 'Μαρία', 'Κωνσταντίνου'),
(2020002, 'Ιωάννης', 'Σωτηρίου'),
(2020003, 'Ελένη', 'Χριστοδούλου'),
(2020004, 'Δημήτρης', 'Νικολάου'),
(2020005, 'Αναστασία', 'Κυριακίδη');