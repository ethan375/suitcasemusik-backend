CREATE DATABASE suitcasemusik;

\c suitcasemusik

CREATE TABLE question(
  id SERIAL PRIMARY KEY,
  body VARCHAR(255)
);

CREATE TABLE answer(
  id SERIAL PRIMARY KEY,
  body VARCHAR(255)
);