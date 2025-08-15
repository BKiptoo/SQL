-- Students Table
CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE,
    date_of_birth TEXT,
    gender TEXT,
    address TEXT
);

-- Teachers Table
CREATE TABLE IF NOT EXISTS teachers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT UNIQUE,
    phone TEXT,
    hire_date TEXT
);

-- Classes Table
CREATE TABLE IF NOT EXISTS classes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    class_name TEXT NOT NULL,
    teacher_id INTEGER,
    schedule TEXT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

-- Enrollments Table (link between students and classes)
CREATE TABLE IF NOT EXISTS enrollments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL,
    class_id INTEGER NOT NULL,
    enrollment_date TEXT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (class_id) REFERENCES classes(id)
);

-- Subjects Table
CREATE TABLE IF NOT EXISTS subjects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    subject_name TEXT NOT NULL,
    description TEXT
);

-- Marks Table
CREATE TABLE IF NOT EXISTS marks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER NOT NULL,
    subject_id INTEGER NOT NULL,
    score REAL,
    term TEXT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);


-- Insert Students
INSERT INTO students (first_name, last_name, email, date_of_birth, gender, address)
VALUES
('John', 'Doe', 'john.doe@example.com', '2005-04-15', 'Male', '123 Main St'),
('Mary', 'Smith', 'mary.smith@example.com', '2006-07-21', 'Female', '456 Park Ave'),
('James', 'Brown', 'james.brown@example.com', '2005-12-10', 'Male', '789 Oak Rd');

-- Insert Teachers
INSERT INTO teachers (first_name, last_name, email, phone, hire_date)
VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '0712345678', '2020-01-15'),
('Michael', 'Williams', 'michael.williams@example.com', '0798765432', '2019-09-10');

-- Insert Classes
INSERT INTO classes (class_name, teacher_id, schedule)
VALUES
('Math 101', 1, 'Mon-Wed-Fri 08:00-09:30'),
('Science 101', 2, 'Tue-Thu 10:00-11:30');

-- Insert Subjects
INSERT INTO subjects (subject_name, description)
VALUES
('Mathematics', 'Covers algebra, geometry, and calculus basics'),
('Science', 'Covers biology, chemistry, and physics basics');

-- Insert Enrollments
INSERT INTO enrollments (student_id, class_id, enrollment_date)
VALUES
(1, 1, '2025-01-10'),
(2, 1, '2025-01-10'),
(3, 2, '2025-01-10');

-- Insert Marks
INSERT INTO marks (student_id, subject_id, score, term)
VALUES
(1, 1, 85.5, 'Term 1'),
(2, 1, 90.0, 'Term 1'),
(3, 2, 78.0, 'Term 1');
