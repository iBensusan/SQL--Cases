### 1. **Advisor Assignment Case**

**Problem:**  
A university assigns advisors to students for guidance. Write queries to:
- Find students with a male advisor earning more than 15,000 or a female advisor earning more than 20,000.

**SQL Query:**

sql
SELECT s.roll_number, s.name
FROM student_information s
JOIN faculty_information f
ON s.advisor = f.employee_ID
WHERE (f.gender = 'M' AND f.salary > 15000)
   OR (f.gender = 'F' AND f.salary > 20000);


**Explanation:**  
This query retrieves students based on their advisor's gender and salary. The names used in this project are fictional and created for demonstration purposes.

**Sample Data:**

- `student_information`:

    | roll_number | name  | advisor |
    |-------------|-------|---------|
    | 1           | Ethan | 101     |
    | 2           | Mia   | 102     |
    | 3           | Liam  | 101     |

- `faculty_information`:

    | employee_ID | gender | salary |
    |-------------|--------|--------|
    | 101         | M      | 18000  |
    | 102         | F      | 22000  |
