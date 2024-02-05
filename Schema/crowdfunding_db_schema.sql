-- ** Testing the tables ** --

Drop table Campaing;
Drop table Category;
Drop table Subcategory;
Drop table Contacts;

select * from Campaing;

-- ** Create Table Campaing ** --
CREATE TABLE Campaing (
    cf_id	 		INTEGER     PRIMARY KEY 	NOT NULL,
    contact_id	 	INTEGER		   				NOT NULL,
    company_name 	VARCHAR   					NOT NULL,
    description 	VARCHAR   					NOT NULL,
    goal 			DECIMAL   					NOT NULL,
    pledged			DECIMAL   					NOT NULL,
    outcome 		VARCHAR   					NOT NULL,
	backers_count	INTEGER						NOT NULL,
	country 		VARCHAR						NOT NULL,
	currency		VARCHAR						NOT NULL,
	launched_date	DATE						NOT NULL,
	end_date		DATE						NOT NULL,
	category_id		VARCHAR(10)					NOT NULL,
	subcategory_id	VARCHAR(10)					NOT NULL,
	FOREIGN KEY(category_id)	REFERENCES Category (category_id),
	FOREIGN KEY(subcategory_id) REFERENCES Subcategory (subcategory_id),
	FOREIGN KEY(contact_id)		REFERENCES Contacts (contact_id));
	
-- ** Create Table Category ** --
CREATE TABLE Category (
    category_id 	VARCHAR(10) PRIMARY KEY	    NOT NULL,
    category    	VARCHAR    				    NOT NULL);
	
-- ** Create Table Subcategory ** --
CREATE TABLE Subcategory (
    subcategory_id 	VARCHAR(10) PRIMARY KEY	    NOT NULL,
    subcategory 	VARCHAR   	   			    NOT NULL);
	
-- ** Create Table Contacts ** --
CREATE TABLE Contacts (
    contact_id 		INTEGER   	PRIMARY KEY	    NOT NULL,
    first_name 		VARCHAR					    NOT NULL,
	last_name 		VARCHAR 				    NOT NULL,
	email			VARCHAR					    NOT NULL);
