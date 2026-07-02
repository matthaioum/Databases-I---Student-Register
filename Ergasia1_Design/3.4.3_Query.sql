CREATE TABLE `STUDENTS` (
  `student_id` integer PRIMARY KEY,
  `student_name` varchar(25),
  `student_surname` varchar(25),
  `gender` varchar(10),
  `email` varchar(255),
  `address` varchar(255),
  `postal_code` integer,
  `phone` integer,
  `advisor_professor` varchar(25),
  `department_id` integer
);

CREATE TABLE `UNDERGRADUATESTUDENT` (
  `student_id` integer PRIMARY KEY,
  `input_method` varchar(15),
  `category` varchar(15),
  `attendance_school` varchar(50),
  `input_sequence` integer,
  `admission_grade` float
);

CREATE TABLE `POSTGRADUATESTUDENT` (
  `student_id` integer PRIMARY KEY,
  `first_degree` varchar(50),
  `first_degree_grade` float,
  `graduation_university` varchar(50),
  `university_geographic_area` varchar(50)
);

CREATE TABLE `PROFICIENCYSTUDENT` (
  `student_id` integer PRIMARY KEY,
  `master` varchar(255),
  `master_grade` float,
  `master_university` varchar(255),
  `university_geographic_area` varchar(255)
);

CREATE TABLE `INSTRUCTORS` (
  `instructor_id` integer PRIMARY KEY,
  `instructor_name` varchar(25),
  `instructor_surname` varchar(25),
  `gender` varchar(10),
  `specialty` varchar(50),
  `rank` varchar(25),
  `knowledge_subject` varchar(25),
  `department_id` integer,
  `email` varchar(255),
  `address` varchar(255),
  `postal_code` integer,
  `phone` integer
);

CREATE TABLE `DEPARTMENTS` (
  `department_id` integer PRIMARY KEY,
  `department_name` varchar(25),
  `location` varchar(50),
  `headquarters` varchar(50),
  `postal_code` integer,
  `minimum_semesters` integer,
  `major` varchar(50),
  `email` varchar(255),
  `phone` integer,
  `social_media` varchar(255),
  `director` varchar(25)
);

CREATE TABLE `COURSES` (
  `course_id` integer PRIMARY KEY,
  `course_name` varchar(25),
  `department_id` integer,
  `curriculum` varchar(50),
  `category` varchar(20),
  `ects` integer,
  `teaching_units` integer,
  `total_hours` integer,
  `gravity` integer,
  `semester` integer,
  `prerequisite` varchar(25)
);

CREATE TABLE `THESIS` (
  `thesis_id` integer PRIMARY KEY,
  `student_id` integer,
  `topic` varchar(50),
  `title` varchar(50),
  `instructor_id` integer,
  `curriculum` varchar(50),
  `mandatory` varchar(25),
  `starting_conditions` varchar(255),
  `completion_limit` varchar(50)
);

CREATE TABLE `ENROLLMENT` (
  `student_id` integer PRIMARY KEY,
  `course_id` integer,
  `grade` float,
  `admission_reason` varchar(50),
  `course_status` varchar(20)
);

CREATE TABLE `EXAMS` (
  `exam_id` integer PRIMARY KEY,
  `student_id` integer,
  `course_id` integer,
  `exam_date` date,
  `exam_type` varchar(50),
  `exam_grade` float,
  `exam_result` varchar(50),
  `retake_statement` varchar(25),
  `retake_date` date,
  `instructor_id` integer,
  `retake_type` varchar(50),
  `retake_grade` float,
  `retake_result` varchar(50)
);

CREATE TABLE `SCHEDULE` (
  `schedule_id` integer PRIMARY KEY,
  `course_id` integer,
  `instructor_id` integer,
  `day` varchar(15),
  `hour` varchar(5),
  `building` varchar(50),
  `room` varchar(30)
);

CREATE TABLE `SCHOLARSHIPFINANCIALSUPPORT` (
  `scholarship_id` integer PRIMARY KEY,
  `student_id` integer,
  `scholarship_type` varchar(30),
  `scholarship_price` float,
  `scholarship_start` date,
  `scholarship_end` date,
  `scholarship_grant` varchar(50),
  `scholarship_status` varchar(15)
);

CREATE TABLE `PRACTICALTRAINING` (
  `practical_id` integer PRIMARY KEY,
  `student_id` integer,
  `course_id` integer,
  `company` varchar(50),
  `practical_position` varchar(20),
  `duration` varchar(20),
  `instructor_id` integer,
  `practical_evaluation` varchar(255)
);

CREATE TABLE `REQUESTS` (
  `request_id` integer PRIMARY KEY,
  `student_id` integer,
  `request_type` varchar(25),
  `request_date` date,
  `request_status` varchar(20),
  `request_comments` varchar(255)
);

CREATE TABLE `EVALUATION` (
  `evaluation_id` integer PRIMARY KEY,
  `student_id` integer,
  `instructor_id` integer,
  `course_id` integer,
  `rating` integer,
  `comments` varchar(255)
);

-- Ο κάθε φοιτητής ανήκει σε ένα τμήμα
ALTER TABLE `STUDENTS` ADD FOREIGN KEY (`department_id`) REFERENCES `DEPARTMENTS` (`department_id`);

-- Οι ειδικοί τύποι φοιτητών σχετίζονται με το βασικό STUDENTS table
ALTER TABLE `UNDERGRADUATESTUDENT` ADD FOREIGN KEY (`student_id`) REFERENCES `STUDENTS` (`student_id`);
ALTER TABLE `POSTGRADUATESTUDENT` ADD FOREIGN KEY (`student_id`) REFERENCES `STUDENTS` (`student_id`);
ALTER TABLE `PROFICIENCYSTUDENT` ADD FOREIGN KEY (`student_id`) REFERENCES `STUDENTS` (`student_id`);

-- Πτυχιακή ανήκει σε φοιτητή και έχει επιβλέποντα καθηγητή
ALTER TABLE `THESIS` ADD FOREIGN KEY (`student_id`) REFERENCES `STUDENTS` (`student_id`);
ALTER TABLE `THESIS` ADD FOREIGN KEY (`instructor_id`) REFERENCES `INSTRUCTORS` (`instructor_id`);

-- Εγγραφές σε μαθήματα (Enrollment)
ALTER TABLE `ENROLLMENT` ADD FOREIGN KEY (`student_id`) REFERENCES `STUDENTS` (`student_id`);
ALTER TABLE `ENROLLMENT` ADD FOREIGN KEY (`course_id`) REFERENCES `COURSES` (`course_id`);

-- Οι καθηγητές ανήκουν σε τμήματα
ALTER TABLE `INSTRUCTORS` ADD FOREIGN KEY (`department_id`) REFERENCES `DEPARTMENTS` (`department_id`);

-- Τα μαθήματα ανήκουν σε τμήματα
ALTER TABLE `COURSES` ADD FOREIGN KEY (`department_id`) REFERENCES `DEPARTMENTS` (`department_id`);

-- Ωρολόγιο πρόγραμμα μαθημάτων
ALTER TABLE `SCHEDULE` ADD FOREIGN KEY (`course_id`) REFERENCES `COURSES` (`course_id`);
ALTER TABLE `SCHEDULE` ADD FOREIGN KEY (`instructor_id`) REFERENCES `INSTRUCTORS` (`instructor_id`);

-- Εξετάσεις
ALTER TABLE `EXAMS` ADD FOREIGN KEY (`student_id`) REFERENCES `STUDENTS` (`student_id`);
ALTER TABLE `EXAMS` ADD FOREIGN KEY (`course_id`) REFERENCES `COURSES` (`course_id`);
ALTER TABLE `EXAMS` ADD FOREIGN KEY (`instructor_id`) REFERENCES `INSTRUCTORS` (`instructor_id`);

-- Αξιολογήσεις
ALTER TABLE `EVALUATION` ADD FOREIGN KEY (`student_id`) REFERENCES `STUDENTS` (`student_id`);
ALTER TABLE `EVALUATION` ADD FOREIGN KEY (`instructor_id`) REFERENCES `INSTRUCTORS` (`instructor_id`);
ALTER TABLE `EVALUATION` ADD FOREIGN KEY (`course_id`) REFERENCES `COURSES` (`course_id`);

-- Υποτροφίες
ALTER TABLE `SCHOLARSHIPFINANCIALSUPPORT` ADD FOREIGN KEY (`student_id`) REFERENCES `STUDENTS` (`student_id`);

-- Πρακτική άσκηση
ALTER TABLE `PRACTICALTRAINING` ADD FOREIGN KEY (`student_id`) REFERENCES `STUDENTS` (`student_id`);
ALTER TABLE `PRACTICALTRAINING` ADD FOREIGN KEY (`course_id`) REFERENCES `COURSES` (`course_id`);
ALTER TABLE `PRACTICALTRAINING` ADD FOREIGN KEY (`instructor_id`) REFERENCES `INSTRUCTORS` (`instructor_id`);

-- Αιτήματα φοιτητών
ALTER TABLE `REQUESTS` ADD FOREIGN KEY (`student_id`) REFERENCES `STUDENTS` (`student_id`);

