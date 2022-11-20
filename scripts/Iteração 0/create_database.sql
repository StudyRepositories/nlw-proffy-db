CREATE SCHEMA IF NOT EXISTS proffy;

CREATE TABLE IF NOT EXISTS proffy.teacher
(
    id serial PRIMARY KEY,
    name VARCHAR (70) NOT NULL,
    avatar bytea[],
    whatsapp VARCHAR (15) NOT NULL,
    bio VARCHAR (2000) 
);

CREATE TABLE IF NOT EXISTS proffy.class
(
    id serial PRIMARY KEY,
    subject VARCHAR (50) NOT NULL,
    cost NUMERIC (6,2) NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (teacher_id)
        REFERENCES proffy.teacher (id)
);

CREATE TABLE IF NOT EXISTS proffy.class_schedule
(
    id serial PRIMARY KEY,
    week_day SMALLINT NOT NULL,
    "from" TIMESTAMP WITH TIME ZONE NOT NULL,
    "to" TIMESTAMP WITH TIME ZONE NOT NULL,
    class_id INT NOT NULL,
    FOREIGN KEY (class_id)
        REFERENCES proffy.class (id),
    CONSTRAINT check_week_day CHECK (week_day >= 1 AND week_day <= 7) NOT VALID
);
