# SAS Data Science

## Overview

This repository contains SAS code snippets for data science tasks and analyses. The code provided here serves as examples and templates for various data manipulation, analysis, and visualization tasks using SAS.

## Contents

## SAS Data Processing Example: "characters" Dataset

This SAS code snippet demonstrates the creation of a dataset named "characters" containing information about fictional characters. The dataset has four variables:

1. **name**: Represents the name of the character.
2. **gender**: Indicates the gender of the character (M for male, F for female).
3. **height**: Represents the height of the character.
4. **weight**: Indicates the weight of the character.

The data is manually entered using the `cards` section, where each line represents information about a character, including their name, gender, height, and weight.

### Explanation:
The characters dataset is structured to store information about fictional characters, including their name, gender, height, and weight.
Each observation in the dataset corresponds to a single character and includes their respective information.
The data is manually entered into the code using the input statement followed by the cards section.
This example serves as a template for creating datasets to manage information about characters in a fictional universe, which can be valuable for various analytical and storytelling purposes in SAS.

## SAS Data Processing Example: "employees" Dataset

This SAS code snippet demonstrates the creation of a dataset named "employees" containing information about employees. The dataset has four variables:

1. **name**: Represents the name of the employee.
2. **gender**: Indicates the gender of the employee (M for male, F for female).
3. **age**: Represents the age of the employee.
4. **weight**: Indicates the weight of the employee.

The data is read from the "cards" section using the INFILE statement with a specified delimiter (`,`). Each line in the "cards" section represents information about an employee, including their name, gender, age, and weight.

The resulting dataset provides a structured representation of employees' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

### Explanation:
The employees dataset is structured to store information about employees, including their first name, last name, gender, age, and weight.
The data is read from the "cards" section using the INFILE statement with a specified delimiter (,). The dsd option is used to handle consecutive delimiters as separate, empty fields.
Each line in the "cards" section represents information about an employee, including their first name, last name, gender, age, and weight.
The resulting dataset provides a structured representation of employees' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## SAS Data Processing Example: "guardians" Dataset

This SAS code snippet demonstrates the creation of a dataset named "guardians" containing information about guardians. The dataset has three variables:

1. **first_name**: Represents the first name of the guardian.
2. **last_name**: Indicates the last name of the guardian.
3. **height**: Represents the height of the guardian.

The data is read from the "cards" section using the INFILE statement with a specified delimiter (`,`). The `dsd` option is also used, which stands for "Delimiter-Sensitive Data". This option treats consecutive delimiters as separate, empty fields. In this case, it allows the code to properly handle the data where the delimiter is a comma, and there are no missing values for some variables.

### Explanation:
The guardians dataset is structured to store information about guardians, including their first and last names, and height.
Each observation in the dataset corresponds to a single guardian and includes their respective information.
The dataset can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## SAS Data Processing Example: "custom_dataset" Dataset

This SAS code snippet demonstrates the creation of a dataset named "custom_dataset" containing information about individuals. The dataset has six variables:

1. **region**: Represents the region where the individual resides.
2. **first**: Indicates the first name of the individual.
3. **last**: Represents the last name of the individual.
4. **sex**: Indicates the sex of the individual (M for male, F for female).
5. **years**: Represents the age of the individual.
6. **mass**: Indicates the mass of the individual.

The data is entered using the `cards` section, where each line represents information about an individual, including their region, first name, last name, sex, age, and mass. Additionally, there is a conditional statement that deletes observations where the region is 'Midwest'.

### Explanation:
- The custom_dataset dataset is structured to store information about individuals, including their region of residence, name, sex, age, and mass.
- The @ symbol in the input statement indicates that SAS should hold the input pointer at the current line after reading the value. This allows for reading multiple variables from the same line of data without advancing to the next line.
- The data is manually entered using the input statement followed by the cards section, where each line represents information about an individual.
- A conditional statement is used to delete observations where the region is 'Midwest', demonstrating data manipulation capabilities in SAS.
This example serves as a template for creating datasets to manage information about individuals, which can be valuable for various analytical and reporting purposes in SAS.

## SAS Data Processing Example: "individuals" Dataset

This SAS code snippet demonstrates the creation of a dataset named "individuals" containing information about individuals. The dataset has six variables:

1. **first**: Indicates the first name of the individual.
2. **last**: Represents the last name of the individual.
3. **sex**: Indicates the sex of the individual (M for male, F for female).
4. **years**: Represents the age of the individual.
5. **mass**: Indicates the mass of the individual.

The data is entered using the `cards` section, where each line represents information about an individual, including their first name, last name, gender, age, and mass.

### Explanation:
The individuals dataset is structured to store information about individuals, including their first name, last name, gender, age, and mass.
The @@ symbols in the input statement indicate that SAS should hold the input pointer at the current line after reading the values. This allows for reading multiple observations from the same line of data without advancing to the next line.
The data is manually entered using the input statement followed by the cards section, where each line represents information about an individual.
This example serves as a template for creating datasets to manage information about individuals, which can be valuable for various analytical and reporting purposes in SAS.

## SAS Data Processing Example: "personnel" Dataset

This SAS code snippet demonstrates the creation of a dataset named "personnel" containing information about individuals. The dataset has four variables:

1. **identifier**: Represents the unique identifier of the individual.
2. **years**: Indicates the age of the individual.
3. **sex**: Indicates the gender of the individual (M for male, F for female).
4. **mass**: Indicates the weight of the individual.

The data is read from the "cards" section using the INPUT statement with specified column positions. Each line in the "cards" section represents information about an individual, including their unique identifier, age, gender, and weight.

### Explanation:
- The personnel dataset is structured to store information about individuals, including their unique identifier, age, gender, and weight.
- The data is read from the "cards" section using the INPUT statement with specified column positions. Each line in the "cards" section represents information about an individual, including their unique identifier, age, gender, and weight.
- The resulting dataset provides a structured representation of individuals' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## SAS Data Processing Example: "individual_info" Dataset

This SAS code snippet demonstrates the creation of a dataset named "individual_info" containing information about individuals. The dataset has four variables:

1. **forename**: Represents the forename of the individual.
2. **surname**: Represents the surname of the individual.
3. **sex**: Indicates the gender of the individual (M for male, F for female).
4. **years**: Represents the age of the individual.
5. **mass**: Indicates the weight of the individual.

The data is read from the "cards" section using the INPUT statement with specified column positions. The `#` symbol is used to skip a specified number of columns before reading the next variable. Each line in the "cards" section represents information about an individual, including their forename, surname, gender, age, and weight.

### Explanation:
- The individual_info dataset is structured to store information about individuals, including their forename, surname, gender, age, and weight.
- The data is read from the "cards" section using the INPUT statement with specified column positions. The # symbol is used to skip a specified number of columns before reading the next variable. This allows for reading variables that are not in contiguous columns.
- Each line in the "cards" section represents information about an individual, including their forename, surname, gender, age, and weight.
- The resulting dataset provides a structured representation of individuals' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## SAS Data Processing Example: "personal_data" Dataset

This SAS code snippet demonstrates the creation of a dataset named "personal_data" containing information about individuals. The dataset has four variables:

1. **first_name**: Represents the first name of the individual.
2. **last_name**: Represents the last name of the individual.
3. **sex**: Indicates the gender of the individual (M for male, F for female).
4. **years**: Represents the age of the individual.
5. **mass**: Indicates the weight of the individual.

The data is read from the "cards" section using the INPUT statement with specified column positions. The `/` symbol is used to indicate a continuation of input data from the previous line. Each line in the "cards" section represents information about an individual, including their first name, last name, gender, age, and weight.

### Explanation:
- The personal_data dataset is structured to store information about individuals, including their first name, last name, gender, age, and weight.
- The data is read from the "cards" section using the INPUT statement with specified column positions. The / symbol is used to indicate a continuation of input data from the previous line. This allows for splitting the input data over multiple lines for better readability.
- Each line in the "cards" section represents information about an individual, including their first name, last name, gender, age, and weight.
- The resulting dataset provides a structured representation of individuals' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## SAS Data Import Example: "employee_data" Dataset

This SAS code snippet demonstrates the import of data from an Excel file named "employee_data.xlsx" into a dataset named "employee_data". 

The PROC IMPORT procedure is used to import data from the specified Excel file. The FILENAME statement assigns a fileref "inputfile" to the Excel file path. The PROC IMPORT statement specifies the input data file as "inputfile", the DBMS (Database Management System) as "xlsx" to indicate that the input file is an Excel file, and the OUT option specifies the name of the output SAS dataset as "employee_data". The GETNAMES option is set to "yes" to indicate that the first row of the Excel file contains variable names.

### Explanation:
- The FILENAME statement assigns a fileref "inputfile" to the Excel file located at '/home/x62422869/The Simplest Guide to SAS/employee_data.xlsx'.
- The PROC IMPORT procedure reads the data from the Excel file specified by the FILENAME statement.
- The DBMS option is set to "xlsx" to indicate that the input file format is Excel.
- The OUT option specifies the name of the output SAS dataset as "employee_data".
- The GETNAMES option is set to "yes" to indicate that variable names should be taken from the first row of the Excel file.
- The resulting dataset "employee_data" contains the imported data from the Excel file, which can be further analyzed or used for various tasks in SAS.
- This code snippet demonstrates the process of importing data from an Excel file into a SAS dataset using PROC IMPORT, providing a way to access and analyze external data within the SAS environment.

## SAS Data Processing Example: "selected_females" Dataset

This SAS code snippet demonstrates the creation of a dataset named "selected_females" containing information about selected females from the "sashelp.class" dataset. 

The DATA step is used to create the "selected_females" dataset. Data is copied from the existing dataset "sashelp.class", and the WHERE statement filters observations to include only females.

### Explanation:

- The DATA statement begins the DATA step and specifies the name of the output dataset as "selected_females".
- The SET statement reads data from the existing dataset "sashelp.class".
- The WHERE statement filters observations based on the condition specified (sex = "F"), selecting only females.
- The RUN statement marks the end of the DATA step.
- This code snippet creates a new dataset named "selected_females" by copying data from the existing "sashelp.class" dataset and including only observations where the sex variable is "F" (indicating females). The resulting dataset can be further analyzed or used for various tasks in SAS.

## SAS Data Printing Example: "selected_females_age_12" Dataset

This SAS code snippet demonstrates the printing of data from the "sashelp.class" dataset for selected females aged 12.

The PROC PRINT procedure is used to print data from the specified dataset. The DATA statement is not used in this code snippet as PROC PRINT operates differently from a DATA step. PROC PRINT is a procedure used for data reporting and does not involve the creation or modification of datasets. Instead, it directly operates on existing datasets to display or summarize their contents.

### Explanation:

- The PROC PRINT statement specifies the procedure used for printing data.
- The DATA option indicates the dataset from which data will be printed, in this case, "sashelp.class".
- The WHERE statement filters observations based on the conditions specified (sex = "F" and age = 12), selecting only females aged 12.
- The RUN statement marks the end of the PROC PRINT procedure.
- This code snippet prints data from the "sashelp.class" dataset for selected females aged 12, demonstrating the use of PROC PRINT for data reporting and filtering. Unlike a DATA step, PROC PRINT does not involve the creation or modification of datasets; instead, it operates on existing datasets for reporting purposes.

## SAS Data Processing Example: "modified_student_info" Dataset

This SAS code snippet demonstrates the processing of data from the "student_info" dataset to create a new dataset named "modified_student_info" with modified variables.

The DATA step is used to process data and create the "modified_student_info" dataset. Several transformations are applied to the variables first_name and last_name.

### Explanation:

- The DATA statement begins the DATA step and specifies the name of the output dataset as "modified_student_info".
- The SET statement reads data from the existing dataset "student_info".
- Various DATA step statements are used to manipulate the data:
    - The UPCASE function is used to convert the last_name variable to uppercase and store the result in the ufname variable.
    - The PROPCASE function is used to convert the first_name variable to proper case (capitalize the first letter of each word) and store the result in the plname variable.
    - The LENGTH function is used to calculate the length of the first_name variable and store the result in the lenlname variable.
    - The CAT function is used to concatenate the first_name and last_name variables and store the result in the fullname variable.
    - The LOWCASE function is used to convert the last_name variable to lowercase and store the result in the lfname variable.
- The RUN statement marks the end of the DATA step.
- This code snippet creates a new dataset named "modified_student_info" by processing data from the "student_info" dataset. It applies various transformations to the first_name and last_name variables, creating new variables with modified values. The resulting dataset can be further analyzed or used for various tasks in SAS.

## SAS Data Processing Example: "modified_student_records" Dataset

This SAS code snippet demonstrates the processing of data from the "student_records" dataset to create a new dataset named "modified_student_records" with modified variables.

The DATA step is used to process data and create the "modified_student_records" dataset. Various transformations are applied to the variables first_name, last_name, and course.

### Explanation:

- The DATA statement begins the DATA step and specifies the name of the output dataset as "modified_student_records".
- The SET statement reads data from the existing dataset "student_records".
- Various DATA step statements are used to manipulate the data:
    - The SUBSTR function is used to extract substrings from the course variable to create course_name and course_number variables.
    - The CAT function is used to concatenate the first_name and last_name variables to create the full_name variable.
    - The TRIM and LEFT functions are used to remove leading spaces from the first_name variable before concatenating it with last_name to create the full_name variable.
    - The STRIP function is used to remove leading and trailing spaces from the first_name variable before concatenating it with last_name to create the full_name1 variable.
- The RUN statement marks the end of the DATA step.
- This code snippet creates a new dataset named "modified_student_records" by processing data from the "student_records" dataset. It applies various transformations to the first_name, last_name, and course variables, creating new variables with modified values. The resulting dataset can be further analyzed or used for various tasks in SAS.

## SAS Text Processing Example: "text_processing" Dataset

This SAS code snippet demonstrates text processing functions using the COMPRESS and COMPBL functions.

The DATA step is used to create the "text_processing" dataset and perform text processing operations on character strings.

### Explanation:

- The DATA statement begins the DATA step and specifies the name of the output dataset as "text_processing".
- Character strings are assigned to variables a.
- The COMPRESS function removes all leading, trailing, and repeated spaces from the character string assigned to variable a and stores the result in variable b.
- The COMPBL function removes all multiple spaces from the character string assigned to variable a and stores the result in variable c.
- The RUN statement marks the end of the DATA step.
- This code snippet demonstrates the usage of text processing functions COMPRESS and COMPBL to manipulate character strings in SAS, providing flexibility in data cleansing and formatting tasks.

## SAS Data Processing Example: "student_data" Dataset

This SAS code snippet demonstrates the processing of data from the "sashelp.class" dataset to calculate Body Mass Index (BMI) and determine the weight status of students.

The DATA step is used to process data and create the "student_data" dataset. BMI and weight status are calculated based on the Weight and Height variables.

### Explanation:

- The DATA statement begins the DATA step and specifies the name of the output dataset as "student_data".
- The SET statement reads data from the existing dataset "sashelp.class".
- Various DATA step statements are used to calculate BMI and determine weight status:
    - Weight_kg variable is calculated by converting Weight from pounds to kilograms.
    - Height_m variable is calculated by converting Height from inches to meters.
    - BMI is calculated using the BMI formula: weight (kg) / (height (m) ** 2).
    - IF-THEN statements are used to assign weight status based on BMI values:
        - If BMI is less than or equal to 18.5, the student is classified as "Underweight".
        - If BMI is between 18.5 and 24.9, the student is classified as "Healthy Weight".
        - If BMI is between 24.9 and 29.9, the student is classified as "Overweight".
        - If BMI is greater than 29.9, the student is classified as "Obese".
- The RUN statement marks the end of the DATA step.
- This code snippet creates a new dataset named "student_data" by processing data from the "sashelp.class" dataset. It calculates BMI and determines weight status for each student based on BMI values. The resulting dataset can be further analyzed or used for various tasks in SAS.

## SAS Date Comparison Example: "date_comparison" Dataset

This SAS code snippet demonstrates the comparison of dates in SAS.

The DATA step is used to create the "date_comparison" dataset and perform date calculations.

### Explanation:

- The DATA statement begins the DATA step and specifies the name of the output dataset as "date_comparison".
- Date literals are assigned to variables a, b, c, and d, representing specific dates in SAS date format.
- The difference between dates c and d is calculated and stored in the variable diff.
- The RUN statement marks the end of the DATA step.
- This code snippet demonstrates the comparison of dates in SAS, including the calculation of date differences. SAS represents dates as the number of days since January 1, 1960, with January 1, 1960, being represented as 0. The resulting dataset "date_comparison" can be further analyzed or used for various tasks in SAS.

## SAS Student Health Information Processing

This SAS code snippet processes student health information from the "sashelp.class" dataset to calculate Body Mass Index (BMI) and modify variable names.

### Explanation:

- The DATA statement initiates the DATA step to create a new dataset named "class" by processing data from the existing dataset "sashelp.class".
- The SET statement reads data from the "sashelp.class" dataset.
- Several calculations are performed:
    - WeightKg: Calculates the weight in kilograms by multiplying the Weight variable by 0.454 (conversion factor from pounds to kilograms).
    - HeightM: Calculates the height in meters by multiplying the Height variable by 2.54/100 (conversion factor from inches to meters).
    - BMI: Calculates the Body Mass Index using the formula: weight (kg) / (height (m) ** 2).
- The RENAME statement changes the variable name Sex to Gender.
- The DROP statement removes the Weight variable from the dataset.
- The KEEP statement selects and retains specific variables in the dataset: Name, Sex, Age, BMI, WeightKg, and HeightM.
- The RUN statement marks the end of the DATA step.
- Although the variable Sex is renamed to Gender, it must still be referenced by its original name in subsequent processing steps. This is a limitation of SAS where the RENAME statement only changes the label of the variable, not its internal name.
- This code snippet showcases data processing techniques in SAS, including variable renaming, calculation of derived variables (BMI), and selecting specific variables for analysis or reporting purposes.

## Processing Employee Compensation Data with "employee_compensation" Dataset

The DATA step creates a dataset named "employee_compensation" with variables name, salary, and bonus.
Four observations are provided with corresponding values for each variable.
Calculation of Net Salary Using "+" Operator
The DATA step "testdata1" calculates the net salary by adding the salary and bonus using the "+" operator.
The SET statement reads data from the "employee_compensation" dataset.
Calculation of Net Salary Using SUM Function
The DATA step "testdata2" calculates the net salary using the SUM function.
The SET statement reads data from the "employee_compensation" dataset.

### Explanation:
- In the "testdata1" DATA step, the "+" operator is used to calculate the net salary. However, when a missing value (.) is encountered in the "bonus" variable, SAS treats it as a missing value and sets the result of the addition to missing.
- In the "testdata2" DATA step, the SUM function is used to calculate the net salary. The SUM function treats missing values as zeros and continues the addition. Therefore, even when a missing value (.) is present in the "bonus" variable, the SUM function still calculates the sum of salary and bonus correctly.
- This demonstrates a difference in behavior between the "+" operator and the SUM function when handling missing values in SAS.
- These SAS code snippets illustrate how different methods of calculation can produce different results when dealing with missing values in SAS datasets.

## SAS Numeric Functions Example with _NULL_ Dataset

### Explanation:
- Three separate DATA steps, each starting with DATA NULL, are used to demonstrate different numeric functions in SAS.
- In the first DATA step, variables a and b are assigned values, and the ABS function is used to calculate the absolute value of variable b. The PUT statement is then used to display the values of variables a and c.
- In the second DATA step, variable a is assigned a value, and the CEIL, FLOOR, and INT functions are used to calculate the ceiling, floor, and integer parts of variable a, respectively. The PUT statement is used to display the values of variables a, b, c, and d.
- In the third DATA step, variables a, b, and c are assigned values. The MIN and MAX functions are used to determine the minimum and maximum values among these variables, respectively. The PUT statement is used to display the values of variables d and e.
- These SAS code snippets showcase the usage of numeric functions such as ABS, CEIL, FLOOR, INT, MIN, and MAX, demonstrating their functionality and how they can be utilized in SAS programming for numerical calculations and comparisons.

## SAS String Manipulation Example: Extracting Country Name using the "country_data" Dataset

This SAS code snippet demonstrates how to use the SCAN function to extract specific words or tokens from a string in SAS. In this example, the fourth word from the given string representing the name of a country is extracted and stored in a new variable for further analysis or processing.

### Explanation:

- The DATA step creates a dataset named "country_data".
- A character variable 'a' is assigned the string '     United     Kingdom   of    Great    Britain   '.
- The SCAN function is used to extract the fourth word from the string stored in variable 'a'.
- The result, representing the country name "Great", is stored in a new variable named "country".
- The RUN statement marks the end of the DATA step.

## SAS String Manipulation Example: Finding Substrings using the "country_info" Dataset

This SAS code snippet demonstrates how to use the INDEXC and INDEXW functions to find substrings within a string in SAS. In this example, the position of the character "A" and the word "Emirates" within the given string representing a country name is determined for further analysis or processing.

### Explanation:

- The DATA step creates a dataset named "country_info".
- A character variable 'a' is assigned the string '     United     Arab   Emirates   '.
- The COMPRESS function removes extra spaces from the string stored in variable 'a'.
- The INDEXC function is used to find the position of the character "A" in the compressed string. The result is stored in variable 'b'.
- The INDEXW function is used to find the position of the word "Emirates" in the original string. The result is stored in variable 'c'.
- The RUN statement marks the end of the DATA step.

## SAS Data Generation Example: Generating Numeric Data with "numeric_data" Dataset

This SAS code snippet demonstrates how to generate numeric data using a DO loop in SAS. In this example, variables x_value and y_value are assigned values from 1 to 10 iteratively, resulting in a dataset containing numeric data pairs for further analysis or processing.

### Explanation:

- The DATA step creates a dataset named "numeric_data".
- Within a DO loop that iterates from 1 to 10, two variables x_value and y_value are assigned values equal to the loop index.
- The OUTPUT statement writes the values of x_value and y_value to the dataset for each iteration of the loop.
- The DROP statement removes the loop index variable 'index' from the dataset.
- The RUN statement marks the end of the DATA step.

## SAS Data Processing Example: Calculating BMI

This SAS code snippet demonstrates how to calculate Body Mass Index (BMI) using data from the "sashelp.class" dataset. It calculates BMI values both in metric and imperial units and writes them to a new dataset for further analysis or reporting purposes.

### Explanation:

- The DATA step creates a dataset named "student_health_data".
- The SET statement reads data from the "sashelp.class" dataset.
- Two calculations are performed:
    - Calculation of BMI in metric units: The weight in kilograms (weight_kg) is calculated by multiplying the weight variable by 0.454, and the height in meters (height_m) is calculated by multiplying the height variable by 2.54 and dividing by 100. The BMI is then calculated by dividing the weight in kilograms by the square of the height in meters (height_m * height_m).
    - Calculation of BMI in imperial units: The BMI is calculated directly using the weight and height variables, assuming weight is in pounds and height is in inches.
- The OUTPUT statement writes the calculated BMI values to the dataset.
- The RUN statement marks the end of the DATA step.

## SAS Data Entry Example: Recording Employee Bonuses

This SAS code snippet demonstrates how to record employee bonuses in a dataset using manual data entry. It defines variables for employee name, bonus amount, and date of birth, assigns appropriate formats to the variables, and then manually enters the data for each employee into the dataset for further analysis or reporting.

### Explanation:

- The DATA step creates a dataset named "employee_bonuses".
- The INPUT statement defines three variables: employee_name, bonus_amount, and date_of_birth.
- The INFORMAT statement specifies the format of the bonus_amount variable as a dollar amount and the date_of_birth variable as a date in the format DDMMMYY.
- Four observations are entered manually using the CARDS statement, providing values for each variable.
- The RUN statement marks the end of the DATA step.

## Cars Project SAS Script Explanation

This SAS script, named "CarsProject.SAS", performs data import, manipulation, and analysis tasks related to car data from different regions.

1. **Importing European Car Data:**
   - The PROC IMPORT procedure imports data from an Excel file named "carseu.xlsx" located at '/home/u62422869/The Simplest Guide to SAS/'.
   - The OUT option specifies the output dataset as "cars_eu" and replaces it if it already exists.
   - The GETNAMES option is set to "yes" to indicate that variable names are included in the first row of the Excel file.

2. **Data Formatting for European Cars:**
   - The DATA step "cars_eu" formats the MSRP variable as a dollar amount.

3. **Importing Asian Car Data:**
   - The FILENAME statement assigns a fileref "carsasia" to a text file named "carsasiapipedelimited.txt" located at '/home/u62422869/The Simplest Guide to SAS/'.
   - The PROC IMPORT procedure imports data from the text file, specifying it as a delimited file with "|" as the delimiter.
   - The OUT option specifies the output dataset as "cars_asia" and replaces it if it already exists.
   - The GETNAMES option is set to "no" to indicate that variable names are not included in the data file.

4. **Data Manipulation for Asian Cars:**
   - The DATA step "cars_asia" formats the VAR5 variable as a dollar amount and renames the variables to meaningful names (Make, Model, Type, Origin, MSRP).

5. **Printing European Cars with MSRP over $150,000:**
   - The PROC PRINT procedure prints the dataset "cars_eu", showing only records where MSRP is greater than $150,000.

6. **Printing Asian Cars with MSRP over $150,000:**
   - The PROC PRINT procedure prints the dataset "cars_asia", showing only records where MSRP is greater than $150,000.

This SAS script demonstrates the process of importing, formatting, and analyzing car data from different regions, providing insights into high-value cars in both European and Asian markets.

## SAS Data Import Example: Student Data

This SAS script imports student data from an external data file named "my_data_file.dat" located at '/home/u62422869/The Simplest Guide to SAS/'.

### Explanation:

1. **File Location Specification:**
   - The FILENAME statement assigns a fileref "my_data" to the external data file "my_data_file.dat".

2. **Data Import:**
   - The DATA step "student_data" is initiated to create a dataset named "student_data".
   - The INFILE statement specifies the source file as "my_data".
   - The INPUT statement defines the variables and their positions within the input data lines.
     - Variable "Name" is read from columns 1 to 5.
     - Variable "Age" is read from columns 6 to 7.
     - Variable "Gender" is read from column 18.
     - Variable "Weight" is read from the current position (@18) in the input line.
   - The RUN statement marks the end of the DATA step.

This SAS script demonstrates the process of importing student data from an external file into a SAS dataset. It specifies the file location, defines the variables and their positions within the input data lines, and then reads the data accordingly to create the "student_data" dataset for further analysis or processing.

## SAS Data Combination Example: Combining Student Data

This SAS script combines data from two datasets "student_data_1" and "student_data_2" into a single dataset named "combined_student_data".

### Explanation:

1. **Data Import and Definition (Dataset A):**
   - The DATA step "student_data_1" creates a dataset to store student information.
   - The INPUT statement defines the variables and their types: student_name, gender, student_age, and student_weight.
   - The CARDS statement specifies the data values for each variable.
   - The RUN statement marks the end of the DATA step.

2. **Data Import and Definition (Dataset B):**
   - The DATA step "student_data_2" creates another dataset to store additional student information.
   - Similar to Dataset A, it defines the variables and their types: student_name, gender, student_age, and student_weight.
   - The CARDS statement specifies the data values for each variable.
   - The RUN statement marks the end of the DATA step.

3. **Combining Data (Dataset C):**
   - The DATA step "combined_student_data" combines the data from both datasets A and B.
   - The SET statement is used to concatenate the observations from datasets A and B.
   - The RUN statement marks the end of the DATA step.

This SAS script demonstrates how to combine data from multiple datasets into a single dataset in SAS. It imports and defines variables for student data in two separate datasets, and then combines them into a unified dataset for further analysis or processing.

## SAS Data Append Example: Appending Student Information

This SAS script appends data from two datasets "student_info_1" and "student_info_2" into a single dataset named "combined_student_info".

### Explanation:

1. **Data Import and Definition (Dataset A):**
   - The DATA step "student_info_1" creates a dataset to store student information.
   - The INPUT statement defines the variables and their types: student_name, gender, student_age, and student_weight.
   - The CARDS statement specifies the data values for each variable.
   - The RUN statement marks the end of the DATA step.

2. **Data Import and Definition (Dataset B):**
   - The DATA step "student_info_2" creates another dataset to store additional student information.
   - Similar to Dataset A, it defines the variables and their types: student_name, gender, student_age, and student_weight.
   - The CARDS statement specifies the data values for each variable.
   - The RUN statement marks the end of the DATA step.

3. **Appending Data to Combined Dataset (Dataset C):**
   - The PROC APPEND procedure appends data from datasets A and B into a single dataset named "combined_student_info".
   - Two PROC APPEND statements are used to append data from datasets A and B separately.
   - The BASE option specifies the base dataset where the new observations will be added.
   - The DATA option specifies the dataset from which data will be appended.
   - The RUN statement marks the end of each PROC APPEND procedure.

This SAS script demonstrates how to append data from multiple datasets into a single dataset in SAS. It imports and defines variables for student data in two separate datasets, and then appends them into a unified dataset for further analysis or processing. Note that running the code multiple times may result in duplicated appended records.

## SAS Data Deduplication Example: Removing Duplicate Student Records

This SAS script processes student records from the "student_records" dataset to remove duplicate entries and create a sorted dataset named "sorted_student_records".

### Explanation:

1. **Data Import and Definition (Dataset A):**
   - The DATA step "student_records" creates a dataset to store student information.
   - The INPUT statement defines the variables and their types: student_name, student_gender, student_age, and student_weight.
   - The CARDS statement specifies the data values for each variable.
   - The RUN statement marks the end of the DATA step.

2. **Sorting and Deduplicating Data:**
   - The PROC SORT procedure sorts the "student_records" dataset by student_name.
   - The OUT option specifies the output dataset as "sorted_student_records".
   - The NODUPKEY option removes duplicate observations based on the sorted key variable (student_name).
   - The BY statement in PROC SORT specifies the variable by which the dataset should be sorted.
   - The RUN statement marks the end of the PROC SORT procedure.

This SAS script demonstrates how to remove duplicate records from a dataset in SAS using the PROC SORT procedure with the NODUPKEY option. It sorts the dataset by student name and removes duplicate entries, resulting in a sorted dataset with unique student records.

## SAS Data Deduplication Example: Removing Duplicate Employee Records

This SAS script processes employee records from the "employee_data" dataset to remove duplicate entries and create a sorted dataset named "sorted_employee_data".

### Explanation:

1. **Data Import and Definition (Dataset A):**
   - The DATA step "employee_data" creates a dataset to store employee information.
   - The INPUT statement defines the variables and their types: employee_name, employee_gender, employee_age, and employee_weight.
   - The CARDS statement specifies the data values for each variable.
   - The RUN statement marks the end of the DATA step.

2. **Sorting and Deduplicating Data:**
   - The PROC SORT procedure sorts the "employee_data" dataset by employee_name.
   - The OUT option specifies the output dataset as "sorted_employee_data".
   - The NODUP option removes duplicate observations based on all variables.
   - The BY statement in PROC SORT specifies the variable by which the dataset should be sorted.
   - The RUN statement marks the end of the PROC SORT procedure.

This SAS script demonstrates how to remove duplicate records from a dataset in SAS using the PROC SORT procedure with the NODUP option. It sorts the dataset by employee name and removes duplicate entries, resulting in a sorted dataset with unique employee records.

## SAS Data Merge Example: Combining Employee Information

This SAS script merges two datasets, "employee_info" and "employee_height", based on the common variable "employee_name" to create a combined dataset named "combined_employee_data".

### Explanation:

1. **Data Import and Definition (Datasets A and B):**
   - Two DATA steps, "employee_info" and "employee_height", create datasets to store employee information and height data, respectively.
   - The INPUT statements define the variables and their types: employee_name, employee_gender, employee_age, employee_weight in "employee_info", and employee_name, employee_height in "employee_height".
   - The CARDS statements specify the data values for each variable.
   - The RUN statements mark the end of the DATA steps.

2. **Sorting Data (Datasets A and B):**
   - Two PROC SORT procedures sort datasets "employee_info" and "employee_height" by the variable "employee_name".
   - The BY statement in PROC SORT specifies the variable by which the datasets should be sorted.
   - The RUN statements mark the end of the PROC SORT procedures.

3. **Merging Datasets (Dataset C):**
   - The DATA step "combined_employee_data" merges datasets "employee_info" and "employee_height" based on the common variable "employee_name".
   - The MERGE statement combines the observations from both datasets into a single dataset.
   - The BY statement specifies the variable by which the datasets should be merged.
   - The RUN statement marks the end of the DATA step.

This SAS script demonstrates how to merge two datasets based on a common variable using the MERGE statement. It combines employee information and height data into a single dataset for comprehensive analysis or reporting.

## SAS Data Merge Example: Combining Height and Weight Information

This SAS script merges two datasets, "class_weight" and "class_height", based on the common variable "name" to create a combined dataset named "class_merged".

### Explanation:

1. **Data Import and Definition (Datasets A and B):**
   - Two DATA steps, "class_weight" and "class_height", create datasets to store weight and height information, respectively.
   - The INPUT statements define the variables and their types: name, gender, age, and weight in "class_weight", and name and height in "class_height".
   - The CARDS statements specify the data values for each variable.
   - The RUN statements mark the end of the DATA steps.

2. **Sorting Data (Datasets A and B):**
   - Two PROC SORT procedures sort datasets "class_weight" and "class_height" by the variable "name".
   - The BY statement in PROC SORT specifies the variable by which the datasets should be sorted.
   - The RUN statements mark the end of the PROC SORT procedures.

3. **Merging Datasets (Dataset C):**
   - The DATA step "class_merged" merges datasets "class_weight" and "class_height" based on the common variable "name".
   - The MERGE statement combines the observations from both datasets into a single dataset.
   - The BY statement specifies the variable by which the datasets should be merged.
   - The IF statement ensures that only observations present in both datasets are included in the merged dataset.
   - The RUN statement marks the end of the DATA step.

This SAS script demonstrates how to merge two datasets based on a common variable using the MERGE statement. It combines weight and height information into a single dataset for comprehensive analysis or reporting.

## SAS SQL Example: Creating a New Table from an Existing Dataset

This SAS SQL query creates a new table named "student_info" by selecting all records from the existing dataset "sashelp.class".

### Explanation:

1. **PROC SQL Statement:**
   - The PROC SQL statement initiates the SQL procedure.

2. **CREATE TABLE Statement:**
   - The CREATE TABLE statement is used to define and create a new table named "student_info".
   - The AS keyword specifies that the new table will be created based on the result of a query.

3. **SELECT Statement:**
   - The SELECT statement retrieves all columns (represented by '*') from the existing dataset "sashelp.class".

4. **FROM Clause:**
   - The FROM clause specifies the source dataset "sashelp.class" from which data will be selected.

5. **QUIT Statement:**
   - The QUIT statement ends the SQL procedure.

This SAS SQL query demonstrates how to create a new table by selecting all records from an existing dataset using the PROC SQL procedure. It provides a way to store and manipulate data for further analysis or reporting purposes.

## SAS SQL Example: Creating a New Table with Filtered Data

This SAS SQL query creates a new table named "male_students" by selecting all records from the existing dataset "sashelp.class" where the sex is 'M'.

### Explanation:

1. **PROC SQL Statement:**
   - The PROC SQL statement initiates the SQL procedure.

2. **CREATE TABLE Statement:**
   - The CREATE TABLE statement is used to define and create a new table named "male_students".
   - The AS keyword specifies that the new table will be created based on the result of a query.

3. **SELECT Statement:**
   - The SELECT statement retrieves all columns (represented by '*') from the existing dataset "sashelp.class".

4. **FROM Clause:**
   - The FROM clause specifies the source dataset "sashelp.class" from which data will be selected.

5. **WHERE Clause:**
   - The WHERE clause filters the records based on the condition that sex is 'M'.

6. **QUIT Statement:**
   - The QUIT statement ends the SQL procedure.

This SAS SQL query demonstrates how to create a new table by selecting specific records from an existing dataset based on certain criteria using the PROC SQL procedure. It allows for the creation of targeted subsets of data for further analysis or reporting purposes.

## SAS SQL Example: Creating a Summary Table with Grouping + AVG.

This SAS SQL query creates a new table named "average_age_by_sex" by calculating the average age and grouping the data by sex from the 'sashelp.class' dataset.

### Explanation:

1. **PROC SQL Statement:**
   - The PROC SQL statement initiates the SQL procedure.

2. **CREATE TABLE Statement:**
   - The CREATE TABLE statement is used to define and create a new table named "average_age_by_sex".
   - The AS keyword specifies that the new table will be created based on the result of a query.

3. **SELECT Statement:**
   - The SELECT statement calculates the average age using the AVG() function and renames the result column as "average_age".
   - It also selects the 'sex' column from the 'sashelp.class' dataset.
   
4. **FROM Clause:**
   - The FROM clause specifies the source dataset "sashelp.class" from which data will be selected.

5. **GROUP BY Clause:**
   - The GROUP BY clause groups the data by the 'sex' column.

6. **QUIT Statement:**
   - The QUIT statement ends the SQL procedure.

This SAS SQL query demonstrates how to create a summary table by calculating aggregates and grouping data based on specific criteria from an existing dataset using the PROC SQL procedure. It provides insights into the distribution of average ages by sex.

## SAS SQL Example: Creating a Summary Table with Grouping + MIN.

This SAS SQL query creates a new table named "minimum_msrp_by_origin" by calculating the minimum Manufacturer's Suggested Retail Price (MSRP) and grouping the data by origin from the 'sashelp.cars' dataset.

### Explanation:

1. **PROC SQL Statement:**
   - The PROC SQL statement initiates the SQL procedure.

2. **CREATE TABLE Statement:**
   - The CREATE TABLE statement is used to define and create a new table named "minimum_msrp_by_origin".
   - The AS keyword specifies that the new table will be created based on the result of a query.

3. **SELECT Statement:**
   - The SELECT statement calculates the minimum MSRP using the MIN() function and renames the result column as "minimum_msrp".
   - It also selects the 'origin' column from the 'sashelp.cars' dataset.
   
4. **FROM Clause:**
   - The FROM clause specifies the source dataset "sashelp.cars" from which data will be selected.

5. **GROUP BY Clause:**
   - The GROUP BY clause groups the data by the 'origin' column.

6. **QUIT Statement:**
   - The QUIT statement ends the SQL procedure.

This SAS SQL query demonstrates how to create a summary table by calculating aggregates and grouping data based on specific criteria from an existing dataset using the PROC SQL procedure. It provides insights into the distribution of minimum MSRP values by origin.

## SAS SQL Example: Creating a Table with Unique Gender-Age Combinations

This SAS SQL query creates a new table named "unique_gender_age" by selecting distinct combinations of gender and age from the 'sashelp.class' dataset. The resulting table is ordered by gender and age.

### Explanation:

1. **PROC SQL Statement:**
   - The PROC SQL statement initiates the SQL procedure.

2. **CREATE TABLE Statement:**
   - The CREATE TABLE statement is used to define and create a new table named "unique_gender_age".
   - The AS keyword specifies that the new table will be created based on the result of a query.

3. **SELECT Statement:**
   - The SELECT statement retrieves distinct combinations of gender and age from the 'sashelp.class' dataset.
   - The DISTINCT keyword ensures that only unique combinations are selected.

4. **FROM Clause:**
   - The FROM clause specifies the source dataset "sashelp.class" from which data will be selected.

5. **ORDER BY Clause:**
   - The ORDER BY clause orders the result set by gender and age.

6. **QUIT Statement:**
   - The QUIT statement ends the SQL procedure.

This SAS SQL query demonstrates how to create a new table with unique combinations of gender and age from an existing dataset using the PROC SQL procedure. It provides a way to analyze and explore the distribution of gender-age combinations in the dataset.

## SAS Data Processing Example: Transposing Student Information

This SAS snippet demonstrates data processing steps involving the creation of a dataset named STUDENT_INFO and its subsequent transposition using the PROC TRANSPOSE procedure.

### Explanation:

1. **DATA Step (Creating Dataset):**
   - The DATA statement initiates the creation of a dataset named STUDENT_INFO.
   - Variables STUDENT_NAME, STUDENT_GENDER, STUDENT_AGE, and STUDENT_WEIGHT are defined to store information about students.
   - The INPUT statement specifies the format for reading data values.
   - The CARDS statement provides the actual data values for the variables.

2. **PROC TRANSPOSE Step:**
   - The PROC TRANSPOSE procedure is used to transpose the dataset STUDENT_INFO.
   - It transposes the variables STUDENT_GENDER, STUDENT_AGE, and STUDENT_WEIGHT.
   - The ID statement specifies STUDENT_NAME as the identifier variable.
   - The resulting transposed dataset is named T_STUDENT_INFO.

This SAS code snippet illustrates how to organize and manipulate student information, demonstrating the creation of a dataset and its transformation through transposition for further analysis or reporting purposes.

## SAS Data Processing Example: Transposing Patient Vitals

This SAS snippet demonstrates data processing steps involving the creation of a dataset named PATIENT_VITALS and its subsequent transposition using the PROC TRANSPOSE procedure.

### Explanation:

1. **DATA Step (Creating Dataset):**
   - The DATA statement initiates the creation of a dataset named PATIENT_VITALS.
   - Variables PATIENT_ID, PATIENT_NAME, TEST_TYPE, and TEST_VALUE are defined to store patient vital information.
   - The INPUT statement specifies the format for reading data values.
   - The CARDS statement provides the actual data values for the variables.

2. **PROC SORT Step:**
   - The PROC SORT procedure is used to sort the dataset PATIENT_VITALS.
   - It sorts the data by PATIENT_ID and PATIENT_NAME.

3. **PROC TRANSPOSE Step:**
   - The PROC TRANSPOSE procedure transposes the dataset PATIENT_VITALS.
   - It transposes the variable TEST_VALUE.
   - The ID statement specifies TEST_TYPE as the identifier variable.
   - The BY statement specifies PATIENT_ID and PATIENT_NAME for grouping.
   - The resulting transposed dataset is named T_PATIENT_VITALS.

This SAS code snippet illustrates how to organize and manipulate patient vital information, demonstrating the creation of a dataset and its transformation through transposition for further analysis or reporting purposes.

## Usage

Clone the repository to your local machine.
Open the desired SAS file in SAS Studio, SAS Enterprise Guide, or any other SAS environment.
Run the code to execute the specified data processing or analysis tasks.
Customize the code as needed for your specific use case.
Future Updates

This repository will be regularly updated with additional SAS code snippets for various data science tasks and analyses. Stay tuned for more examples and templates to support your data science projects.

## License

This repository is licensed under the MIT License. Feel free to use the code provided here for educational, research, or commercial purposes. Contributions are welcome!
