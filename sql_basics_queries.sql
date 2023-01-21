-- PROBLEM 1: How many students are in the students table? 
SELECT COUNT(id) FROM students

-- PROBLEM 2: Which student(s) has the highest GPA in the table? 
SELECT distinct gpa , first_name, last_name FROM students
order by gpa desc
limit 1;

-- PROBLEM 3: How many students are located in the state of Virginia? 
COUNT(address) AS Number_of_students_in_va FROM students
WHERE address like "%VA%";

-- PROBLEM 4: How many students have a GPA that is greater than 3.5? 
SELECT count(gpa) as those_above_three FROM students
WHERE GPA> 3.5;

-- PROBLEM 5: How many students are NOT on the Honors List? 
SELECT COUNT(honors_list) FROM students
WHERE honors_list ="1";
PROBLEM 6: Two students have the email domain “narod.ru”. What are the names of those students? 
SELECT email, first_name+ " " + last_name as name 
FROM students 
WHERE email LIKE "%narod.ru%";

-- PROBLEM 7: How many students have a GPA between 2.0 and 3.0? (inclusive) 
SELECT COUNT(GPA) AS has_good_gpa 
FROM students 
WHERE gpa >= 2.0 AND gpa <= 3.0;
-- PROBLEM 8: What is the average GPA of all students in the students table? 
SELECT AVG(GPA) AS Average_gpa
FROM students;
-- PROBLEM 9: What is the average GPA of all students in the state of California? 
SELECT AVG(GPA) AS gpa_in_cali
FROM students 
WHERE state = "CA";
-- PROBLEM 10: Which student has the lowest GPA of all students with an address that contains the word “Street”?
SELECT first_name, last_name, gpa 
FROM students
ORDER BY GPA ASC
LIMIT 1;