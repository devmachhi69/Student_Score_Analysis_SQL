--create a new table 
Create table students
(
Name varchar(50) not null,
Maths Int8 not null,
Science Int8 not null,
English Int8 not null
);

--Export data from csv file
COPY students(Name,Maths,Science,English)
FROM 'D:\students.CSV'
DELIMITER ','
CSV HEADER;

--view all data 
SELECT * FROM students

--calculate total and avarage marks of each students
select Name,(maths+science+english) AS total_marks ,
ROUND((maths+science+english)/3.0,2) AS avg_marks
FROM students

--find lowest score
select Name,(maths+science+english) AS total_marks 
FROM students
ORDER BY total_marks ASC
LIMIT 1;

--Find highest score 
select Name,(maths+science+english) AS total_marks 
FROM students
ORDER BY total_marks DESC
LIMIT 1;

--subject wise average marks 
SELECT 
ROUND(avg(maths),2) AS maths_avg,
ROUND(avg(science),2) AS science_avg,
ROUND(avg(english),2) AS english_avg
FROM students;

--any student score above 85 in any subject
SELECT * FROM students 
WHERE maths >85 OR science >85 OR english >85;

-- find top 3 student by scores
select Name,(maths+science+english) AS total_marks 
FROM students
ORDER BY total_marks DESC
LIMIT 3;


