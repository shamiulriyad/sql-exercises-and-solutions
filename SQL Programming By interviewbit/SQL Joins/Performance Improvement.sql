/* YOUR QUERY GOES HERE
   Example: SELECT * FROM EMPLOYEE; 
*/


/* 
   Problem Statement:
   Given a table 'Tests' with columns 'TestId' (unique identifier for each test) and 'Marks' (marks obtained in the test),
   write a SQL query to find all tests where the marks obtained are greater than the marks obtained in the previous test.

   LINK: https://www.interviewbit.com/problems/performance-improvement/
*/


SELECT t.TestId
FROM Tests t
JOIN Tests p
    ON p.TestId = t.TestId - 1
WHERE t.Marks > p.Marks;




-- This query retrieves the TestId of tests where the marks obtained are greater than the marks obtained in the previous test.