# 🎓 School of Excellence Database Management System

## 📖 Description

This project implements a comprehensive **database management system** for **School of Excellence** (مدرسة التميز للتعليم الثانوي). The system centralizes and manages information for **students**, **teachers**, and **subjects** using **MySQL**.

### ✨ Key Features Demonstrated
- 🗄️ **Database Creation** - Setting up the main database
- 📋 **Table Creation** - Students, Teachers, and Subjects tables
- 📝 **Data Insertion** - Sample records for all entities
- 🔍 **Data Retrieval** - Querying and displaying information
- 📊 **Sorting Operations** - Ordering results by name
- 🏷️ **Column Aliasing** - Alternative column names
- ✏️ **Record Updates** - Modifying existing data
- 🔄 **Table Modifications** - Renaming table structures
- 💬 **Documentation** - Comments for all SQL operations

## 📂 Project Files

| File | Description |
|------|-------------|
| `school_of_excellence.sql` | 📜 Complete SQL script with database setup, table creation, data insertion, and operations |

## ⚙️ Installation & Usage

### Prerequisites
- 🐬 MySQL Server 5.7 or higher
- 🛠️ MySQL Workbench or command line interface

### Setup Steps
1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/school-of-excellence-database.git
   cd school-of-excellence-database
   ```

2. **Start MySQL server:**
   ```bash
   mysql -u root -p
   ```

3. **Execute the SQL script:**
   ```bash
   mysql> source school_of_excellence.sql
   ```

## 🗄️ Database Schema

### 👩‍🎓 Students Table

| Column | Type | Description |
|--------|------|-------------|
| `id` | INT | 🔑 Unique student identifier |
| `name` | VARCHAR(100) | 👤 Student's full name |
| `birth_date` | DATE | 📅 Date of birth |
| `gender` | CHAR(1) | ⚥ Gender ('M' or 'F') |
| `join_date` | DATE | 📆 Enrollment date |
| `email` | VARCHAR(100) | 📧 Email address |
| `level` | TINYINT | 📚 Academic level (1-6) |
| `track` | VARCHAR(10) | 🎯 Science or Arts track |
| `gpa` | DECIMAL(5,2) | 📈 Grade Point Average |

### 👨‍🏫 Teachers Table

| Column | Type | Description |
|--------|------|-------------|
| `id` | INT | 🔑 Unique teacher identifier |
| `name` | VARCHAR(100) | 👤 Teacher's full name |
| `birth_date` | DATE | 📅 Date of birth |
| `gender` | CHAR(1) | ⚥ Gender ('M' or 'F') |
| `email` | VARCHAR(100) | 📧 Email address |
| `office_number` | INT | 🏢 Office number |

### 📚 Subjects Table

| Column | Type | Description |
|--------|------|-------------|
| `id` | INT | 🔑 Unique subject identifier |
| `name` | VARCHAR(100) | 📖 Subject name |

## 🛠️ SQL Operations Examples

### 🗄️ Database Setup
```sql
-- 1️⃣ Create the database
CREATE DATABASE SchoolOfExcellence;

-- 2️⃣ Use the database
USE SchoolOfExcellence;
```

### 📋 Table Creation
```sql
-- 3️⃣ Create Students table
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_date DATE,
    gender CHAR(1),
    join_date DATE,
    email VARCHAR(100),
    level TINYINT,
    track VARCHAR(10),
    gpa DECIMAL(5,2)
);
```

### 🔍 Data Retrieval
```sql
-- Display all tables
SHOW TABLES;

-- View all students
SELECT * FROM Students;

-- Sort students by name (ascending)
SELECT * FROM Students ORDER BY name ASC;
```

### 🏷️ Column Aliasing
```sql
-- Use alternative column names
SELECT id, name AS 'Student Name', level, gpa FROM Students;
```

### ✏️ Data Updates
```sql
-- Update student email
UPDATE Students
SET email = 'yzw-xaqw@example.com'
WHERE id = 3;

-- Update teacher office number
UPDATE Teachers
SET office_number = 100
WHERE id = 1;
```

### 🔄 Table Modifications
```sql
-- Rename table
RENAME TABLE Subjects TO school_Subjects;
RENAME TABLE school_Subjects TO Subjects;
```

## 📊 Sample Data

The database includes:
- **👥 10 Students** - Sample records with diverse academic levels and tracks
- **👨‍🏫 10 Teachers** - Faculty members with office assignments
- **📚 7 Subjects** - Core academic subjects (Math, Physics, Chemistry, Biology, English, History, Geography)

## ✅ Project Requirements Status

| Requirement | Status | Details |
|-------------|--------|---------|
| 🗄️ Database Creation | ✅ Completed | SchoolOfExcellence database |
| 📋 Table Creation | ✅ Completed | Students, Teachers, Subjects |
| 📊 Show Tables | ✅ Completed | Display available tables |
| 📝 Data Insertion | ✅ Completed | 10 students, 10 teachers, 7 subjects |
| 🔍 Display Contents | ✅ Completed | Show all table contents |
| 📊 Sorting | ✅ Completed | Students ordered by name |
| 🏷️ Column Aliasing | ✅ Completed | Alternative names for columns |
| ✏️ Data Updates | ✅ Completed | Student email & teacher office updates |
| 🔄 Table Modifications | ✅ Completed | Table renaming functionality |
| 💬 Comments | ✅ Completed | Numbered comments throughout |

## 🎯 Key Learning Outcomes

This project demonstrates proficiency in:

- **Database Design** 🏗️ - Creating normalized table structures
- **SQL DDL** 📋 - Data Definition Language operations
- **SQL DML** 📝 - Data Manipulation Language operations
- **Query Optimization** ⚡ - Efficient data retrieval methods
- **Data Integrity** 🔒 - Maintaining consistent database state

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Create a Pull Request


## 📌 Project Summary

This **School of Excellence Database Management System** successfully implements all core database operations using MySQL. The project showcases fundamental SQL skills including database creation, table design, data manipulation, and query optimization.

### 🎯 Final Statistics
- **Database**: 1 (SchoolOfExcellence)
- **Tables**: 3 (Students, Teachers, Subjects)
- **Total Records**: 27 (10 students + 10 teachers + 7 subjects)
- **Operations Performed**: 12+ (Create, Insert, Select, Update, Rename)
- **Code Quality**: Fully commented with step-by-step documentation

**🏆 Project Status: Complete and Fully Functional**


## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
