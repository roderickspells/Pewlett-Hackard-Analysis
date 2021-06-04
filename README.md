# Pewlett-Hackard-Analysis

## Purpose

The purpose of this project was to assist a large technology company analyze their employment database utilizing SQL. Pewlett Hackard's HR department is trying to get a better understanding of how many of their current employees are going to be retiring soon. They are hoping to avoid a mass migration of employees and not have suitable employees to take over.

They are hoping to get a better understanding of when they should start ramping up in new hiring efforts as well as the possibility of setting up mentorship program to align new employees with potential retirees as they begin to leave the company.

### Software
PostgreSQL
pgAdmin


## Results

We were given data sets that contained departmental information, employee information, managerial positions, salary, title and start and end date in roles and with the company. We created several different tables and exported them as CSV files to allow us to query and combined information from the different sources.

Using SQL queries, we were tasked with identifying employees who may be retiring soon. The query criteria we set for this was to search for employees born between January of 1952 and December of 1955. 

* Below is a snip of the table created to show 133,776 employees eligible for retirement before we remove any duplicates.
<img width="621" alt="retirement_titles" src="https://user-images.githubusercontent.com/59187034/120862443-93a33600-c54e-11eb-8075-5795dd19237f.png">



We created an ERD that combined the primary and unique information from several table including but not limited to employees names, titles, time in role. We combined these columns together to create our data set that we would then analzye to determine who we should recommend for a mentorship program.

<img width="704" alt="DB" src="https://user-images.githubusercontent.com/59187034/120862481-a3bb1580-c54e-11eb-9610-d28a73d9ab82.png">

Some employees had been with the company for many years and held different roles in different departments throughout the their tenure. To control and remove duplicates, we ran queries using the "Distinct On" function to search for the most recent iteration by combining and searching by employee number, first name, last name, and their title.

* The below chart shows the 90,000 employees eligible for retirement out of the 510,00 total employees in the company after removing duplicates and previous roles.

<img width="466" alt="unique-titles" src="https://user-images.githubusercontent.com/59187034/120862496-ab7aba00-c54e-11eb-8fc9-20cc9f134de2.png">


After determining the employees that would be retiring soon, we wanted to know how many in each department were leaving. The HR department is going to use this to help determine priority in filling upcoming vacancies. To accomplish this, we utilizied the "Count" function. This gave us the number of employees, their department and their titles.

* The chart below shows the number of retiring employees in each department

<img width="218" alt="retiring-titles" src="https://user-images.githubusercontent.com/59187034/120862508-b2093180-c54e-11eb-8b3e-9d46ee38b5c3.png">


To determine which employees would be eligible for the mentoring program, the criteria we chose are those that were born between January 1965 and December of 1965.

* The below chart shows there are about 1,549 total retiring employees that are eligible for the mentorship program.

<img width="690" alt="mentorship-elig" src="https://user-images.githubusercontent.com/59187034/120862528-b7667c00-c54e-11eb-8475-6faf57ff3679.png">




## Summary

Out of the 510,000 employees in the company, roughly 90,000 are eligible for retirement in the coming years. Out of those eligible for retirement, there are only 1,549 that are eligible for the mentorship program. Pewlett-Hackard does not have enough manpower to mentor any new employees at the rate that existing employees will be retiring.

Additional queries that can be ran to help minimize potential work overload would be to run one query to determine the oldest and youngest departments and prioritize mentorship with the oldest departments.










