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
The custom_dataset dataset is structured to store information about individuals, including their region of residence, name, sex, age, and mass.
The @ symbol in the input statement indicates that SAS should hold the input pointer at the current line after reading the value. This allows for reading multiple variables from the same line of data without advancing to the next line.
The data is manually entered using the input statement followed by the cards section, where each line represents information about an individual.
A conditional statement is used to delete observations where the region is 'Midwest', demonstrating data manipulation capabilities in SAS.
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
The personnel dataset is structured to store information about individuals, including their unique identifier, age, gender, and weight.
The data is read from the "cards" section using the INPUT statement with specified column positions. Each line in the "cards" section represents information about an individual, including their unique identifier, age, gender, and weight.
The resulting dataset provides a structured representation of individuals' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## SAS Data Processing Example: "individual_info" Dataset

This SAS code snippet demonstrates the creation of a dataset named "individual_info" containing information about individuals. The dataset has four variables:

1. **forename**: Represents the forename of the individual.
2. **surname**: Represents the surname of the individual.
3. **sex**: Indicates the gender of the individual (M for male, F for female).
4. **years**: Represents the age of the individual.
5. **mass**: Indicates the weight of the individual.

The data is read from the "cards" section using the INPUT statement with specified column positions. The `#` symbol is used to skip a specified number of columns before reading the next variable. Each line in the "cards" section represents information about an individual, including their forename, surname, gender, age, and weight.

### Explanation:
The individual_info dataset is structured to store information about individuals, including their forename, surname, gender, age, and weight.
The data is read from the "cards" section using the INPUT statement with specified column positions. The # symbol is used to skip a specified number of columns before reading the next variable. This allows for reading variables that are not in contiguous columns.
Each line in the "cards" section represents information about an individual, including their forename, surname, gender, age, and weight.
The resulting dataset provides a structured representation of individuals' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## SAS Data Processing Example: "personal_data" Dataset

This SAS code snippet demonstrates the creation of a dataset named "personal_data" containing information about individuals. The dataset has four variables:

1. **first_name**: Represents the first name of the individual.
2. **last_name**: Represents the last name of the individual.
3. **sex**: Indicates the gender of the individual (M for male, F for female).
4. **years**: Represents the age of the individual.
5. **mass**: Indicates the weight of the individual.

The data is read from the "cards" section using the INPUT statement with specified column positions. The `/` symbol is used to indicate a continuation of input data from the previous line. Each line in the "cards" section represents information about an individual, including their first name, last name, gender, age, and weight.

### Explanation:
The personal_data dataset is structured to store information about individuals, including their first name, last name, gender, age, and weight.
The data is read from the "cards" section using the INPUT statement with specified column positions. The / symbol is used to indicate a continuation of input data from the previous line. This allows for splitting the input data over multiple lines for better readability.
Each line in the "cards" section represents information about an individual, including their first name, last name, gender, age, and weight.
The resulting dataset provides a structured representation of individuals' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

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

## Usage

Clone the repository to your local machine.
Open the desired SAS file in SAS Studio, SAS Enterprise Guide, or any other SAS environment.
Run the code to execute the specified data processing or analysis tasks.
Customize the code as needed for your specific use case.
Future Updates

This repository will be regularly updated with additional SAS code snippets for various data science tasks and analyses. Stay tuned for more examples and templates to support your data science projects.

## License

This repository is licensed under the MIT License. Feel free to use the code provided here for educational, research, or commercial purposes. Contributions are welcome!
