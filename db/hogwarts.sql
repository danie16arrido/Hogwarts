DROP TABLE students;

CREATE TABLE students (
  id serial4 primary key,
  first_name varchar(255),
  last_name varchar(255),
  house varchar(255),
  age int2
);

CREATE TABLE house (
  id serial4 primary key,
  name varchar(255),
);