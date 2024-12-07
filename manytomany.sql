CREATE TABLE students (
    student_id BIGSERIAL PRIMARY KEY,
    student_name VARCHAR(64));
CREATE TABLE teachers (
    teacher_id BIGSERIAL PRIMARY KEY,
    teacher_name VARCHAR(64));
CREATE TABLE students_teachers (
    student_id BIGSERIAL,
    course_id BIGSERIAL,
    PRIMARY KEY (student_id, teachers_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id));
