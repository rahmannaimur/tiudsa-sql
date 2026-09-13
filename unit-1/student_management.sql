DROP DATABASE IF EXISTS student_management; # Reset for clean rebuild.

CREATE DATABASE student_management;

USE student_management;

CREATE TABLE students(
name VARCHAR(100) NOT NULL,
date_of_birth DATE,
email VARCHAR(100) UNIQUE NOT NULL,
major VARCHAR(100) NOT NULL,
year ENUM('Freshman','Sophomore','Junior','Senior') NOT NULL
);

INSERT INTO students (name,date_of_birth,email,major,year) VALUES
('Aiko Tanaka',      '2006-04-12', 'aiko.tanaka@example.com',      'Digital Business',        'Freshman'),
('Kenji Watanabe',   '2005-08-23', 'kenji.watanabe@example.com',   'Computer Science',        'Sophomore'),
('Sofia Rahman',     '2006-01-30', 'sofia.rahman@example.com',     'Digital Business',        'Freshman'),
('Daniel Kim',       '2004-11-05', 'daniel.kim@example.com',       'Economics',               'Junior'),
('Mina Sato',        '2006-07-19', 'mina.sato@example.com',        'Data Science',            'Freshman'),
('Arif Hossain',     '2005-03-14', 'arif.hossain@example.com',     'Digital Business',        'Sophomore'),
('Yuki Nakamura',    '2004-09-27', 'yuki.nakamura@example.com',    'International Relations', 'Junior'),
('Priya Sharma',     '2006-05-08', 'priya.sharma@example.com',     'Computer Science',        'Freshman'),
('Lucas Fernandez',  '2005-12-02', 'lucas.fernandez@example.com',  'Business Administration', 'Sophomore'),
('Hana Suzuki',      '2006-02-16', 'hana.suzuki@example.com',      'Data Science',            'Freshman'),
('Omar Faruk',       '2004-06-21', 'omar.faruk@example.com',       'Economics',               'Junior'),
('Emily Chen',       '2006-10-11', 'emily.chen@example.com',       'Digital Business',        'Freshman'),
('Riku Yamamoto',    '2005-01-25', 'riku.yamamoto@example.com',    'Computer Science',        'Sophomore'),
('Nadia Islam',      '2006-08-07', 'nadia.islam@example.com',      'Business Administration', 'Freshman'),
('Kevin Park',       '2004-04-18', 'kevin.park@example.com',       'Data Science',            'Junior'),
('Sakura Ito',       '2005-09-30', 'sakura.ito@example.com',       'International Relations', 'Sophomore'),
('Tanvir Ahmed',     '2006-03-22', 'tanvir.ahmed@example.com',     'Digital Business',        'Freshman'),
('Grace Lee',        '2005-07-04', 'grace.lee@example.com',        'Economics',               'Sophomore'),
('Haruto Kobayashi', '2003-12-15', 'haruto.kobayashi@example.com', 'Computer Science',        'Senior'),
('Farhana Akter',    '2006-06-09', 'farhana.akter@example.com',    'Data Science',            'Freshman');

SELECT COUNT(*) FROM students;
SELECT * FROM students;