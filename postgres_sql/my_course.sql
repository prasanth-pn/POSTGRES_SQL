-- this is a demo for creating a table using an sql file

DROP TABLE IF EXISTS my_course;

CREATE TABLE my_course (
    course_id text NOT NULL,
    created_at timestamp (0)with time zone NOT NULL DEFAULT NOW()

);

INSERT INTO my_course(course_id)
VALUES ('PRASANTH');