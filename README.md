# 🏫 SchoolOfExcellence SQL Project

<div align="center">

**Database:** MySQL | **Language:** SQL | **Status:** Not Complete

</div>

---

## 📋 Table of Contents
- [Description](#-description)
- [Database Schema](#-database-schema)
- [Features / Requirements Implemented](#-features--requirements-implemented)
- [Installation](#-installation)
- [Usage](#-usage)
- [File Structure](#-file-structure)

---

## 📖 Description

This project implements a database schema and SQL operations for a school management system called **SchoolOfExcellence**. It merges two assignments:

**Assignment 1:** Create and populate tables for Students, Teachers, and Subjects.

**Assignment 2:** Perform various SQL queries and operations on the Students and Subjects tables, including creating filtered tables, applying aggregate and string functions, and updating data.

The project demonstrates practical SQL skills such as:
- Table creation
- Data insertion
- Selection queries
- Updates
- Use of aggregate and string functions

---

## 🗃️ Database Schema

### Students Table
| Column | Description |
|--------|-------------|
| `id` | Student identifier |
| `name` | Student's name |
| `birth_date` | Date of birth |
| `gender` | Gender |
| `join_date` | Date of enrollment |
| `email` | Email address |
| `level` | Academic level |
| `track` | Academic track |
| `gpa` | Grade Point Average |

### Teachers Table
| Column | Description |
|--------|-------------|
| `id` | Teacher identifier |
| `name` | Teacher's name |
| `birth_date` | Date of birth |
| `gender` | Gender |
| `email` | Email address |
| `office_number` | Office location |

### Subjects Table
| Column | Description |
|--------|-------------|
| `id` | Subject identifier |
| `name` | Subject name |

---

## ✨ Features / Requirements Implemented

### Table Creation
- ✅ Creation of `top_students` table for students with GPA > 4.5
- ✅ Creation of `failed_students` table for students with GPA < 3

### Query Operations
- ✅ Display students whose names start with 'A'
- ✅ Display students whose names have exactly 4 characters
- ✅ Show total number of students in level 2
- ✅ Show distinct student tracks
- ✅ Display subject names in uppercase

### Aggregate Functions
- ✅ Calculate average GPA (AVG)
- ✅ Find maximum GPA (MAX)
- ✅ Find minimum GPA (MIN)
- ✅ Calculate floor of average GPA

### Data Updates
- ✅ Update gender values from 'F'/'M' to 'Female'/'Male'
- ✅ Increase GPA by 0.25 for students with GPA less than 5

---

## 🚀 Installation

### Prerequisites
- MySQL or compatible SQL server installed
- Command line access or MySQL Workbench

### Steps
1. **Clone or download this project**
   ```bash
   git clone <repository-url>
   cd schoolofexcellence-sql
   ```

2. **Run the SQL script**
   ```bash
   mysql -u your_username -p < assignment1_2_merged.sql
   ```

3. **Verify installation**
   ```sql
   USE schoolofexcellence;
   SHOW TABLES;
   ```

---

## 💻 Usage

### Basic Queries
```sql
-- View all students
SELECT * FROM students;

-- View top students
SELECT * FROM top_students;

-- View failed students
SELECT * FROM failed_students;
```

### Sample Operations
```sql
-- Students whose names start with 'A'
SELECT name FROM students WHERE name LIKE 'A%';

-- Students with 4-character names
SELECT name FROM students WHERE LENGTH(name) = 4;

-- Count students in level 2
SELECT COUNT(*) FROM students WHERE level = 2;

-- Distinct tracks
SELECT DISTINCT track FROM students;

-- Subjects in uppercase
SELECT UPPER(name) FROM subjects;
```

### Aggregate Functions
```sql
-- GPA statistics
SELECT 
    AVG(gpa) as average_gpa,
    MAX(gpa) as max_gpa,
    MIN(gpa) as min_gpa,
    FLOOR(AVG(gpa)) as floor_avg_gpa
FROM students;
```

---

## 📁 File Structure

```
schoolofexcellence-sql/
├── README.md
├── assignment1_2_merged.sql
└── (additional project files)
```

---

<div align="center">

**Built with SQL for educational purposes**

</div>

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
