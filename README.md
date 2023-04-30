# Employee_SQL_database
<b>Module 9 Challenge - SQL</b>

<p>This project creates a database for a fictional company called Pewlett Hackard researching its employees during the 1980s and 1990s. I have designed relational database with tables holding data from six CSV files. An ERD has been created, modelling the relationships between the tables using Crow's Foot notation.
A schema has been designed for each table with appropriate constraints and datatypes. Finally, a series of queries have been performed esearching these employees.</p>

<p>The ERD has been designed using QuickDBD <ul><li>https://www.quickdatabasediagrams.com/</li></ul>
A number of articles were researched in order to undertake this exercise and understand the concepts of cardinality, types of ERD Data Models, and what would be appropriate primary and foreign keys:
<ul><li>https://www.gliffy.com/blog/how-to-draw-an-entity-relationship-diagram</li><li>
https://www.smartdraw.com/entity-relationship-diagram/</li><li>
https://vertabelo.com/blog/vertabelo-tips-good-er-diagram-layout/</li></ul>
<li>The Schema has been set out to create the tables in order of dependencies. In order to import the data without error, those tables upon which other tables are dependent  are placed first in order.</li><li>
<b>The dept_manager</b> file is arguably not needed as the information it contains can be obtained from the other tables using joins. It is included because:<ul><li>it is possible that there is a use case for such a table;</li><li>because the outline for the challenge is ambiguous on this issue and appears to assume that six files would be included; and</li><li> because the instructions make no mention of normalising the data.</li></ul>The information contained is the title_id for manager, and the emp_no for employees in that role. A join between the department table and the emp_no table would idenitfy employee numbers with the department they are attached to. A further join with the employment table would provide the emp_title_id (which includes the identifier for the rank of manager), and a final join with the title table would identify which id equals manager. If the instructions were to normalise data to 2NF or 3NF then this table should be excluded.</li></P>
<li>The ERD has been loaded as a png</li><li>
The schema consists of six tables:<ul><li>department</li><li>dept_emp</li><li>dept_manager</li><li>employees</li><li>salaries</li><li>titles</li></ul><li>
The queries fulfil the following tasks:<ul><li>List the employee number, last name, first name, sex, and salary of each employee.</li><li>List the first name, last name, and hire date for the employees who were hired in 1986.</li><li>List the manager of each department along with their department number, department name, employee number, last name, and first name.</li><li>List the department number for each employee along with that employee’s employee number, last name, first name, and department name.</li><li>List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.</li><li>List each employee in the Sales department, including their employee number, last name, and first name.</li><li>List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.</li><li>List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).</li></ul>


