# Crowdfunding_ETL

## Autors
> **Kimani Phillips.**

Contact Information:    kimaniphillips4@gmail.com

> **Maruti Biswas.**

Contact Information:    mohanbiswas28@gmail.com

> **David Castano.**

Contact Information:   David.castanoe@yahoo.com


## Description 
The Objective of this project is to build an Crowdfunding ETL pipeline (Extract, Transform, Load) using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. 

After the data is being transform the purpose is to create 4 CSV files (Category, Subcategory, Contacts, Compaing) and use them to create and ERD (entity-relationship diagram), table Schema and upload the CSV file data into Postgres Database.

## Instructions
The instructions for this mini project are divided into the following subsections:

    1. Create the Category and Subcategory DataFrames
    2. Create the Campaign DataFrame
    3. Create the Contacts DataFrame
    4. Create the Crowdfunding Database.

### <center> 1. Create the Category and Subcategory DataFrames
Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

1.1 "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories

1.2. "category" column that contains only the category titles

1.3 Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

### <center> 2. Create the Campaign DataFrame

2.1 Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

    The "cf_id" column
    The "contact_id" column
    The "company_name" column
    he "blurb" column, renamed to "description"
    The "goal" column, converted to the float data type
    The "pledged" column, converted to the float data type
    The "outcome" column
    The "backers_count" column
    The "country" column
    The "currency" column

    The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format

    The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format

    The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame

    The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

2.2 Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

### <center> 3. Create the Contacts DataFrame

Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:

    3.1 Option 1: Use Python dictionary methods.

        1. Import the contacts.xlsx file into a DataFrame.
        2. Iterate through the DataFrame, converting each row to a dictionary.
        3. Iterate through each dictionary, doing the following:
            - Extract the dictionary values from the keys by using a Python list comprehension.
            - Add the values for each row to a new list.
        4. Create a new DataFrame that contains the extracted data.
        5. Split each "name" column value into a first and last name, and place each in a new column.
        6. Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

If you chose Option 2, complete the following steps:

    3.2 Option 2: Use regular expressions.

        1. Import the contacts.xlsx file into a DataFrame.
        2. Extract the "contact_id", "name", and "email" columns by using regular expressions.
        3. Create a new DataFrame with the extracted data.
        4. Convert the "contact_id" column to the integer type.
        5. Split each "name" column value into a first and a last name, and place each in a new column.
        6. Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

### <center> 4. Create the Crowdfunding Database

    1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBD Links to an external site..

    2. Use the information from the ERD to create a table schema for each CSV file.
        Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

    3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

    4. Create a new Postgres database, named crowdfunding_db.

    5. Using the database schema, create the tables in the correct order to handle the foreign keys.

    6. Verify the table creation by running a SELECT statement for each table.

    7. Import each CSV file into its corresponding SQL table.

    8. Verify that each table has the correct data by running a SELECT statement for each.
****
## Results

After we Extract, Transform and Load our Crowfunding Pipeline project here are the results from `Postgres` of each Data frame `Category, Subcategory, Contacts & Campaing`, from the crowdfunding dataset we extract the following results:

> **Category:** there are 9 Different categories.
<p align='center'> <img src="https://github.com/Dav9nchi/Crowdfunding_ETL/blob/main/Images/Category.jpg"></p>

> **Subcategory:** there are 24 different subcategories of the 9 categories.
<p align='center'> <img src='images/Subcategory.jpg'></p>

> **Contacts:** we count with 1000 Different contacts.
<p align='center'> <img src='images/Contacts.jpg'></p>

> **Campaign:** in the following screenshot we have all the companies and their descriptions of the crowdfunding including their respective **Goal, pledged, outcome of campaign, country, currency, their time frame where it was launched and where it ends and last to which category and subcatefory belongs to**
<p align='center'> <img src='images/Compaing.jpg'></p>

This seccion of the report (Results) also includes our ERD (entity-relationship diagram) of our 4 Dataframes adding their respective Data types, Primary keys and foreign keys for each one of them.

> **ERD:(entity-relationship diagram)** The 3 different Dataframes Category, Subcategory and contacts relates with the major Campaing dataframe providing their unique information and make it more accesible.

<p align='center'> <img src='images/ERD.jpg'></p>

## Credits
> The research support comes from Google, Chat Gpt, AskBCS, Teacher, TA, Tutors.