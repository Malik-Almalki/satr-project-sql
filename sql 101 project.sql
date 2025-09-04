-- إنشاء قاعدة البيانات
CREATE DATABASE school_al_tamayoz;

-- استخدام قاعدة البيانات
USE school_al_tamayoz;

-- إنشاء جدول الطلاب
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY, -- الرقم التسلسلي
    student_name VARCHAR(100) NOT NULL,        -- اسم الطالب
    birth_date DATE,                           -- تاريخ الميلاد
    gender ENUM('M','F'),                      -- الجنس
    enrollment_date DATE,                      -- تاريخ الالتحاق
    email VARCHAR(100) UNIQUE,                 -- البريد الالكتروني
    level INT CHECK (level BETWEEN 1 AND 6),   -- المستوى الدراسي
    track ENUM('علمي','انساني'),              -- المسار
    gpa DECIMAL(5,2) CHECK (gpa BETWEEN 0 AND 100) -- المعدل التراكمي
);

-- إنشاء جدول المعلمين
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY, -- الرقم التسلسلي
    teacher_name VARCHAR(100) NOT NULL,        -- اسم المعلم
    birth_date DATE,                           -- تاريخ الميلاد
    gender ENUM('M','F'),                      -- الجنس
    email VARCHAR(100) UNIQUE,                 -- البريد الالكتروني
    office_number VARCHAR(10)                  -- رقم المكتب
);

-- إنشاء جدول المواد
CREATE TABLE subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY, -- الرقم التسلسلي
    subject_name VARCHAR(100) NOT NULL         -- اسم المادة
);

-- عرض جميع الجداول في قاعدة البيانات
SHOW TABLES;

-- بيانات الطلاب عن طريق AI
INSERT INTO students (student_name, birth_date, gender, enrollment_date, email, level, track, gpa) VALUES
('أحمد محمد', '2005-01-15', 'M', '2020-09-01', 'ahmed1@example.com', 3, 'علمي', 88.5),
('سارة علي', '2006-05-20', 'F', '2021-09-01', 'sara2@example.com', 2, 'انساني', 92.0),
('خالد يوسف', '2004-11-30', 'M', '2019-09-01', 'khaled3@example.com', 4, 'علمي', 75.3),
('نورة عبدالله', '2005-08-10', 'F', '2020-09-01', 'nora4@example.com', 3, 'انساني', 81.7),
('عبدالرحمن صالح', '2006-02-18', 'M', '2021-09-01', 'abdul5@example.com', 2, 'علمي', 85.2),
('ريم خالد', '2004-09-23', 'F', '2019-09-01', 'reem6@example.com', 4, 'انساني', 79.1),
('ماجد فهد', '2005-11-12', 'M', '2020-09-01', 'majed7@example.com', 3, 'علمي', 90.4),
('ليان سعيد', '2006-06-03', 'F', '2021-09-01', 'layan8@example.com', 2, 'علمي', 87.6),
('تركي حسن', '2004-12-29', 'M', '2019-09-01', 'turki9@example.com', 4, 'انساني', 72.5),
('جمانة ناصر', '2005-03-14', 'F', '2020-09-01', 'jumana10@example.com', 3, 'علمي', 95.0),
('يوسف إبراهيم', '2006-04-25', 'M', '2021-09-01', 'yousef11@example.com', 2, 'علمي', 89.9),
('مشاعل مازن', '2005-10-05', 'F', '2020-09-01', 'mashael12@example.com', 3, 'انساني', 83.0),
('فارس تركي', '2004-01-19', 'M', '2019-09-01', 'fares13@example.com', 5, 'علمي', 77.8),
('هند خالد', '2006-09-07', 'F', '2021-09-01', 'hind14@example.com', 2, 'انساني', 91.2),
('رائد سلطان', '2005-07-22', 'M', '2020-09-01', 'raed15@example.com', 3, 'علمي', 84.6),
('مها عادل', '2004-02-28', 'F', '2019-09-01', 'maha16@example.com', 5, 'انساني', 80.1),
('بدر ناصر', '2006-12-11', 'M', '2021-09-01', 'badr17@example.com', 2, 'علمي', 93.7),
('سلمى يحيى', '2005-06-15', 'F', '2020-09-01', 'salma18@example.com', 3, 'انساني', 85.5),
('حسن ماجد', '2004-08-30', 'M', '2019-09-01', 'hassan19@example.com', 5, 'علمي', 78.9),
('رنا علي', '2006-03-09', 'F', '2021-09-01', 'rana20@example.com', 2, 'علمي', 97.4),
('طارق عادل', '2005-11-01', 'M', '2020-09-01', 'tariq21@example.com', 3, 'علمي', 82.3),
('ليلى راشد', '2006-10-17', 'F', '2021-09-01', 'layla22@example.com', 2, 'انساني', 90.8),
('نايف عبدالعزيز', '2004-05-27', 'M', '2019-09-01', 'naif23@example.com', 6, 'علمي', 74.0),
('هدى محمد', '2005-09-19', 'F', '2020-09-01', 'huda24@example.com', 3, 'علمي', 89.0),
('عمر خالد', '2006-07-04', 'M', '2021-09-01', 'omar25@example.com', 2, 'انساني', 81.4),
('جود سامي', '2004-04-12', 'F', '2019-09-01', 'jood26@example.com', 6, 'علمي', 86.6),
('أيمن فيصل', '2005-01-21', 'M', '2020-09-01', 'ayman27@example.com', 3, 'انساني', 79.7),
('عائشة عبدالعزيز', '2006-02-06', 'F', '2021-09-01', 'aisha28@example.com', 2, 'علمي', 92.5),
('سامر وليد', '2004-06-22', 'M', '2019-09-01', 'samer29@example.com', 6, 'علمي', 76.2),
('نجلاء حسن', '2005-12-03', 'F', '2020-09-01', 'najla30@example.com', 3, 'انساني', 88.8);


-- بيانات المعلمين 10
INSERT INTO teachers (teacher_name, birth_date, gender, email, office_number) VALUES
('محمد عبدالله', '1980-03-12', 'M', 'mohammad1@example.com', 'A101'),
('ريم خالد', '1985-07-25', 'F', 'reem2@example.com', 'B202'),
('سعيد فهد', '1978-09-14', 'M', 'saeed3@example.com', 'C303'),
('نوال أحمد', '1982-11-05', 'F', 'nawal4@example.com', 'D404'),
('عبدالله مازن', '1975-06-18', 'M', 'abdullah5@example.com', 'E505'),
('منى صالح', '1988-02-22', 'F', 'mona6@example.com', 'F606'),
('خالد يوسف', '1979-08-30', 'M', 'khaled7@example.com', 'G707'),
('فاطمة حسن', '1984-01-19', 'F', 'fatma8@example.com', 'H808'),
('سامي علي', '1981-05-27', 'M', 'sami9@example.com', 'I909'),
('هند ناصر', '1987-12-10', 'F', 'hend10@example.com', 'J010');


-- إدخال بيانات المواد (6 مواد كحد أدنى)
INSERT INTO subjects (subject_name)
VALUES
('الرياضيات'),
('اللغة العربية'),
('الفيزياء'),
('الكيمياء'),
('اللغة الإنجليزية'),
('التاريخ');

-- عرض محتويات جميع الجداول
SELECT * FROM students;
SELECT * FROM teachers;
SELECT * FROM subjects;

-- عرض جدول الطلاب بترتيب تصاعدي حسب الاسم
SELECT * FROM students ORDER BY student_name ASC;

-- عرض جدول الطلاب مع اسم مستعار لحقل اسم الطالب
SELECT student_name AS اسماء_الطلاب FROM students;

-- التعديل على بيانات طالب (تغيير البريد الالكتروني)
UPDATE students
SET email = 'ahmed.new@example.com'
WHERE student_id = 1;

-- التعديل على بيانات معلم (تغيير رقم المكتب)
UPDATE teachers
SET office_number = 'C303'
WHERE teacher_id = 1;

-- تعديل اسم أحد الجداول (مثلاً: تغيير اسم جدول المواد من subjects إلى courses)
RENAME TABLE subjects TO courses;

-- عرض الجداول بعد التعديل
SHOW TABLES;


