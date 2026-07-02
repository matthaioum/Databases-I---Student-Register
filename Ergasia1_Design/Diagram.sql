Table STUDENTS {
  student_id int [primary key]
  student_name varchar(25)
  student_surname varchar(25)
  gender varchar(10)
  email varchar(255)
  address varchar(255)
  postal_code int
  phone int
  advisor_professor varchar(25)
  department_id int [ref: > DEPARTMENTS.department_id]
}

Table UNDERGRADUATESTUDENT {
  student_id int [primary key, ref: > STUDENTS.student_id]
  input_method varchar(15)
  category varchar(15)
  attendance_school varchar(50)
  input_sequence int
  admission_grade float
}

Table POSTGRADUATESTUDENT {
  student_id int [primary key, ref: > STUDENTS.student_id]
  first_degree varchar(50)
  first_degree_grade float
  graduation_university varchar(50)
  university_geographic_area varchar(50)
}

Table PROFICIENCYSTUDENT {
  student_id int [primary key, ref: > STUDENTS.student_id]
  master varchar(255)
  master_grade float
  master_university varchar(255)
  university_geographic_area varchar(255)
}

Table INSTRUCTORS {
  instructor_id int [primary key]
  instructor_name varchar(25)
  instructor_surname varchar(25)
  gender varchar(10)
  specialty varchar(50)
  rank varchar(25)
  knowledge_subject varchar(25)
  department_id int [ref: > DEPARTMENTS.department_id]
  email varchar(255)
  address varchar(255)
  postal_code int
  phone int
}

Table DEPARTMENTS {
  department_id int [primary key]
  department_name varchar(25)
  location varchar(50)
  headquarters varchar(50)
  postal_code int
  minimum_semesters int
  major varchar(50)
  email varchar(255)
  phone int
  social_media varchar(255)
  director varchar(25)
}

Table COURSES {
  course_id int [primary key]
  course_name varchar(25)
  department_id int [ref: > DEPARTMENTS.department_id]
  curriculum varchar(50)
  category varchar(20)
  ects int
  teaching_units int
  total_hours int
  gravity int
  semester int
  prerequisite varchar(25)
}

Table THESIS {
  thesis_id int [primary key]
  student_id int [ref: > STUDENTS.student_id]
  topic varchar(50)
  title varchar(50)
  instructor_id int [ref: > INSTRUCTORS.instructor_id]
  curriculum varchar(50)
  mandatory varchar(25)
  starting_conditions varchar(255)
  completion_limit varchar(50)
}

Table ENROLLMENT {
  student_id int [ref: > STUDENTS.student_id]
  course_id int [ref: > COURSES.course_id]
  grade float
  admission_reason varchar(50)
  course_status varchar(20)
  primary key (student_id, course_id)
}

Table EXAMS {
  exam_id int [primary key]
  student_id int [ref: > STUDENTS.student_id]
  course_id int [ref: > COURSES.course_id]
  exam_date date
  exam_type varchar(50)
  exam_grade float
  exam_result varchar(50)
  retake_statement varchar(25)
  retake_date date
  instructor_id int [ref: > INSTRUCTORS.instructor_id]
  retake_type varchar(50)
  retake_grade float
  retake_result varchar(50)
}

Table SCHEDULE {
  schedule_id int [primary key]
  course_id int [ref: > COURSES.course_id]
  instructor_id int [ref: > INSTRUCTORS.instructor_id]
  day varchar(15)
  hour varchar(5)
  building varchar(50)
  room varchar(30)
}

Table SCHOLARSHIPFINANCIALSUPPORT {
  scholarship_id int [primary key]
  student_id int [ref: > STUDENTS.student_id]
  scholarship_type varchar(30)
  scholarship_price float
  scholarship_start date
  scholarship_end date
  scholarship_grant varchar(50)
  scholarship_status varchar(15)
}

Table PRACTICALTRAINING {
  practical_id int [primary key]
  student_id int [ref: > STUDENTS.student_id]
  course_id int [ref: > COURSES.course_id]
  company varchar(50)
  practical_position varchar(20)
  duration varchar(20)
  instructor_id int [ref: > INSTRUCTORS.instructor_id]
  practical_evaluation varchar(255)
}

Table REQUESTS {
  request_id int [primary key]
  student_id int [ref: > STUDENTS.student_id]
  request_type varchar(25)
  request_date date
  request_status varchar(20)
  request_comments varchar(255)
}

Table EVALUATION {
  evaluation_id int [primary key]
  student_id int [ref: > STUDENTS.student_id]
  instructor_id int [ref: > INSTRUCTORS.instructor_id]
  course_id int [ref: > COURSES.course_id]
  rating int
  comments varchar(255)
}
