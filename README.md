# Pewlett-Hackard-Analysis
- - - - 
- Author: Molly Dorman
- Date: June 2022
- Programs/Tools Used: PostgreSQL with pgAdmin
- - - - 
## Analysis Overview:

The purpose of this analysis is to help the fictional company “Pewlett-Hackard” understand the portion of their population that is about to retire, in order to prepare for the large number of employees leaving the company, also known as the “silver tsunami.” More specifically, we want to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. The mentorship program is a strategic initiative that will allow tenured, retirement-ready employees to mentor and develop the next generation of employees. 
- - - - 
## Results Overview:

### Deliverable 1: Number of Retiring Employees by Title
* There are 72,458 total current employees who are likely to be retiring within the next few years (based on them being born between 1952 and 1955) at Pewlett-Hackard. Here is a breakdown of the employees of retirement age by department:

<img width="168" alt="Screen Shot 2022-06-05 at 12 03 50 PM" src="https://user-images.githubusercontent.com/103781847/172062437-97ebcde9-3be1-4a97-bccf-2bb7ce9bdbb3.png">

* The two biggest buckets of employees that are about to retire are Senior Engineers and Senior staff, which makes sense; retirement age employees are likely to have more time in the workforce, be more experienced and thus be in more senior roles. These are the roles I would focus on developing younger employees towards, so they're ready to fill those spots once they are vacated by retirement-ready employees. 

### Deliverable 2: Employees Eligible for the Mentorship Program
* 1,549 current employees are eligible for the mentorship program, based on them being born in 1965 and having some more time before they retire. We created a table to show the employees who are eligible for the program, along with their current job title:

![Mentorship_eligibility table](https://user-images.githubusercontent.com/103781847/172062575-d25e7ae2-ab14-4e06-9086-57daec8b5685.png)

* When we create a pivot table to show the breakdown of mentorship-eligible employees by current role, we see that we have the greatest number of possible mentors from the Staff and Engineer population. 

<img width="196" alt="Screen Shot 2022-06-05 at 12 18 06 PM" src="https://user-images.githubusercontent.com/103781847/172062579-9d8f31b2-d2f0-48a0-b2ad-cfc54c1cc626.png">

- - - -
## Summary:

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?

* Up to 72,458 roles will need to be backfilled in the next 2-3 years due to baby boomers who are getting up to retirement age. That being said, this is a good time to reassess hiring needs as younger, more technically savvy employees are being onboarded to the company. It's possible that they will not have to backfill all employees who retire as roles are streamlined and the work is made more efficient with technological advances. 

3. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 

* Absolutely. Our initial "mentorship eligibility" list only looked at current employees who were born in 1965. If we expand that to employees born in 1960-1965, we still get a list of almost 94,000 employees who may still work for the company for a few more years and who can be part of the mentorship program. 

Here are two additional queries/tables I would use to get a better idea of who we can pull into the mentorship program:

* This query will give us a bigger group of employees to pull into the mentorship program. 

<img width="694" alt="Screen Shot 2022-06-05 at 1 26 56 PM" src="https://user-images.githubusercontent.com/103781847/172065086-067b4a3f-0a05-4d1e-a46d-f423c7b84d39.png">

* I would also want to use a query to look at current employees by department, so we can get a sense of the overall number of employees with the company. Here's the query I'd use to determine the number of current employees so I can compare that with the number of retirement-ready employees.

<img width="398" alt="Screen Shot 2022-06-05 at 1 27 20 PM" src="https://user-images.githubusercontent.com/103781847/172065094-9286798c-90d6-44cf-8fd4-a2c4ed36fad4.png">

