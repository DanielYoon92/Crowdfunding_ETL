-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/t7fwZi
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


DROP TABLE Campaign
DROP TABLE Category
DROP TABLE Contacts
DROP TABLE SubCategory

SELECT * FROM Campaign
SELECT * from Category
SELECT * from Contacts
SELECT * from SubCategory

CREATE TABLE Campaign (
    cf_id int PRIMARY KEY,
    contact_id int,
    company_name varchar(255),
    description varchar(255),
    goal int,
    pledged int,
    outcome varchar(255),
    backers_count int,
    country varchar(255),
    currency varchar(255),
    launched_date varchar(255),
    end_date varchar(255),
    category_id varchar,
    subcategory_id varchar,
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES SubCategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES Contacts (contact_id)
);
CREATE TABLE Category (
    category_id varchar PRIMARY KEY,
    category varchar(255)
);
CREATE TABLE SubCategory (
    subcategory_id varchar PRIMARY KEY,
    subcategory varchar(255)
);
CREATE TABLE Contacts (
    contact_id int PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255)
);