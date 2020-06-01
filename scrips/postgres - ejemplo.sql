--Creamos la tabla 
CREATE TABLE datacamp_courses(
 course_id SERIAL PRIMARY KEY,
 course_name VARCHAR (50) UNIQUE NOT NULL,
 course_instructor VARCHAR (100) NOT NULL,
 topic VARCHAR (20) NOT NULL
);


--Ingresamos datos
INSERT INTO datacamp_courses(course_name, course_instructor, topic)
VALUES('Deep Learning in Python','Dan Becker','Python');

INSERT INTO datacamp_courses(course_name, course_instructor, topic)
VALUES('Joining Data in PostgreSQL','Chester Ismay','SQL');


--Seleccionamos algunos datos
SELECT * FROM datacamp_courses;