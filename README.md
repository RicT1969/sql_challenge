# Employee_SQL_database
<b>Module 9 Challenge - SQL</b>

This project creates a database for a fictional company called Pewlett Hackard researching its employees during the 1980s and 1990s. I have designed relational database with tables holding data from six CSV files. An ERD has been created, modelling the relationships between the tables using Crow's Foot notation.
A schema has been designed for each table with appropriate constraints and datatypes. Finally, a series of queries have been performed esearching these employees.

The ERD has been designed using QuickDBD <ul><li>https://www.quickdatabasediagrams.com/</li></ul>
A number of articles were researched in order to undertake this exercise and understand the concepts of cardinality, types of ERD Data Models, and what would be appropriate primary and foreign keys:
<ul><li>https://www.gliffy.com/blog/how-to-draw-an-entity-relationship-diagram</li><li>
https://www.smartdraw.com/entity-relationship-diagram/</li><li>
https://vertabelo.com/blog/vertabelo-tips-good-er-diagram-layout/</li></ul>

<li>The Schema has been set out to create the tables in order of dependencies. In order to import the data without error, those tables upon which other tables are dependent  are placed first in order.</li><li>
<b>The Dept_Manager</b> file is arguably not needed. The information it contains could be obtained from the otehr tables using joins. It has been included as it is possible that there is a use case for such a table (and because the outline for the challenge seemed to assume that six files would be included. THe informaiton it contains is the title_id for manager, and the emp_no for employees in that role.
