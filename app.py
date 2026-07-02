from flask import Flask, render_template, request
import sqlite3

app = Flask(__name__)

def get_db_connection():
    conn = sqlite3.connect('university.db')
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/student_courses', methods=['GET', 'POST'])
def student_courses():
    results = []
    if request.method == 'POST':
        student_id = request.form['student_id']
        conn = get_db_connection()
        results = conn.execute('''
            SELECT C.course_id, C.course_name
            FROM ENROLLMENT E
            JOIN COURSES C ON E.course_id = C.course_id
            WHERE E.student_id = ?
        ''', (student_id,)).fetchall()
        conn.close()
    return render_template('student_courses.html', results=results)

@app.route('/student_grades', methods=['GET', 'POST'])
def student_grades():
    results = []
    if request.method == 'POST':
        student_id = request.form['student_id']
        conn = get_db_connection()
        results = conn.execute('''
            SELECT C.course_name, E.exam_grade, E.exam_result
            FROM EXAMS E
            JOIN COURSES C ON E.course_id = C.course_id
            WHERE E.student_id = ?
        ''', (student_id,)).fetchall()
        conn.close()
    return render_template('student_grades.html', results=results)

@app.route('/student_courses_instructor', methods=['GET', 'POST'])
def student_courses_instructor():
    results = []
    if request.method == 'POST':
        student_id = request.form['student_id']
        instructor_id = request.form['instructor_id']
        conn = get_db_connection()
        results = conn.execute('''
            SELECT C.course_name, E.exam_date, E.exam_grade, E.exam_result
            FROM EXAMS E
            JOIN COURSES C ON E.course_id = C.course_id
            WHERE E.student_id = ? AND E.instructor_id = ?
        ''', (student_id, instructor_id)).fetchall()
        conn.close()
    return render_template('student_courses_instructor.html', results=results)

@app.route('/student_average', methods=['GET', 'POST'])
def student_average():
    all_avg = None
    passed_avg = None
    if request.method == 'POST':
        student_id = request.form['student_id']
        conn = get_db_connection()

        all_avg_result = conn.execute('''
            SELECT AVG(exam_grade) AS avg_grade FROM EXAMS WHERE student_id = ?
        ''', (student_id,)).fetchone()
        all_avg = all_avg_result['avg_grade'] if all_avg_result['avg_grade'] is not None else 0.0

        passed_avg_result = conn.execute('''
            SELECT AVG(exam_grade) AS passed_avg_grade
            FROM EXAMS
            WHERE student_id = ? AND exam_result = 'Επιτυχία'
        ''', (student_id,)).fetchone()
        passed_avg = passed_avg_result['passed_avg_grade'] if passed_avg_result['passed_avg_grade'] is not None else 0.0

        conn.close()
    return render_template('student_average.html', all_avg=all_avg, passed_avg=passed_avg)

@app.route('/instructors_departments')
def instructors_departments():
    conn = get_db_connection()
    results = conn.execute('''
        SELECT I.instructor_id, I.rank, I.instructor_name, I.instructor_surname, I.specialty,
               D.department_name, D.location
        FROM INSTRUCTORS I
        LEFT JOIN DEPARTMENTS D ON CAST(I.department_id AS INTEGER) = D.department_id
    ''').fetchall()
    conn.close()
    return render_template('instructors_departments.html', results=results)

@app.route('/instructor_theses', methods=['GET', 'POST'])
def instructor_theses():
    results = []
    if request.method == 'POST':
        instructor_id = request.form['instructor_id']
        conn = get_db_connection()
        results = conn.execute('''
        SELECT T.title, T.topic, T.student_id, S.student_name, S.student_surname
        FROM THESIS T
        JOIN STUDENTS S ON T.student_id = S.student_id
        WHERE T.instructor_id = ?
    ''', (instructor_id,)).fetchall()
        conn.close()
    return render_template('instructor_theses.html', results=results)

@app.route('/postgraduate_students')
def postgraduate_students():
    conn = get_db_connection()
    results = conn.execute('''
        SELECT P.student_id, S.student_name, S.student_surname
        FROM POSTGRADUATESTUDENT P
        JOIN STUDENTS S ON P.student_id = S.student_id
    ''').fetchall()
    conn.close()
    return render_template('postgraduate_students.html', results=results)

@app.route('/undergraduate_students')
def undergraduate_students():
    conn = get_db_connection()
    results = conn.execute('''
        SELECT U.student_id, S.student_name, S.student_surname
        FROM UNDERGRADUATESTUDENT U
        JOIN STUDENTS S ON U.student_id = S.student_id
    ''').fetchall()
    conn.close()
    return render_template('undergraduate_students.html', results=results)

@app.route('/proficiency_students')
def proficiency_students():
    conn = get_db_connection()
    results = conn.execute('''
        SELECT P.student_id, S.student_name, S.student_surname
        FROM PROFICIENCYSTUDENT P
        JOIN STUDENTS S ON P.student_id = S.student_id
    ''').fetchall()
    conn.close()
    return render_template('proficiency_students.html', results=results)

@app.route('/practical_training')
def practical_training():
    conn = get_db_connection()
    results = conn.execute('''
        SELECT PT.student_id, S.student_name, S.student_surname,
               PT.company, PT.practical_position, PT.duration, PT.practical_evaluation
        FROM PRACTICALTRAINING PT
        JOIN STUDENTS S ON PT.student_id = S.student_id
    ''').fetchall()
    conn.close()
    return render_template('practical_training.html', results=results)

@app.route('/scholarship_financial_support')
def scholarship_financial_support():
    conn = get_db_connection()
    results = conn.execute('''
        SELECT S.student_id, S.student_name, S.student_surname,
               F.scholarship_type, F.scholarship_start, F.scholarship_end, F.scholarship_status
        FROM SCHOLARSHIPFINANCIALSUPPORT F
        JOIN STUDENTS S ON S.student_id = F.student_id
    ''').fetchall()
    conn.close()
    return render_template('scholarship_financial_support.html', results=results)

@app.route('/evaluation')
def show_evaluation():
    conn = get_db_connection()
    results = conn.execute('''
        SELECT evaluation_id, instructor_id, course_id, rating
        FROM EVALUATION
    ''').fetchall()
    conn.close()
    return render_template('evaluation.html', results=results)

@app.route('/requests')
def show_requests():
    conn = get_db_connection()
    results = conn.execute('''
        SELECT R.request_id, R.student_id, S.student_name, S.student_surname,
               R.request_date, R.request_status
        FROM REQUESTS R
        JOIN STUDENTS S ON S.student_id = R.student_id
    ''').fetchall()
    conn.close()
    return render_template('requests.html', results=results)

@app.route('/schedule')
def show_schedule():
    conn = get_db_connection()
    results = conn.execute('''
        SELECT C.course_name, S.day, S.time, S.classroom,
               I.instructor_name, I.instructor_surname
        FROM SCHEDULE S
        JOIN COURSES C ON S.course_id = C.course_id
        JOIN INSTRUCTORS I ON S.instructor_id = I.instructor_id
    ''').fetchall()
    conn.close()
    return render_template('schedule.html', results=results)

if __name__ == '__main__':
    app.run(debug=True)
