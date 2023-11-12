# cmsc508-fa2023-hw7-template

## Description

This homework is all about creating a database for a company that wants to have a resume for everyone within it. We have a people table to show all there general information like names, bios, date joined, url's, and contact info. To add onto this we have a skills table showcasing all the different skills that people have learned within the company. This table has things such as the skill name, description, time commited, and url. We combine these two tables together within peopleskills to show which employees have what skill(it could be more than one). We also have a roles table showcasing the different roles in the company some examples include boss, developer, and designer. We connect these roles to people within the peopleroles table to show which individuals have which role as it could be more than one. Overall this is a well organized database showcasing people, roles, and skills. These tables will help the company pick the right person for a particular project that is coming up. If they need a certain skill then they can just pull the people that have that skill. If they are looking for a team leader they can pull the team leaders out of the roles table.   

## How to install and run
Before we render the hw7.qmd we need to install a few things such as:
* Python
* Pandas
* Poetry
* Pyenv
  
After these are installed we can then render the qmd files by using Quarto. 

When working with the ddl file make sure you are running all the blocks of code. (on windows ctrl+e ctrl+e)

## How to use

We use the ddl file to create our database adding tables with there information. After we create the table we can manipulate the information in the qmd file. After you are done mainpulating all the tables go back and render the hw7.qmd to put the new information on the html file. 

## Homework tasks

1. Overview of project and description of database
2. Crows-foot diagram of the entities
3. Listings of the three entity tables (people, roles, skills)
4. A section titled “reports” with subsections that
5. List all skill names, tags, and descriptions in alphabetical order by name,
6. List all people and their email addresses in alphabetical order by last_name,
7. List all skills of Person 1;
8. List all people with Skill 6;
9. List all the people with a DEVELOPER role.
10. List all names and email addresses of people without any skills;
11. List all names and tags of skills not used by any people;
12. List all the skills of people in the BOSS role.
13. List all the unused roles


## Files and folders

All necessary files are stored in the *./hw7* folder within the repo.
