# Educational-Data-Log-Analysis

## Business Need
Many educational facilities such as colleges, universities, bootcamps rely on scalable and
versatile Learning Management Systems.
The Moodle LMS is a free and open-source learning management system written in PHP
and distributed under the GNU General Public License. It is used for blended learning,
distance education, flipped classroom and other e-learning projects in schools, universities,
workplaces and other sectors. With customizable management features, it is used to create
private websites with online courses for educators and trainers to achieve learning goals.
Moodle allows for extending and tailoring learning environments using community-sourced
plugins .

## Objective 
Exploring the 10 Academy Moodle logs stored in the database together with many other relevant tables.
By the end of the exploration, A Tableau dashboard that illustrates different aspects of students will be built.

## Important Tables

* mdl_logstores_standard_log
* mdl_users
* mdl_grades_grade

## Git Structure
- The Data Exploration (Interim) Folder contains one notebook and a SQL script. The notebook explores some important informations about the students. The SQL script is contains all the queries used by the notebook.
- The Final folder contains a notebook that handles all the preprocessing to calculate the dedication time, login counts, total grades, activity counts and others to be used by tableau to make different visualizations.

## Dashboard Results

Users can filter the top 1%,5%,10% and 25% on all three metrics using a drop down box. They can also filter the range of user ids they are interested in.
The dashboard also compares by the average grade of students per Gender.

![Tableau Dashboard](https://raw.githubusercontent.com/nahomneg/Educational-Data-Log-Analysis/master/Snip%20dashboard.PNG)
