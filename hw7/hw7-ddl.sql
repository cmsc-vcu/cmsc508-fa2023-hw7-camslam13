# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleroles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    skills_id int NOT NULL,
    skills_name varchar(255) NOT NULL,
    skills_description varchar(255) NOT NULL, 
    skills_tag varchar(255) NOT NULL, 
    skills_url varchar(255),
    skills_time_commitment int,
    primary key (skills_id)
);


# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills ( skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) values
    ( 1, 'kick boxing', 'fighting style', 'Skill 1', 'https://fakeurl.com/kickboxing', 10),
    ( 2, 'python language', 'a coding language known for its easy to use functionality', 'Skill 2', 'https://fakeurl.com/python', 15),
    ( 3, 'react', 'javascript library for builidng user interfaces', 'Skill 3', 'https://fakeurl.com/react', 10),
    ( 4, 'SQL wizardry', 'manipulating databases with the highest finesse', 'Skill 4', 'https://fakeurl.com/SQLWizardy', 20),
    ( 5, 'mind reading', 'the ability to read someones mind and know what they are thinking', 'Skill 5', 'https://fakeurl.com/minds', 5),
    ( 6, 'time traveler', 'being able to journey into the past, present, and future', 'Skill 6', 'https://fakeurl.com/traveler', 40),
    ( 7, 'sarcasm proficient', 'coming up with witty remarks that relay a sense of humor', 'Skill 7', 'https://fakeurl.com/sarcasm', 25),
    ( 8, 'keyboard guru', 'using keystrokes to create effiecient and appealing data styles', 'Skill 8', 'https://fakeurl.com/keyboard', 10) 
;

# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int NOT NULL,
    people_first_name varchar(255),
    people_last_name varchar(255) NOT NULL,
    people_email varchar(255),
    people_linkedin_url varchar(255),
    people_headshot_url varchar(255),
    people_discord_handle varchar(255),
    people_brief_bio varchar(255),
    people_date_joined date, 
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) values 
(1, 'John', 'Person 1', 'john.person1@email.com', 'https://www.linkedin.com/in/john-person1', 'https://fakeurl.com/headshot1.jpg', 'John#1234', 'Passionate coder, adventurer, and kickboxing enthusiast.', '2023-01-15'),

(2, 'Alice', 'Person 2', 'alice.person2@email.com', 'https://www.linkedin.com/in/alice-person2', 'https://fakeurl.com/headshot2.jpg', 'Alice#5678', 'Enthusiastic designer with an eye for detail. Fluent in React, SQL, and mind reading.', '2023-02-20'),

(3, 'Bob', 'Person 3', 'bob.person3@email.com', 'https://www.linkedin.com/in/bob-person3', 'https://fakeurl.com/headshot3.jpg', 'Bob#9876', 'SQL sorcerer and database enthusiast.', '2023-03-10'),

(4, 'Eva', 'Person 4', 'eva.person4@email.com', 'https://www.linkedin.com/in/eva-person4', 'https://fakeurl.com/headshot4.jpg', 'Eva#4321', 'Mind reader and code optimizer.', '2023-04-05'),

(5, 'Charlie', 'Person 5', 'charlie.person5@email.com', 'https://www.linkedin.com/in/charlie-person5', 'https://fakeurl.com/headshot5.jpg', 'Charlie#2468', 'Adventurous time traveler with a love for React.', '2023-05-12'),

(6, 'Sophia', 'Person 6', 'sophia.person6@email.com', 'https://www.linkedin.com/in/sophia-person6', 'https://fakeurl.com/headshot6.jpg', 'Sophia#1357', 'Sarcasm aficionado and keyboard guru.', '2023-06-18'),

(7, 'Max', 'Person 7', 'max.person7@email.com', 'https://www.linkedin.com/in/max-person7', 'https://fakeurl.com/headshot7.jpg', 'Max#8765', 'Kickboxing champion and React enthusiast.', '2023-07-23'),

(8, 'Olivia', 'Person 8', 'olivia.person8@email.com', 'https://www.linkedin.com/in/olivia-person8', 'https://fakeurl.com/headshot8.jpg', 'Olivia#5432', 'Pythonic code sorceress and data stylist.', '2023-08-30'),

(9, 'Daniel', 'Person 9', 'daniel.person9@email.com', 'https://www.linkedin.com/in/daniel-person9', 'https://fakeurl.com/headshot9.jpg', 'Daniel#1098', 'Time-traveling troubleshooter and pixel sorcerer.', '2023-09-14'),

(10, 'Ava', 'Person 10', 'ava.person10@email.com', 'https://www.linkedin.com/in/ava-person10', 'https://fakeurl.com/headshot10.jpg', 'Ava#6543', 'Email inbox voyager and multitasking unicorn tamer.', '2023-10-19')
;


# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

    CREATE TABLE peopleskills (
        peopleskills_id int auto_increment NOT NULL,
        skills_id int NOT NULL, 
        people_id int NOT NULL, 
        date_acquired date default (current_date) NOT NULL,
        primary key (peopleskills_id),
        foreign key (skills_id) references skills (skills_id),
        foreign key (people_id) references people (people_id)
    );


# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.
 
insert into peopleskills (people_id, skills_id) values
    (1,1),
    (1,3),
    (1,6),
    (2,3),
    (2,4),
    (2,5),
    (3,1),
    (3,5),
    (5,3),
    (5,6),
    (6,2),
    (6,3),
    (6,4),
    (7,3),
    (7,5),
    (7,6),
    (8,1),
    (8,3),
    (8,5),
    (8,6),
    (9,2),
    (9,5),
    (9,6),
    (10,1),
    (10,4),
    (10,5)
    ;

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles(
    roles_id int,
    roles_name varchar(255),
    roles_sort_priority int,
    PRIMARY KEY (roles_id)
);


# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

insert into roles(roles_id, roles_name, roles_sort_priority) values
    (1, 'Designer', 10),
    (2, 'Developer', 20),
    (3, 'Recruit', 30),
    (4, 'Team_Lead', 40),
    (5, 'Boss', 50),
    (6, 'Mentor', 60)
    ;

# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles(
    peopleroles_id int auto_increment NOT NULL,
    people_id int NOT NULL,
    role_id int NOT NULL,
    date_assigned date default (current_date) NOT NULL,
    primary key (peopleroles_id),
    foreign key (people_id) references people (people_id),
    foreign key (role_id) references roles (roles_id)
);


# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

insert into peopleroles(people_id, role_id) values
(1, 2),
(2, 5),
(2, 6),
(3, 2),
(3, 4),
(4, 3),
(5, 3),
(6, 2),
(6, 1),
(7, 1),
(8, 1),
(8, 4),
(9, 2),
(10, 2),
(10, 1)
;