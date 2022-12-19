USE sqlbasics;

CREATE TABLE student_table(
     s_id INT NOT NULL PRIMARY KEY,
     s_fname TEXT,
     s_lname TEXT,
     class INT,
     age INT);
     
CREATE TABLE marksheet_table(
     score INT,
     year INT,
     class INT,
     ranking INT,
     s_id INT);
     
     INSERT INTO student_table
     VALUES(1, 'krishna', 'gee', 10, 18),
           (2 ,'Stephen' ,'Christ', 10, 17),
           (3, 'Kailash', 'kumar', 10, 18),
		   (4, 'ashish', 'jain' ,10 ,16);
           
	INSERT INTO marksheet_table
    VALUES(989, 2014, 10, 1, 1),
          (454, 2014, 10, 10, 2),
          (880, 2014, 10, 4, 3),
          (870, 2014, 10, 5, 4);
          
	SELECT s_id,s_fname FROM student_table WHERE age>=16 AND s_lname='kumar';
    
    SELECT * FROM marksheet_table WHERE score BETWEEN 800 AND 1000;
    
    SELECT (score+5) AS new_score,
           year,
           class,
           ranking,
           s_id
	FROM marksheet_table;
    
    SELECT * FROM marksheet_table ORDER BY score DESC;
    
    SELECT * FROM student_table WHERE s_fname LIKE 'a%';
