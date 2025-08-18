-- CREATE TABLE IF NOT EXISTS student(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(20) NOT NULL,
--     email VARCHAR(100) NOT NULL UNIQUE,
--     date_of_birth DATE,
--     phone INTEGER NOT NULL UNIQUE,
--     marks REAL CHECK(marks>-1 AND marks<101),
--     is_married BOOLEAN NOT NULL DEFAULT FALSE,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );


ALTER TABLE students
ALTER COLUMN phone TYPE BIGINT;

INSERT INTO students

(name,email,phone)
VALUES
-- ('John Doe', 'john@mail.com',085408046),
-- ('Jane Doe', 'janedoe@example.com', 094689485)
('Alice Smith', 'alice.smith@example.com', '09123456789'),
('Bob Johnson', 'b.johnson@email.com', '08234567890'),
('Charlie Brown', 'charlieb@example.net', '07891234567'),
('Diana Prince', 'diana.prince@themyscira.org', '08345678901'),
('Evan Davis', 'evan.davis@mail.com', '09567890123'),
('Fiona Gallagher', 'fiona.g@email.net', '08812345678'),
('George Hall', 'ghall@outlook.com', '08678901234'),
('Hannah Lee', 'hannah.lee@yahoo.com', '08901234567'),
('Ian Wright', 'ianwright123@webmail.com', '08456789012'),
('Jessica Taylor', 'jtaylor@example.org', '09012345678'),
('Kevin Roberts', 'kevin.roberts@mail.net', '08765432109'),
('Laura Martinez', 'laura_martinez@email.org', '09321098765'),
('Mike O''Neil', 'm.oneil@example.com', '09234567890'),
('Nina Patel', 'nina.patel@mailservice.com', '08123456789'),
('Oscar Kim', 'oscar.kim@email.co', '08567890123'),
('Paula Zhang', 'pzhang@webmail.net', '08987654321'),
('Quincy Adams', 'quincy.adams@email.io', '08009876543'),
('Rachel Green', 'r.green@mailbox.org', '08654321098'),
('Steve Rogers', 'srogers@avengers.com', '09432109876'),
('Tina Chen', 'tina.chen@mail.com', '08321098765')
