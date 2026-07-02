# Foititologio — University Student Records System

**Course:** Databases I
**Student:** Marinos Matthaiou — inf2023004 (main contributor)

## Overview

A web-based student records management system ("Φοιτητολόγιο") built with **Flask** and **SQLite**. The application lets users query student courses, grades, averages, schedules, scholarships, practical training, and more, backed by a relational database designed and populated as part of this coursework.

The project was completed across two parts:
- **Assignment 1** — relational schema design (ER diagram, table definitions, sample queries)
- **Assignment 2** — the working Flask web application built on top of that schema

## Repository Structure

```
.
├── app.py                     # Flask application — all routes/views
├── init_db.py                 # Initializes university.db from Create.sql + Insert.sql
├── Create.sql                 # Database schema (table definitions)
├── Insert.sql                 # Sample data population
├── SQL_Questions.sql          # Standalone SQL query exercises
├── university.db              # Pre-built SQLite database (ready to run)
├── requirements.txt           # Python dependencies
├── run_windows.bat            # Convenience launcher script (Windows)
├── templates/                 # HTML templates (Jinja2) for each view
│   ├── index.html
│   ├── student_courses.html
│   ├── student_grades.html
│   ├── student_average.html
│   ├── schedule.html
│   ├── scholarship_financial_support.html
│   ├── practical_training.html
│   ├── undergraduate_students.html
│   ├── postgraduate_students.html
│   ├── proficiency_students.html
│   ├── instructors_departments.html
│   ├── instructor_theses.html
│   ├── student_courses_instructor.html
│   ├── evaluation.html
│   └── requests.html
├── Ergasia1_Design/            # Assignment 1: schema design
│   ├── Report_Ergasia1.pdf
│   ├── Diagram.sql
│   ├── 3.4.3_Query.sql
│   └── 3.4.3_Query.pdf
└── Ergasia2_Report/             # Assignment 2: report for the web app
    └── Report_Ergasia2.pdf
```

## How to Run

```bash
pip install -r requirements.txt

# The database is already built (university.db), but to rebuild it from scratch:
python init_db.py

python app.py
```

The app will start a local Flask development server (by default)

## Database Schema

The schema (see `Create.sql` and `Ergasia1_Design/Report_Ergasia1.pdf` for the full ER diagram) models a university's core entities: students (undergraduate, postgraduate, proficiency), courses, instructors, departments, enrollments, exams, theses, scholarships, and practical training placements.

## Tools / Language

- Python 3, Flask
- SQLite
- HTML/Jinja2 templates
