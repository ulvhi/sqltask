CREATE TABLE students (
    student_id BIGSERIAL PRIMARY KEY,
    student_name VARCHAR(64));
CREATE TABLE teachers (
    teacher_id BIGSERIAL PRIMARY KEY,
    teacher_name VARCHAR(64));
CREATE TABLE students_teachers (
    student_id BIGSERIAL,
    course_id BIGSERIAL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES teachers(teacher_id));
