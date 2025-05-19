# SAS Data Science 📊

## Overview 🌍

This repository contains SAS code snippets for data science tasks and analyses. The code provided here serves as examples and templates for various data manipulation, analysis, and visualization tasks using SAS.

## 📂 Contents

## 📌 SAS Data Processing Example: "characters" Dataset

📄 [CharactersData.sas](SAS/CharactersData.sas): This SAS code snippet demonstrates the creation of a dataset named "characters" containing information about fictional characters. The dataset has four variables:

### 📝 Dataset Structure
1. **name**: Represents the name of the character.
2. **gender**: Indicates the gender of the character (M for male, F for female).
3. **height**: Represents the height of the character.
4. **weight**: Indicates the weight of the character.

### 📊 Data Entry Method
- The data is manually entered using the `cards` section, where each line represents information about a character, including their name, gender, height, and weight.

### 🔍 Explanation
- The characters dataset is structured to store information about fictional characters, including their name, gender, height, and weight.
- Each observation in the dataset corresponds to a single character and includes their respective information.
- The data is manually entered into the code using the input statement followed by the cards section.
- This example serves as a template for creating datasets to manage information about characters in a fictional universe, which can be valuable for various analytical and storytelling purposes in SAS.

## 📌 SAS Data Processing Example: "employees" Dataset

📄 [InputUsingDelimiters.sas](SAS/InputUsingDelimiters.sas): This SAS code snippet demonstrates the creation of a dataset named "employees" containing information about employees. The dataset has four variables:

### 📝 Dataset Structure
1. **name**: Represents the name of the employee.
2. **gender**: Indicates the gender of the employee (M for male, F for female).
3. **age**: Represents the age of the employee.
4. **weight**: Indicates the weight of the employee.

### 📊 Data Entry Method
- The data is read from the "cards" section using the INFILE statement with a specified delimiter (`,`). Each line in the "cards" section represents information about an employee, including their name, gender, age, and weight.
- The resulting dataset provides a structured representation of employees' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

### 🔍 Explanation
- The employees dataset is structured to store information about employees, including their first name, last name, gender, age, and weight.
- The data is read from the "cards" section using the INFILE statement with a specified delimiter (,). The dsd option is used to handle consecutive delimiters as separate, empty fields.
- Each line in the "cards" section represents information about an employee, including their first name, last name, gender, age, and weight.
- The resulting dataset provides a structured representation of employees' demographic information, which can be further analysed or used for statistical modeling and visualisation tasks in SAS.
 
## 📌 SAS Data Processing Example: "guardians" Dataset

📄 [UsingDSD.sas](SAS/UsingDSD.sas): This SAS code snippet demonstrates the creation of a dataset named "guardians" containing information about guardians. The dataset has three variables:

### 📝 Dataset Structure
1. **first_name**: Represents the first name of the guardian.
2. **last_name**: Indicates the last name of the guardian.
3. **height**: Represents the height of the guardian.

### 📊 Data Entry Method
The data is read from the "cards" section using the INFILE statement with a specified delimiter (`,`). The `dsd` option is also used, which stands for "Delimiter-Sensitive Data". This option treats consecutive delimiters as separate, empty fields. In this case, it allows the code to properly handle the data where the delimiter is a comma, and there are no missing values for some variables.

### 🔍 Explanation
The guardians dataset is structured to store information about guardians, including their first and last names, and height.
Each observation in the dataset corresponds to a single guardian and includes their respective information.
The dataset can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## 📌 SAS Data Processing Example: "custom_dataset" Dataset

📄 [InputUsingAt.sas](SAS/InputUsingAt.sas): This SAS code snippet demonstrates the creation of a dataset named "custom_dataset" containing information about individuals. The dataset has six variables:

### 📝 Dataset Structure
1. **region**: Represents the region where the individual resides.
2. **first**: Indicates the first name of the individual.
3. **last**: Represents the last name of the individual.
4. **sex**: Indicates the sex of the individual (M for male, F for female).
5. **years**: Represents the age of the individual.
6. **mass**: Indicates the mass of the individual.

### 📊 Data Entry Method
The data is entered using the `cards` section, where each line represents information about an individual, including their region, first name, last name, sex, age, and mass. Additionally, there is a conditional statement that deletes observations where the region is 'Midwest'.

### 🔍 Explanation
- The custom_dataset dataset is structured to store information about individuals, including their region of residence, name, sex, age, and mass.
- The @ symbol in the input statement indicates that SAS should hold the input pointer at the current line after reading the value. This allows for reading multiple variables from the same line of data without advancing to the next line.
- The data is manually entered using the input statement followed by the cards section, where each line represents information about an individual.
- A conditional statement is used to delete observations where the region is 'Midwest', demonstrating data manipulation capabilities in SAS.
This example serves as a template for creating datasets to manage information about individuals, which can be valuable for various analytical and reporting purposes in SAS.

## 📌 SAS Data Processing Example: "individuals" Dataset

📄 [InputUsing2At.sas](SAS/InputUsing2At.sas): This SAS code snippet demonstrates the creation of a dataset named "individuals" containing information about individuals. The dataset has six variables:

### 📝 Dataset Structure
1. **first**: Indicates the first name of the individual.
2. **last**: Represents the last name of the individual.
3. **sex**: Indicates the sex of the individual (M for male, F for female).
4. **years**: Represents the age of the individual.
5. **mass**: Indicates the mass of the individual.

### 📊 Data Entry Method
The data is entered using the `cards` section, where each line represents information about an individual, including their first name, last name, gender, age, and mass.

### 🔍 Explanation
The individuals dataset is structured to store information about individuals, including their first name, last name, gender, age, and mass.
The @@ symbols in the input statement indicate that SAS should hold the input pointer at the current line after reading the values. This allows for reading multiple observations from the same line of data without advancing to the next line.
The data is manually entered using the input statement followed by the cards section, where each line represents information about an individual.
This example serves as a template for creating datasets to manage information about individuals, which can be valuable for various analytical and reporting purposes in SAS.

## 📌 SAS Data Processing Example: "personnel" Dataset

📄 [InputUsingFixedWidth.sas](SAS/InputUsingFixedWidth.sas): This SAS code snippet demonstrates the creation of a dataset named "personnel" containing information about individuals. The dataset has four variables:

### 📝 Dataset Structure
1. **identifier**: Represents the unique identifier of the individual.
2. **years**: Indicates the age of the individual.
3. **sex**: Indicates the gender of the individual (M for male, F for female).
4. **mass**: Indicates the weight of the individual.

### 📊 Data Entry Method
The data is read from the "cards" section using the INPUT statement with specified column positions. Each line in the "cards" section represents information about an individual, including their unique identifier, age, gender, and weight.

### 🔍 Explanation
- The personnel dataset is structured to store information about individuals, including their unique identifier, age, gender, and weight.
- The data is read from the "cards" section using the INPUT statement with specified column positions. Each line in the "cards" section represents information about an individual, including their unique identifier, age, gender, and weight.
- The resulting dataset provides a structured representation of individuals' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## 📌 SAS Data Processing Example: "individual_info" Dataset

📄 [InputUsingHash.sas](SAS/InputUsingHash.sas): This SAS code snippet demonstrates the creation of a dataset named "individual_info" containing information about individuals. The dataset has four variables:

### 📝 Dataset Structure
1. **forename**: Represents the forename of the individual.
2. **surname**: Represents the surname of the individual.
3. **sex**: Indicates the gender of the individual (M for male, F for female).
4. **years**: Represents the age of the individual.
5. **mass**: Indicates the weight of the individual.

### 📊 Data Entry Method
The data is read from the "cards" section using the INPUT statement with specified column positions. The `#` symbol is used to skip a specified number of columns before reading the next variable. Each line in the "cards" section represents information about an individual, including their forename, surname, gender, age, and weight.

### 🔍 Explanation
- The individual_info dataset is structured to store information about individuals, including their forename, surname, gender, age, and weight.
- The data is read from the "cards" section using the INPUT statement with specified column positions. The # symbol is used to skip a specified number of columns before reading the next variable. This allows for reading variables that are not in contiguous columns.
- Each line in the "cards" section represents information about an individual, including their forename, surname, gender, age, and weight.
- The resulting dataset provides a structured representation of individuals' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## 📌 SAS Data Processing Example: "personal_data" Dataset

📄 [InputUsingSlash.sas](SAS/InputUsingSlash.sas): This SAS code snippet demonstrates the creation of a dataset named "personal_data" containing information about individuals. The dataset has four variables:

### 📝 Dataset Structure
1. **first_name**: Represents the first name of the individual.
2. **last_name**: Represents the last name of the individual.
3. **sex**: Indicates the gender of the individual (M for male, F for female).
4. **years**: Represents the age of the individual.
5. **mass**: Indicates the weight of the individual.

### 📊 Data Entry Method
The data is read from the "cards" section using the INPUT statement with specified column positions. The `/` symbol is used to indicate a continuation of input data from the previous line. Each line in the "cards" section represents information about an individual, including their first name, last name, gender, age, and weight.

### 🔍 Explanation
- The personal_data dataset is structured to store information about individuals, including their first name, last name, gender, age, and weight.
- The data is read from the "cards" section using the INPUT statement with specified column positions. The / symbol is used to indicate a continuation of input data from the previous line. This allows for splitting the input data over multiple lines for better readability.
- Each line in the "cards" section represents information about an individual, including their first name, last name, gender, age, and weight.
- The resulting dataset provides a structured representation of individuals' demographic information, which can be further analyzed or used for statistical modeling and visualization tasks in SAS.

## 📌 SAS Data Import Example: "employee_data" Dataset

📄 [InputUsingProcImportExcel.sas](SAS/InputUsingProcImportExcel.sas): This SAS code snippet demonstrates the import of data from an Excel file named "employee_data.xlsx" into a dataset named "employee_data". 

### 📝 Dataset Structure
The PROC IMPORT procedure is used to import data from the specified Excel file. The FILENAME statement assigns a fileref "inputfile" to the Excel file path. The PROC IMPORT statement specifies the input data file as "inputfile", the DBMS (Database Management System) as "xlsx" to indicate that the input file is an Excel file, and the OUT option specifies the name of the output SAS dataset as "employee_data". The GETNAMES option is set to "yes" to indicate that the first row of the Excel file contains variable names.

### 🔍 Explanation
- The FILENAME statement assigns a fileref "inputfile" to the Excel file located at '/home/x62422869/The Simplest Guide to SAS/employee_data.xlsx'.
- The PROC IMPORT procedure reads the data from the Excel file specified by the FILENAME statement.
- The DBMS option is set to "xlsx" to indicate that the input file format is Excel.
- The OUT option specifies the name of the output SAS dataset as "employee_data".
- The GETNAMES option is set to "yes" to indicate that variable names should be taken from the first row of the Excel file.
- The resulting dataset "employee_data" contains the imported data from the Excel file, which can be further analyzed or used for various tasks in SAS.
- This code snippet demonstrates the process of importing data from an Excel file into a SAS dataset using PROC IMPORT, providing a way to access and analyze external data within the SAS environment.

## 📌 SAS Data Processing Example: "selected_females" Dataset

📄 [UsingWhereDataStep.sas](SAS/UsingWhereDataStep.sas): This SAS code snippet demonstrates the creation of a dataset named "selected_females" containing information about selected females from the "sashelp.class" dataset. 

### 📊 Data Entry Method
The DATA step is used to create the "selected_females" dataset. Data is copied from the existing dataset "sashelp.class", and the WHERE statement filters observations to include only females.

### 🔍 Explanation
- The DATA statement begins the DATA step and specifies the name of the output dataset as "selected_females".
- The SET statement reads data from the existing dataset "sashelp.class".
- The WHERE statement filters observations based on the condition specified (sex = "F"), selecting only females.
- The RUN statement marks the end of the DATA step.
- This code snippet creates a new dataset named "selected_females" by copying data from the existing "sashelp.class" dataset and including only observations where the sex variable is "F" (indicating females). The resulting dataset can be further analyzed or used for various tasks in SAS.

## 📌 SAS Data Printing Example: "selected_females_age_12" Dataset

📄 [UsingWhereProcStep.sas](SAS/UsingWhereProcStep.sas): This SAS code snippet demonstrates the printing of data from the "sashelp.class" dataset for selected females aged 12.

### 📊 Data Entry Method
The PROC PRINT procedure is used to print data from the specified dataset. The DATA statement is not used in this code snippet as PROC PRINT operates differently from a DATA step. PROC PRINT is a procedure used for data reporting and does not involve the creation or modification of datasets. Instead, it directly operates on existing datasets to display or summarize their contents.

### 🔍 Explanation
- The PROC PRINT statement specifies the procedure used for printing data.
- The DATA option indicates the dataset from which data will be printed, in this case, "sashelp.class".
- The WHERE statement filters observations based on the conditions specified (sex = "F" and age = 12), selecting only females aged 12.
- The RUN statement marks the end of the PROC PRINT procedure.
- This code snippet prints data from the "sashelp.class" dataset for selected females aged 12, demonstrating the use of PROC PRINT for data reporting and filtering. Unlike a DATA step, PROC PRINT does not involve the creation or modification of datasets; instead, it operates on existing datasets for reporting purposes.

## 📌 SAS Data Processing Example: "modified_student_info" Dataset

📄 [UsingCharacterFunctions.sas](SAS/UsingCharacterFunctions.sas): This SAS code snippet demonstrates the processing of data from the "student_info" dataset to create a new dataset named "modified_student_info" with modified variables.

### 📊 Data Entry Method
The DATA step is used to process data and create the "modified_student_info" dataset. Several transformations are applied to the variables first_name and last_name.

### 🔍 Explanation
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

## 📌 SAS Data Processing Example: "modified_student_records" Dataset

📄 [UsingSubstrCatTrimStripLeft.sas](SAS/UsingSubstrCatTrimStripLeft.sas): This SAS code snippet demonstrates the processing of data from the "student_records" dataset to create a new dataset named "modified_student_records" with modified variables.

### 📊 Data Entry Method
The DATA step is used to process data and create the "modified_student_records" dataset. Various transformations are applied to the variables first_name, last_name, and course.

### 🔍 Explanation
- The DATA statement begins the DATA step and specifies the name of the output dataset as "modified_student_records".
- The SET statement reads data from the existing dataset "student_records".
- Various DATA step statements are used to manipulate the data:
    - The SUBSTR function is used to extract substrings from the course variable to create course_name and course_number variables.
    - The CAT function is used to concatenate the first_name and last_name variables to create the full_name variable.
    - The TRIM and LEFT functions are used to remove leading spaces from the first_name variable before concatenating it with last_name to create the full_name variable.
    - The STRIP function is used to remove leading and trailing spaces from the first_name variable before concatenating it with last_name to create the full_name1 variable.
- The RUN statement marks the end of the DATA step.
- This code snippet creates a new dataset named "modified_student_records" by processing data from the "student_records" dataset. It applies various transformations to the first_name, last_name, and course variables, creating new variables with modified values. The resulting dataset can be further analyzed or used for various tasks in SAS.

## 📌 SAS Text Processing Example: "text_processing" Dataset

📄 [UsingCompressCompbl.sas](SAS/UsingCompressCompbl.sas): This SAS code snippet demonstrates text processing functions using the COMPRESS and COMPBL functions.

### 📊 Data Entry Method
The DATA step is used to create the "text_processing" dataset and perform text processing operations on character strings.

### 🔍 Explanation
- The DATA statement begins the DATA step and specifies the name of the output dataset as "text_processing".
- Character strings are assigned to variables a.
- The COMPRESS function removes all leading, trailing, and repeated spaces from the character string assigned to variable a and stores the result in variable b.
- The COMPBL function removes all multiple spaces from the character string assigned to variable a and stores the result in variable c.
- The RUN statement marks the end of the DATA step.
- This code snippet demonstrates the usage of text processing functions COMPRESS and COMPBL to manipulate character strings in SAS, providing flexibility in data cleansing and formatting tasks.

## 📌 SAS Data Processing Example: "student_data" Dataset

📄 [IfElseIf.sas](SAS/IfElseIf.sas): This SAS code snippet demonstrates the processing of data from the "sashelp.class" dataset to calculate Body Mass Index (BMI) and determine the weight status of students.

### 📊 Data Entry Method
The DATA step is used to process data and create the "student_data" dataset. BMI and weight status are calculated based on the Weight and Height variables.

### 🔍 Explanation
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

## 📌 SAS Date Comparison Example: "date_comparison" Dataset

📄 [DatesInSAS.sas](SAS/DatesInSAS.sas): This SAS code snippet demonstrates the comparison of dates in SAS.

### 📊 Data Entry Method
The DATA step is used to create the "date_comparison" dataset and perform date calculations.

### 🔍 Explanation
- The DATA statement begins the DATA step and specifies the name of the output dataset as "date_comparison".
- Date literals are assigned to variables a, b, c, and d, representing specific dates in SAS date format.
- The difference between dates c and d is calculated and stored in the variable diff.
- The RUN statement marks the end of the DATA step.
- This code snippet demonstrates the comparison of dates in SAS, including the calculation of date differences. SAS represents dates as the number of days since January 1, 1960, with January 1, 1960, being represented as 0. The resulting dataset "date_comparison" can be further analyzed or used for various tasks in SAS.

## 📌 SAS Student Health Information Processing

📄 [DropKeepRename.sas](SAS/DropKeepRename.sas): This SAS code snippet processes student health information from the "sashelp.class" dataset to calculate Body Mass Index (BMI) and modify variable names.

### 🔍 Explanation
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

## 📌 Processing Employee Compensation Data with "employee_compensation" Dataset

📄 [SummingNull.sas](SAS/SummingNull.sas): The DATA step creates a dataset named "employee_compensation" with variables name, salary, and bonus.

### 📝 Dataset Structure
Four observations are provided with corresponding values for each variable.
Calculation of Net Salary Using "+" Operator
The DATA step "testdata1" calculates the net salary by adding the salary and bonus using the "+" operator.
The SET statement reads data from the "employee_compensation" dataset.
Calculation of Net Salary Using SUM Function
The DATA step "testdata2" calculates the net salary using the SUM function.
The SET statement reads data from the "employee_compensation" dataset.

### 🔍 Explanation
- In the "testdata1" DATA step, the "+" operator is used to calculate the net salary. However, when a missing value (.) is encountered in the "bonus" variable, SAS treats it as a missing value and sets the result of the addition to missing.
- In the "testdata2" DATA step, the SUM function is used to calculate the net salary. The SUM function treats missing values as zeros and continues the addition. Therefore, even when a missing value (.) is present in the "bonus" variable, the SUM function still calculates the sum of salary and bonus correctly.
- This demonstrates a difference in behavior between the "+" operator and the SUM function when handling missing values in SAS.
- These SAS code snippets illustrate how different methods of calculation can produce different results when dealing with missing values in SAS datasets.

## 📌 SAS Numeric Functions Example with _NULL_ Dataset

📄 [NullDatasetAndFunctions.sas](SAS/NullDatasetAndFunctions.sas): Performing operations on a _NULL_ data set.

### 🔍 Explanation
- Three separate DATA steps, each starting with DATA NULL, are used to demonstrate different numeric functions in SAS.
- In the first DATA step, variables a and b are assigned values, and the ABS function is used to calculate the absolute value of variable b. The PUT statement is then used to display the values of variables a and c.
- In the second DATA step, variable a is assigned a value, and the CEIL, FLOOR, and INT functions are used to calculate the ceiling, floor, and integer parts of variable a, respectively. The PUT statement is used to display the values of variables a, b, c, and d.
- In the third DATA step, variables a, b, and c are assigned values. The MIN and MAX functions are used to determine the minimum and maximum values among these variables, respectively. The PUT statement is used to display the values of variables d and e.
- These SAS code snippets showcase the usage of numeric functions such as ABS, CEIL, FLOOR, INT, MIN, and MAX, demonstrating their functionality and how they can be utilized in SAS programming for numerical calculations and comparisons.

## 📌 SAS String Manipulation Example: Extracting Country Name using the "country_data" Dataset

📄 [FunctionScan.sas](SAS/FunctionScan.sas): This SAS code snippet demonstrates how to use the SCAN function to extract specific words or tokens from a string in SAS. In this example, the fourth word from the given string representing the name of a country is extracted and stored in a new variable for further analysis or processing.

### 🔍 Explanation
- The DATA step creates a dataset named "country_data".
- A character variable 'a' is assigned the string '     United     Kingdom   of    Great    Britain   '.
- The SCAN function is used to extract the fourth word from the string stored in variable 'a'.
- The result, representing the country name "Great", is stored in a new variable named "country".
- The RUN statement marks the end of the DATA step.

## 📌 SAS String Manipulation Example: Finding Substrings using the "country_info" Dataset

📄 [UsingIndexFunctions.sas](SAS/UsingIndexFunctions.sas): This SAS code snippet demonstrates how to use the INDEXC and INDEXW functions to find substrings within a string in SAS. In this example, the position of the character "A" and the word "Emirates" within the given string representing a country name is determined for further analysis or processing.

### 🔍 Explanation
- The DATA step creates a dataset named "country_info".
- A character variable 'a' is assigned the string '     United     Arab   Emirates   '.
- The COMPRESS function removes extra spaces from the string stored in variable 'a'.
- The INDEXC function is used to find the position of the character "A" in the compressed string. The result is stored in variable 'b'.
- The INDEXW function is used to find the position of the word "Emirates" in the original string. The result is stored in variable 'c'.
- The RUN statement marks the end of the DATA step.

## 📌 SAS Data Generation Example: Generating Numeric Data with "numeric_data" Dataset

📄 [UsingDoLoop.sas](SAS/UsingDoLoop.sas): This SAS code snippet demonstrates how to generate numeric data using a DO loop in SAS. In this example, variables x_value and y_value are assigned values from 1 to 10 iteratively, resulting in a dataset containing numeric data pairs for further analysis or processing.

### 🔍 Explanation
- The DATA step creates a dataset named "numeric_data".
- Within a DO loop that iterates from 1 to 10, two variables x_value and y_value are assigned values equal to the loop index.
- The OUTPUT statement writes the values of x_value and y_value to the dataset for each iteration of the loop.
- The DROP statement removes the loop index variable 'index' from the dataset.
- The RUN statement marks the end of the DATA step.

## 📌 SAS Data Processing Example: Calculating BMI

📄 [UsingOutputFunction.sas](SAS/UsingOutputFunction.sas): This SAS code snippet demonstrates how to calculate Body Mass Index (BMI) using data from the "sashelp.class" dataset. It calculates BMI values both in metric and imperial units and writes them to a new dataset for further analysis or reporting purposes.

### 🔍 Explanation
- The DATA step creates a dataset named "student_health_data".
- The SET statement reads data from the "sashelp.class" dataset.
- Two calculations are performed:
    - Calculation of BMI in metric units: The weight in kilograms (weight_kg) is calculated by multiplying the weight variable by 0.454, and the height in meters (height_m) is calculated by multiplying the height variable by 2.54 and dividing by 100. The BMI is then calculated by dividing the weight in kilograms by the square of the height in meters (height_m * height_m).
    - Calculation of BMI in imperial units: The BMI is calculated directly using the weight and height variables, assuming weight is in pounds and height is in inches.
- The OUTPUT statement writes the calculated BMI values to the dataset.
- The RUN statement marks the end of the DATA step.

## 📌 SAS Data Entry Example: Recording Employee Bonuses

📄 [UsingInformat.sas](SAS/UsingInformat.sas): This SAS code snippet demonstrates how to record employee bonuses in a dataset using manual data entry. It defines variables for employee name, bonus amount, and date of birth, assigns appropriate formats to the variables, and then manually enters the data for each employee into the dataset for further analysis or reporting.

### 🔍 Explanation
- The DATA step creates a dataset named "employee_bonuses".
- The INPUT statement defines three variables: employee_name, bonus_amount, and date_of_birth.
- The INFORMAT statement specifies the format of the bonus_amount variable as a dollar amount and the date_of_birth variable as a date in the format DDMMMYY.
- Four observations are entered manually using the CARDS statement, providing values for each variable.
- The RUN statement marks the end of the DATA step.

## 📌 Cars Project SAS Script Explanation

📄 [ProjectCars.sas](SAS/ProjectCars.sas): This SAS script, named "CarsProject.SAS", performs data import, manipulation, and analysis tasks related to car data from different regions.

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS script demonstrates the process of importing, formatting, and analyzing car data from different regions, providing insights into high-value cars in both European and Asian markets.

## 📌 SAS Data Import Example: Student Data

📄 [InfileStatement.sas](SAS/InfileStatement.sas): This SAS script imports student data from an external data file named "my_data_file.dat" located at '/home/u62422869/The Simplest Guide to SAS/'.

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS script demonstrates the process of importing student data from an external file into a SAS dataset. It specifies the file location, defines the variables and their positions within the input data lines, and then reads the data accordingly to create the "student_data" dataset for further analysis or processing.

## 📌 SAS Data Combination Example: Combining Student Data

📄 [AppendingData.sas](SAS/AppendingData.sas): This SAS script combines data from two datasets "student_data_1" and "student_data_2" into a single dataset named "combined_student_data".

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS script demonstrates how to combine data from multiple datasets into a single dataset in SAS. It imports and defines variables for student data in two separate datasets, and then combines them into a unified dataset for further analysis or processing.

## 📌 SAS Data Append Example: Appending Student Information

📄 [AppendingDataUsingProc.sas](SAS/AppendingDataUsingProc.sas): This SAS script appends data from two datasets "student_info_1" and "student_info_2" into a single dataset named "combined_student_info".

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS script demonstrates how to append data from multiple datasets into a single dataset in SAS. It imports and defines variables for student data in two separate datasets, and then appends them into a unified dataset for further analysis or processing. Note that running the code multiple times may result in duplicated appended records.

## 📌 SAS Data Deduplication Example: Removing Duplicate Student Records

📄 [UsingNoDupKey.sas](SAS/UsingNoDupKey.sas): This SAS script processes student records from the "student_records" dataset to remove duplicate entries and create a sorted dataset named "sorted_student_records".

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS script demonstrates how to remove duplicate records from a dataset in SAS using the PROC SORT procedure with the NODUPKEY option. It sorts the dataset by student name and removes duplicate entries, resulting in a sorted dataset with unique student records.

## 📌 SAS Data Deduplication Example: Removing Duplicate Employee Records

📄 [UsingNoDup.sas](SAS/UsingNoDup.sas): This SAS script processes employee records from the "employee_data" dataset to remove duplicate entries and create a sorted dataset named "sorted_employee_data".

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS script demonstrates how to remove duplicate records from a dataset in SAS using the PROC SORT procedure with the NODUP option. It sorts the dataset by employee name and removes duplicate entries, resulting in a sorted dataset with unique employee records.

## 📌 SAS Data Merge Example: Combining Employee Information

📄 [MergingDatasets.sas](SAS/MergingDatasets.sas): This SAS script merges two datasets, "employee_info" and "employee_height", based on the common variable "employee_name" to create a combined dataset named "combined_employee_data".

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS script demonstrates how to merge two datasets based on a common variable using the MERGE statement. It combines employee information and height data into a single dataset for comprehensive analysis or reporting.

## 📌 SAS Data Merge Example: Combining Height and Weight Information

📄 [MergingDatasetsJoin.sas](SAS/MergingDatasetsJoin.sas): This SAS script merges two datasets, "class_weight" and "class_height", based on the common variable "name" to create a combined dataset named "class_merged".

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS script demonstrates how to merge two datasets based on a common variable using the MERGE statement. It combines weight and height information into a single dataset for comprehensive analysis or reporting.

## 📌 SAS SQL Example: Creating a New Table from an Existing Dataset

📄 [ProcSQL_SELECT.sas](SAS/ProcSQL_SELECT.sas): This SAS SQL query creates a new table named "student_info" by selecting all records from the existing dataset "sashelp.class".

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS SQL query demonstrates how to create a new table by selecting all records from an existing dataset using the PROC SQL procedure. It provides a way to store and manipulate data for further analysis or reporting purposes.

## 📌 SAS SQL Example: Creating a New Table with Filtered Data

📄 [ProcSQL_WHERE.sas](SAS/ProcSQL_WHERE.sas): This SAS SQL query creates a new table named "male_students" by selecting all records from the existing dataset "sashelp.class" where the sex is 'M'.

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS SQL query demonstrates how to create a new table by selecting specific records from an existing dataset based on certain criteria using the PROC SQL procedure. It allows for the creation of targeted subsets of data for further analysis or reporting purposes.

## 📌 SAS SQL Example: Creating a Summary Table with Grouping + AVG.

📄 [ProcSQL_GROUP_AVG.sas](SAS/ProcSQL_GROUP_AVG.sas): This SAS SQL query creates a new table named "average_age_by_sex" by calculating the average age and grouping the data by sex from the 'sashelp.class' dataset.

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS SQL query demonstrates how to create a summary table by calculating aggregates and grouping data based on specific criteria from an existing dataset using the PROC SQL procedure. It provides insights into the distribution of average ages by sex.

## 📌 SAS SQL Example: Creating a Summary Table with Grouping + MIN.

📄 [ProcSQL_GROUP_MIN.sas](SAS/ProcSQL_GROUP_MIN.sas): This SAS SQL query creates a new table named "minimum_msrp_by_origin" by calculating the minimum Manufacturer's Suggested Retail Price (MSRP) and grouping the data by origin from the 'sashelp.cars' dataset.

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS SQL query demonstrates how to create a summary table by calculating aggregates and grouping data based on specific criteria from an existing dataset using the PROC SQL procedure. It provides insights into the distribution of minimum MSRP values by origin.

## 📌 SAS SQL Example: Creating a Table with Unique Gender-Age Combinations

📄 [ProcSQL_DISTINCT.sas](SAS/ProcSQL_DISTINCT.sas): This SAS SQL query creates a new table named "unique_gender_age" by selecting distinct combinations of gender and age from the 'sashelp.class' dataset. The resulting table is ordered by gender and age.

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS SQL query demonstrates how to create a new table with unique combinations of gender and age from an existing dataset using the PROC SQL procedure. It provides a way to analyze and explore the distribution of gender-age combinations in the dataset.

## 📌 SAS Data Processing Example: Transposing Student Information

📄 [ProcTransopose.sas](SAS/ProcTransopose.sas): This SAS snippet demonstrates data processing steps involving the creation of a dataset named STUDENT_INFO and its subsequent transposition using the PROC TRANSPOSE procedure.

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS code snippet illustrates how to organize and manipulate student information, demonstrating the creation of a dataset and its transformation through transposition for further analysis or reporting purposes.

## 📌 SAS Data Processing Example: Transposing Patient Vitals

📄 [ProcTransoposeBy.sas](SAS/ProcTransoposeBy.sas): This SAS snippet demonstrates data processing steps involving the creation of a dataset named PATIENT_VITALS and its subsequent transposition using the PROC TRANSPOSE procedure.

### 📊 Data Entry Method

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

### 🔍 Explanation
This SAS code snippet illustrates how to organize and manipulate patient vital information, demonstrating the creation of a dataset and its transformation through transposition for further analysis or reporting purposes.

## 📌 SAS Data Processing Example: Employee Total Pay Calculation

📄 [Retain.sas](SAS/Retain.sas): This SAS snippet demonstrates data processing steps involving the calculation of total pay for each employee from the dataset EMPLOYEE_PAY.

### 📊 Data Entry Method

1. **DATA Step (Creating Dataset):**
   - The DATA statement initiates the creation of a dataset named EMPLOYEE_PAY.
   - Variables EMPLOYEE_NAME, PAY_PERIOD, and PAY_AMOUNT are defined to store employee pay information.
   - The INPUT statement specifies the format for reading data values.
   - The CARDS statement provides the actual data values for the variables.

2. **PROC SORT Step:**
   - The PROC SORT procedure is used to sort the dataset EMPLOYEE_PAY.
   - It sorts the data by EMPLOYEE_NAME.

3. **DATA Step (Calculating Total Pay):**
   - The DATA statement creates a new dataset named EMPLOYEE_TOTAL_PAY.
   - It reads data from the existing dataset EMPLOYEE_PAY.
   - The BY statement is used for grouping by EMPLOYEE_NAME.
   - The RETAIN statement initializes and retains the value of the variable TOTAL_PAY.
   - The IF statement conditionally assigns the value of TOTAL_PAY based on whether it is the first observation for a given EMPLOYEE_NAME.

### 🔍 Explanation
This SAS code snippet illustrates how to calculate total pay for each employee across different pay periods, providing insights into overall compensation patterns.

## 📌 SAS Data Processing Example: Employee Salary Details

📄 [FormatStatement.sas](SAS/FormatStatement.sas): This SAS code snippet demonstrates the processing of employee salary data to convert numeric values to character values with specific formats.

### 📊 Data Entry Method

1. **Creating Dataset and Defining Variables:**
   - The DATA statement creates a dataset named EMPLOYEE_SALARY with variables WORKER, PAY, and WORKER_ID.
   - The INPUT statement specifies the format of the data to be read, including dollar and SSN formats for PAY and WORKER_ID, respectively.
   - The CARDS statement provides the data values for WORKER, PAY, and WORKER_ID.

2. **Converting Numeric Values to Character Values:**
   - The DATA statement creates a new dataset named SALARY_DETAILS by reading data from the existing EMPLOYEE_SALARY dataset.
   - The SET statement specifies the dataset to read from.
   - The PUT function is used to convert numeric values to character values for PAY and WORKER_ID.
   - The PUT function formats the variables with appropriate dollar and SSN formats, specified by dollar10.2 and ssn11. formats, respectively.

### 🔍 Explanation
This SAS code snippet demonstrates the conversion of numeric employee salary and ID values to character values with specific formats for reporting or display purposes.

## 📌 SAS Data Import Example: Employee Bonus Information

📄 [InformatStatement.sas](SAS/InformatStatement.sas): This SAS code snippet demonstrates the import of employee bonus information into two datasets: EMPLOYEE_BONUS and EMPLOYEE_BONUS1.

### 📊 Data Entry Method

1. **Creating Dataset and Defining Variables:**
   - The DATA statement creates a dataset named EMPLOYEE_BONUS with variables EMPLOYEE_NAME, BONUS_AMOUNT, and DATE_OF_BIRTH.
   - The INPUT statement specifies the format of the data to be read, including dollar and date formats for BONUS_AMOUNT and DATE_OF_BIRTH, respectively.
   - The CARDS statement provides the data values for EMPLOYEE_NAME, BONUS_AMOUNT, and DATE_OF_BIRTH.

2. **Duplicate Dataset Creation:**
   - Another dataset named EMPLOYEE_BONUS1 is created as a duplicate of EMPLOYEE_BONUS using the same DATA statement, INPUT statement, and CARDS statement.
   - Both datasets contain the same bonus information for different employees.

### 🔍 Explanation
This SAS code snippet demonstrates the process of importing employee bonus information into SAS datasets for further analysis or processing.

## 📌 SAS Data Visualization: Employee Gender Distribution

📄 [ProcChartVbarHbarPie.sas](SAS/ProcChartVbarHbarPie.sas): This SAS code snippet processes employee data and visualizes the gender distribution using various charts.

### 📊 Data Entry Method

1. **Creating Dataset:**
   - The DATA statement creates a dataset named EMPLOYEES_INFO, which contains information about employees, including their name, gender, age, and weight.
   - The CARDS section provides the data values, with each record separated by a comma.
   - The INPUT statement specifies the format of the data to be read from the CARDS section.

2. **Creating Charts:**
   - PROC CHART is used to create different types of charts based on the EMPLOYEES_INFO dataset.
   - The VBAR statement generates a vertical bar chart to show the distribution of genders.
   - The HBAR statement generates a horizontal bar chart to visualize the gender distribution.
   - The PIE statement creates a pie chart to display the proportion of each gender in the dataset.

### 🔍 Explanation
These SAS code snippets demonstrate the process of visualizing employee gender distribution using various chart types for effective data exploration and analysis.

## 📌 SAS Data Visualization: Age and Course Distribution

📄 [ProcChartDiscrete.sas](SAS/ProcChartDiscrete.sas): This SAS code snippet processes student class data and creates vertical bar charts to visualize the distribution of age and course numbers.

### 📊 Data Entry Method

1. **Creating Dataset:**
   - The DATA statement creates a dataset named CLASS, which contains information about students, including their name, gender, age, course number, and major.
   - The INPUT statement specifies the format of the data to be read.

2. **Creating Charts:**
   - PROC CHART is used to create vertical bar charts based on the CLASS dataset.
   - The first chart (vbar AGE) visualizes the distribution of ages among students using vertical bars.
   - The second chart (vbar COURSENO) displays the distribution of course numbers discretely using vertical bars.

### 🔍 Explanation
These SAS code snippets demonstrate the process of visualizing age and course distribution among students using vertical bar charts for effective data analysis and exploration.

## 📌 SAS Data Visualization: Course Enrollment

📄 [ProcChartHbarDiscrete.sas](SAS/ProcChartHbarDiscrete.sas): This SAS code snippet processes student enrollment data and creates a horizontal bar chart to visualize the distribution of course enrollment.

### 📊 Data Entry Method

1. **Creating Dataset:**
   - The DATA statement creates a dataset named ENROLLMENT_DATA, containing information about students, including their name, gender, age, course ID, and major.
   - The INPUT statement specifies the format of the data to be read.

2. **Creating Chart:**
   - PROC CHART is used to create a horizontal bar chart based on the ENROLLMENT_DATA dataset.
   - The HBAR statement generates a horizontal bar chart, with course IDs plotted discretely along the y-axis.

### 🔍 Explanation
This SAS code snippet demonstrates the process of visualizing the distribution of course enrollment among students using a horizontal bar chart for effective data analysis and exploration.

## 📌 SAS Data Visualization: Course Enrollment Analysis

📄 [ProcChartVbarAdvanced.sas](SAS/ProcChartVbarAdvanced.sas): This SAS code snippet processes student enrollment data and creates a vertical bar chart to analyze the distribution of student ages across different courses, majors, and genders.

### 📊 Data Entry Method

1. **Creating Dataset:**
   - The DATA statement creates a dataset named STUDENT_INFO, containing information about students, including their name, gender, age, course number, and major.
   - The INPUT statement specifies the format of the data to be read.

2. **Creating Chart:**
   - PROC CHART is used to create a vertical bar chart based on the STUDENT_INFO dataset.
   - The VBAR statement generates a vertical bar chart, with course numbers plotted discretely along the x-axis.
   - Grouping is done by major, and subgrouping is done by gender.
   - The SUMVAR option calculates the mean age for each combination of course, major, and gender.

### 🔍 Explanation
This SAS code snippet demonstrates the process of visualizing the distribution of student ages across different courses, majors, and genders using a vertical bar chart for insightful analysis and decision-making.

## 📌 SAS Data Visualization: Course Enrollment Analysis

📄 [ProcChartHbarAdvanced.sas](SAS/ProcChartHbarAdvanced.sas): This SAS code snippet processes student enrollment data and creates a horizontal bar chart to analyze the distribution of student ages across different courses, majors, and genders.

### 📊 Data Entry Method

1. **Creating Dataset:**
   - The DATA statement creates a dataset named STUDENT_DATA, containing information about students, including their name, gender, age, course number, and major.
   - The INPUT statement specifies the format of the data to be read.

2. **Creating Chart:**
   - PROC CHART is used to create a horizontal bar chart based on the STUDENT_DATA dataset.
   - The HBAR statement generates a horizontal bar chart, with course numbers plotted discretely along the y-axis.
   - Grouping is done by major, and subgrouping is done by gender.
   - The SUMVAR option calculates the mean age for each combination of course, major, and gender.

### 🔍 Explanation
This SAS code snippet demonstrates the process of visualizing the distribution of student ages across different courses, majors, and genders using a horizontal bar chart for insightful analysis and decision-making.

## 📌 SAS Data Visualization: Age vs. Weight Analysis

📄 [ProcChartPlotScatter.sas](SAS/ProcChartPlotScatter.sas): This SAS code snippet processes personal information data and creates scatter plots to analyze the relationship between age and weight.

### 📊 Data Entry Method

1. **Creating Dataset:**
   - The DATA statement creates a dataset named PERSONAL_INFO, containing information about individuals, including their name, gender, age, and weight.
   - The INPUT statement specifies the format of the data to be read.

2. **Creating Scatter Plots:**
   - PROC PLOT is used to create scatter plots based on the PERSONAL_INFO dataset.
   - The first scatter plot (without symbols) plots age against weight.
   - The second scatter plot (with '*' symbols) also plots age against weight but uses asterisks as symbols.

### 🔍 Explanation
These SAS code snippets demonstrate the process of visualizing the relationship between age and weight using scatter plots, allowing for insights into potential correlations or patterns.

## 📌 SAS Data Filtering Example: Filtering by Gender

📄 [UsingProcPrint.sas](SAS/UsingProcPrint.sas): This SAS code snippet processes personal information data and prints selected records based on gender.

### 📊 Data Entry Method

1. **Creating Dataset:**
   - The DATA statement creates a dataset named PERSON_INFO, containing information about individuals, including their name, gender, age, and weight.
   - The INPUT statement specifies the format of the data to be read.

2. **Printing Selected Data:**
   - PROC PRINT is used to display selected data from the PERSON_INFO dataset.
   - The VAR statement specifies the variables to be displayed.
   - The WHERE statement filters the records based on gender, displaying only those where the gender is 'M' (Male).

### 🔍 Explanation
This SAS code snippet demonstrates how to filter and display specific records from a dataset based on certain criteria, such as gender.

## 📌 SAS Reporting Examples: Tabular Reports

📄 [UsingProcReport.sas](SAS/UsingProcReport.sas)

### 📊 Data Entry Method

#### 1. Course Information Report:
   - The first PROC REPORT generates a tabular report of student course information.
   - Columns include student name, gender, age, course code, and major.
   - Each column is defined using DEFINE statements.
   
#### 2. Mean Age by Gender Report:
   - The second PROC REPORT generates a tabular report showing the mean age by gender.
   - The STUDENT_GENDER column is grouped, and the STUDENT_AGE column is analyzed to calculate the mean.
   
#### 3. Cars Dataset Report:
   - The third PROC REPORT generates a tabular report of selected variables from the SASHELP.CARS dataset.
   - Columns include car make, model, type, origin, and MSRP.
   - Column widths and formatting options are specified using DEFINE statements.

## 📌 SAS Frequency Analysis Example

📄 [UsingProcFreq.sas](SAS/UsingProcFreq.sas)

### 📊 Data Entry Method

### 1. Gender Frequency Table:
   - The first PROC FREQ generates a frequency table for the GENDER variable from the CLASS dataset.
   - It counts the number of occurrences of each gender category.

### 2. Course Number Frequency Table:
   - The second PROC FREQ generates a frequency table for the COURSENO variable from the CLASS dataset.
   - It counts the number of occurrences of each course number.

## 📝 Descriptive Statistics for Age Variable

- The PROC MEANS procedure calculates basic statistics such as mean, median, minimum, maximum, and standard deviation for the AGE variable from the CLASS dataset.

## 📝 Descriptive Statistics for Age Variable

- The PROC UNIVARIATE procedure calculates basic statistics such as mean, median, minimum, maximum, and standard deviation for the AGE variable from the CLASS dataset.

## 📝 This SAS snippet uses the ODS OUTPUT statement to save the frequency table generated by PROC FREQ into a dataset named myFreq.

### 🔍 Explanation
- The DATA step creates a dataset named CLASS with variables: NAME, GENDER, AGE, COURSE, and MAJOR.
- The PROC FREQ procedure is used to generate frequency tables for the GENDER variable.
- ODS (Output Delivery System) is a system in SAS that controls the output formats of procedures.
- ODS TRACE ON and ODS TRACE OFF are used to trace ODS destinations, which helps in debugging and diagnosing issues related to ODS output.
- The ODS OUTPUT statement saves the output of PROC FREQ into a dataset named myFreq.

## 📌 This SAS snippet saves the summary statistics generated by PROC MEANS into a dataset named myMeans.

📄 [UsingProcMeans.sas](SAS/UsingProcMeans.sas)

### 🔍 Explanation
- The DATA step creates a dataset named CLASS with variables: NAME, GENDER, AGE, COURSE, and MAJOR.
- PROC MEANS is used to calculate summary statistics for the AGE variable.
- ODS TRACE ON and ODS TRACE OFF are used to trace ODS destinations, which helps in debugging and diagnosing issues related to ODS output.
- The ODS OUTPUT statement saves the output of PROC MEANS into a dataset named myMeans.

## 📌 This SAS snippet saves the basic measures statistics generated by PROC UNIVARIATE into a dataset named MYUNIVBASIC.

📄 [ProcUnivariate.sas](SAS/ProcUnivariate.sas)

### 🔍 Explanation
- The DATA step creates a dataset named CLASS with variables: NAME, GENDER, AGE, COURSE, and MAJOR.
- PROC UNIVARIATE is used to analyze the AGE variable, providing various statistical measures.
- ODS TRACE ON and ODS TRACE OFF are used to trace ODS destinations, which helps in debugging and diagnosing issues related to ODS output.
- The ODS OUTPUT statement saves the output of PROC UNIVARIATE into datasets named MYUNIVMOMENTS and MYUNIVBASIC.

## 📌 Filtering Dataset by Macro Variables

📄 [OdsTraceOn.sas](SAS/OdsTraceOn.sas)
📄 [OdsTraceOn2.sas](SAS/OdsTraceOn2.sas)
📄 [OdsTraceOn3.sas](SAS/OdsTraceOn3.sas)

### 🔍 Explanation
- The DATA step creates a dataset named CLASS with variables: NAME, GENDER, AGE, COURSENO, and MAJOR.
- Macro variables VAR and VALUE are defined to hold the variable name and value to filter the dataset.
- PROC PRINT is used to display observations from the CLASS dataset where the value of the variable specified by the macro variable VAR matches the value specified by the macro variable VALUE.

## 📌 Macro Variable Manipulation

📄 [MacroAmpersand.sas.sas](SAS/MacroAmpersand.sas.sas)

### 🔍 Explanation
- Macro variable B is assigned the value 10 using the %LET statement.
- Macro variable A is assigned the value of macro variable B.
- The %PUT statement displays the value of macro variable B, which is 10.
- The %PUT statement displays the value of macro variable A, which is B.
- The && operator resolves a single ampersand at runtime, so &&A resolves to &B, and the %PUT statement displays the value of macro variable B again.
- The &&& operator resolves a double ampersand at runtime, so &&&A resolves to &10, and the %PUT statement displays the value 10.

## 📌 Macro Variable Cascading

📄 [MacroAmpersandFruits.sas](SAS/MacroAmpersandFruits.sas)

### 🔍 Explanation
- Macro variables are assigned values in a cascading manner: APPLE is assigned the value "banana", BANANA is assigned "cherry", CHERRY is assigned "plum", and PLUM is assigned "elderberry".
- The %PUT statements display the values of macro variable APPLE in different configurations using the double ampersand operator.
- The first %PUT statement displays the direct value of APPLE, which is "banana".
- The subsequent %PUT statements use the double ampersand operator to resolve the macro variable APPLE in a cascading manner.

## 📌 Custom Macro for Reporting

📄 [MacroProcedure.sas](SAS/MacroProcedure.sas)

### 🔍 Explanation
- This SAS macro, named MYREPORT, is defined to generate summary statistics and print data for a specified dataset within a given library.
- The macro takes three arguments: LIB, DSN, and STATVAR.
- LIB represents the library name, DSN represents the dataset name, and STATVAR represents the variable for which summary statistics are calculated.
- Inside the macro, PROC MEANS is used to calculate summary statistics (mean, min, max, etc.) for the specified variable in the dataset.
- PROC PRINT is used to display the dataset contents after the summary statistics have been calculated.
- The macro is invoked twice:
    - First invocation: Calls MYREPORT with arguments (SASHELP, CLASS, AGE).
    - Second invocation: Calls MYREPORT with arguments (SASHELP, CARS, MSRP).
- This approach enables easy generation of summary reports for different datasets and variables by simply calling the MYREPORT macro with appropriate parameters.

## 📌 Custom Macro for Reporting

📄 [MacroProcedure2.sas](SAS/MacroProcedure2.sas)

### 🔍 Explanation
- The macro MYREPORT is defined to generate summary statistics and print data for a specified dataset within a given library.
- It takes three arguments: LIB, DSN, and STATVAR.
    - LIB represents the library name.
    - DSN represents the dataset name.
    - STATVAR represents the variable for which summary statistics are calculated.
- Inside the macro, PROC MEANS calculates summary statistics (mean, min, max, etc.) for the specified variable in the dataset.
- Then, PROC PRINT displays the dataset contents after the summary statistics have been calculated.
- The macro is invoked four times:
    1. First invocation: Calls MYREPORT with arguments (SASHELP, CLASS, AGE).
    2. Second invocation: Calls MYREPORT with arguments (SASHELP, CLASS, HEIGHT).
    3. Third invocation: Calls MYREPORT with arguments (SASHELP, CLASS, WEIGHT).
    4. Fourth invocation: Calls MYREPORT with arguments (SASHELP, CARS, MSRP).
- This approach allows for the easy generation of summary reports for different datasets and variables by simply calling the MYREPORT macro with appropriate parameters.

## 📌 Macro Operations and Functions

📄 [MacroProcedure3.sas](SAS/MacroProcedure3.sas)

### 🔍 Explanation
- The macro variables `a`, `b`, `c`, `d`, and `e` are defined using the `%LET` statement to store different values and manipulate them using macro functions.
- `%UPCASE`: Converts the value of macro variable `a` to uppercase and assigns it to variable `b`.
- `%LOWCASE`: Converts the value of macro variable `a` to lowercase and assigns it to variable `c`.
- `%SUBSTR`: Extracts a substring from the value of macro variable `a` starting at position 1 with a length of 6 characters, and assigns it to variable `d`.
- `%LENGTH`: Calculates the length of the value of macro variable `a` and assigns it to variable `e`.
- The `PUT` statement is used to display the values of variables `b`, `c`, `d`, and `e`, showing the results of the string manipulations and length calculation.
- In the second part, numerical values are manipulated:
    - Macro variables `x` and `y` are defined with decimal values.
    - `%SYSEVALF`: Calculates the sum of `x` and `y` and assigns it to variable `z`.
- Finally, the result of the arithmetic operation is displayed using the `PUT` statement.

## 📌 Cars Analysis Project Overview

📄 [Project-Cars.sas](SAS/Project-Cars.sas)

### 🚗 Part 1
#### 📥 Importing and Analyzing Car Data
- **Data Import from Excel**: The SAS file `carseu.xlsx` is imported into the SAS dataset `cars_eu` using PROC IMPORT with the XLSX engine.
- **Formatting Data**: The MSRP variable in the `cars_eu` dataset is formatted as dollar8.
- **Importing and Parsing Text File**: The piped-delimited text file `carsasiapipedelimited.txt` is imported into the SAS dataset `cars_asia`, with appropriate data parsing.
- **Data Filtering and Analysis**: The PROC PRINT procedure is used to display records from `cars_eu` and `cars_asia` where MSRP is greater than $150,000.

### 🛠️ Part 2
#### 🔄 Merging and Sorting Car Data
- **Library Assignment**: The SAS library `MyLib` is assigned to the directory.
- **Importing and Merging Data**: The SAS dataset `carsusa` from the library `MyLib` is merged with `cars_eu` and `cars_asia` into the dataset `cars_all`.
- **Sorting Data**: The datasets `cars_all` and `cars_mpg` are sorted by model and make.
- **Combining Sorted Data**: The datasets `cars_all` and `cars_mpg` are merged into `combined_cars_all` based on model and make.

### 📈 Part 3
#### 📊 Frequency Analysis and Statistical Calculation
- **Frequency Count**: PROC FREQ calculates the frequency count of car makes and origins.
- **Formatting Frequency Table**: The frequency count table is formatted, and percentages are rounded.
- **Transpose and Print**: The transposed frequency table is printed to display frequency counts by car make and origin.
- **Statistical Calculation**: A macro `myStat` calculates the frequency count and percentage of hybrid cars based on car make and type.

## 📌 Project Heavy Weight - Analyzing Student Health Data

📄 [ProjectHeavyWeight.sas](SAS/ProjectHeavyWeight.sas)

### 🔄 Importing and Preprocessing Data
- **Data Import**: Excel sheets for Statistics (STAT) and History (HIST) classes and student height data (STUDHT) are imported into SAS.
- **Merging Data**: The STAT and HIST datasets are stacked to create a single dataset called CLASS, then merged with STUDHT.
- **Unit Conversion**: Weight and height are converted to metric units (kilograms and meters, respectively).
- **BMI Calculation**: BMI is calculated using weight (kg) divided by the square of height (m).
- **Status Assignment**: Students are categorized into Underweight, Healthy, Overweight, or Obese based on BMI values.
- **Pie Chart Generation**: A pie chart is generated to visualize the distribution of student health statuses.

### 📊 Frequency Distribution Analysis
- **Frequency Table**: A frequency distribution table is created for gender and health status variables.
- **Formatting**: Counts and percentages are concatenated and formatted for reporting.
- **Transposition**: The frequency table is transposed to display health status across gender.
- **Final Report**: A report titled "Report of Frequency Table" summarizes the distribution of health statuses by gender.

## 📌 Analysing American Airline Data

📄 [ProjectAirlines.sas](SAS/ProjectAirlines.sas)

### 📊 Importing and Preprocessing Data
- **Data Import**: The airline data is imported from the airlines.txt file using the FILENAME statement, INFILE, and INPUT statements to align columns.
- **Currency Format**: Dollar formats (dollar10.2) are applied to currency variables like Total Assets.
- **Rating Assignment**: A new variable called RATING is created based on TotalOpCost using a defined format.
- **Charts**: Vertical bar charts and horizontal bar charts are created to visualize the distribution of ratings and average operating costs, respectively.

### 🛠️ SQL Operations
- **Subset Creation**: A subset of data containing airlines whose names start with 'P' is created using PROC SQL.
- **Macro Variable Creation**: A macro variable called FASTPLANE is created using PROC SQL to store the name of the airline with the highest speed.

### 🔄 Project Completion Questions
- **Data Import Code**: The code to import the data involves using FILENAME statement, INFILE, and INPUT statements to read the text file.
- **Currency Variable Format**: Dollar10.2 format is used to display currency variables.
- **Airlines Selection**: PROC SQL is used to select airlines starting with the letter 'P' using the SUBSTR function.
- **Proc Chart Option**: The DISCRETE option is used in the PROC CHART procedure to create vertical bars for the RATING variable.
- **Number of Airlines Rated 5**: 7 airlines are rated 5.
- **Mean Operating Cost of Airlines Rated 5**: The mean operating cost of airlines rated 5 is 43.7857.
- **Highest Speed**: The FASTPLANE macro variable stores the highest speed at which an airline has flown their planes (216).
- **SQL Code for FASTPLANE**: PROC SQL is used to find the maximum speed value and store it in the FASTPLANE macro variable.

## 📌 Using Do Loop in SAS

📄 [DoLoop.sas](SAS/DoLoop.sas): This script, DoLoop.sas, demonstrates how to create a dataset using a DO loop in SAS with a conditional exit.

### 📊 Data Entry Method
- DATA Step A: A dataset named A is created with a DO loop that iterates through values for i, starting at 1 and incrementing by 0.5 each time. The loop stops if y reaches or exceeds 15, using the WHILE (y < 15) condition.
- Loop Processing: Within the loop, y is calculated as i * 2 on each iteration. The OUTPUT statement writes the current values of i and y to the dataset A for each iteration that meets the condition y < 15.
- Result: The resulting dataset A contains values for i and y that show the progression of i in increments of 0.5, with corresponding values of y up to the limit specified by the WHILE condition (y < 15). This code illustrates the combined use of a DO loop with conditional and incremental control to generate a dataset based on calculated values.

📄 [DoLoop2.sas](SAS/DoLoop2.sas): This code creates and processes data on years, transforming it into months or calculating remaining years based on conditions.

1. DATA Step A:
The first block (DATA A; ... RUN;) creates a dataset named A with a single variable called years.
Using DATALINES, it assigns integer values (4, 3, 6, 3, 9) to years, representing a period in years.

2. DATA Step B:
The second block (DATA B; SET A; ... RUN;) generates a new dataset named B based on dataset A.
It checks each value in years:
If years is greater than 5:
It creates a variable, months, which stores the equivalent number of months (by multiplying years by 12).
The statement PUT years=months=; writes the values of years and months to the SAS log for records where years > 5.
Otherwise: It creates a variable, yrsleft, to show the remaining years to reach 5 (calculated as 5 - years).

## 📌 Variables in SAS

📄 [CreatingVariables.sas](SAS/CreatingVariables.sas): his script creates a dataset that calculates total sales for each individual based on quarterly sales data.

### 📊 Data Entry Method
DATA Step: A dataset named sales is created with the DATA statement. The INPUT statement defines variables:
- Name (character variable for the individual's name)
- Sales_1 to Sales_4 (numeric variables representing quarterly sales)

### 🔍 Explanation
Variable Calculation: The variable total is calculated for each individual by summing the values in Sales_1, Sales_2, Sales_3, and Sales_4 using the SUM function.
- This calculation automatically handles any missing values as SUM ignores them by default.

Data Entry: The CARDS statement allows for data entry directly in the code. Four individuals’ sales data are inputted:
- Greg: Sales data for each quarter is 10, 2, 40, 0.
- John: Sales data is 15, 5, 10, 100.
- Lisa: Sales data is 50, 10, 15, 50.
- Mark: Sales data is 20, 0, 5, 20.

Result: The RUN statement executes the code, resulting in the sales dataset containing Name, quarterly sales values, and a total column that holds the calculated total sales for each individual.
- This code provides a simple way to manage and analyze quarterly sales data, demonstrating how to define and sum multiple variables in SAS.

📄 [AutomaticVariables.sas](SAS/AutomaticVariables.sas): This script demonstrates the use of automatic variables in SAS, specifically _ERROR_ and _N_, to handle data input errors.

DATA Step: A dataset named test is created with variables x and y defined in the INPUT statement.

Error Detection: The code includes a conditional check on the automatic variable _ERROR_, which is set to 1 if an error occurs in the data step (e.g., if non-numeric data is encountered for a numeric variable). When _ERROR_ equals 1, a message is printed to the SAS log using the PUT statement. This message indicates an error in the specific row, identified by the _N_ variable, which counts the current iteration of the data step (essentially, the row number).

Data Entry:
1. The DATALINES statement inputs the values for x and y.
2. Valid data entries are: (1, 1), (2, 3), and (4, 4).
3. The entry (3, n) will trigger an error because n is non-numeric, causing _ERROR_ to be set to 1 and an error message to appear in the log.

Result: The RUN statement processes the data, resulting in a dataset test with x and y values, while logging error messages for rows where input issues are detected. This code demonstrates the use of automatic variables in SAS for data validation, helping identify and log rows with input errors during dataset creation.

## 📌 Using Counter functionality in SAS

📄 [Counter.sas](SAS/Counter.sas): This code creates a dataset of student scores, organizes it by gender, and generates a count of scores for each gender group.

DATA Step (studentscores): A dataset named studentscores is created with variables gender and score.
The CARDS statement inputs the data directly, where gender is coded as 1 or 2, and each row represents an individual score:
1 for male students and 2 for female students.

Sorting the Dataset: The PROC SORT step sorts studentscores by gender, organizing the data for the following step.

Counting Scores by Gender (studentscores1): The DATA studentscores1 step creates a new dataset studentscores1 based on studentscores.
The statement count + 1; initializes and increments count for each row, providing a running count.
The BY gender statement, combined with the first.gender automatic variable, allows resetting count for each new gender group:
IF first.gender THEN count=1; resets count to 1 when encountering the first row of each gender group.

Result: The final dataset, studentscores1, includes gender, score, and count, which represents the score sequence number within each gender group.
This code demonstrates data grouping and conditional counting using automatic variables in SAS, with a focus on resetting counts within sorted groups.

## 📌 Filtering in SAS.

📄 [Filter.sas](SAS/Filter.sas): This script, imports house price data, calculates a profit estimate, and filters records based on a price condition.

DATA Step (houseprice): A dataset named houseprice is created by reading data from the file houseprice (2).txt located in /home/u63805106/datasetslearnsas/.
The INFILE statement specifies the location and delimiter (DLM=" ") used in the text file.
The INPUT statement defines the variables:
type (character variable representing the type of house),
price (numeric variable for the house price),
tax (numeric variable for the tax amount).
The profit variable is calculated by rounding the product of price and tax.

Filtering Data (filter): The DATA filter step creates a new dataset filter based on houseprice.
The IF price < 200000; statement filters the data to include only houses with a price less than 200,000.

Result: The resulting dataset filter contains records from houseprice that meet the price condition, along with the calculated profit values.
This script demonstrates data import, variable calculations, and conditional filtering in SAS.

## 📌 Formats in SAS.

📄 [Format.sas](SAS/Format.sas): This script, demonstrates how to apply custom formats to codes in a dataset to enhance readability and add descriptive labels.

DATA Step (disease):

A dataset named disease is created with a single variable, diagcode, which represents diagnostic codes as character strings. The DATALINES statement defines three diagnostic codes: 001, 290, and 800.

Initial Data Display: PROC PRINT is used to display the disease dataset before applying any formats.

Creating a Custom Format: The PROC FORMAT step defines a custom format named $codetwo, which maps each diagcode to a descriptive label.
1. '001' maps to "Malaria",
2. '290' maps to "Social Anxiety Disorder",
3. '800' maps to "Leg Injury".

Applying the Format: Another PROC PRINT step displays the disease dataset with the FORMAT statement applied, showing the diagcode values using the $codetwo labels.

Creating a New Variable with Descriptions (diseasereal): A new dataset, diseasereal, is created from disease. The PUT function with $codetwo. format is used to create a new variable, diagdesc, which stores the descriptive label for each diagcode.

Final Data Display: The final PROC PRINT displays diseasereal, including both diagcode and diagdesc. This code illustrates using PROC FORMAT for custom labels and transforming coded values into descriptive fields to improve data readability in SAS.

## 📌 Using IF statement in SAS.

📄 [IfThen.sas](SAS/IfThen.sas): This script, calculates total sales for each individual, evaluates conditions to determine employment status, and marks if an individual meets a specific sales criterion.

DATA Step (sales): A dataset named sales is created with variables Name, Sales_1 through Sales_4 for quarterly sales, and total, which sums all quarterly sales.
The variable fired is initialized as an empty string.

Conditional Logic: An IF statement checks if the Name is "Greg" and total is greater than or equal to 52:
If both conditions are met, fired is set to "N", indicating that Greg is not fired based on his total sales.
Data Entry:

The CARDS statement inputs data directly for each individual:
Greg: Quarterly sales of 10, 2, 40, 0, with a total of 52, which meets the criterion.
John, Lisa, and Mark: Their data is included but does not meet the criteria for changing fired.
Result:

The RUN statement processes the data, resulting in the sales dataset with Name, quarterly sales, total, and fired columns, where fired indicates if Greg met the sales threshold.
This code demonstrates conditional logic with IF-THEN statements in SAS, enabling decisions based on specific criteria.

📄 [IfWhere.sas](SAS/IfWhere.sas): This script, calculates total sales for each individual and filters data based on specific sales criteria using SQL and PROC PRINT.

1. DATA Step (sales): A dataset named sales is created with variables Name, Sales_1 through Sales_4 for quarterly sales, and total, which sums all quarterly sales. The CARDS statement provides direct input data for four individuals.
2. SQL Filter (PROC SQL): PROC SQL selects and displays only those records from sales where total is greater than 50. This step outputs a table of total sales values that meet the specified condition.
3. PROC PRINT with Data Step WHERE Clause: The PROC PRINT step includes a where= option within the DATA=sales argument, filtering and displaying only records where total > 50.
4. PROC PRINT with WHERE Statement: The final PROC PRINT uses a standalone WHERE statement, achieving the same filter as the previous step by displaying records with total > 50.

Result: The final output includes records of individuals with total sales exceeding 50, demonstrated with different methods of filtering.
This code illustrates various methods of data filtering in SAS, using SQL and WHERE conditions within PROC PRINT.

## 📌 Importing Data in SAS

📄 [ImportTXT](SAS/ImportTXT): This script, ImportTXT.sas, demonstrates how to import data from a text file into a SAS dataset.

DATA Step (salary): A dataset named salary is created by reading data from the text file located at /home/u63805106/datasetslearnsas/salary (2).txt. The INFILE statement specifies the path to the text file to be read.

Input Variables:
1. year: A numeric variable representing the year of the salary record.
2. salary: A numeric variable representing the salary amount.

INPUT Statement: Defines the structure of the input data, specifying the variables year and salary to match the format of the data in the text file.

Result: The resulting salary dataset contains records with the year and salary variables extracted from the text file. This script demonstrates basic file importing in SAS, showcasing how to load and structure data from an external .txt file.

📄 [SAS/ImportTXT2.sas](SAS/SAS/ImportTXT2.sas): This script imports data from a text file, performs variable renaming and column selection, and prints a subset of the data.

DATA Step (salaryemp): A dataset named salaryemp is created using the INFILE statement to read data from the text file located at /home/u63805106/datasetslearnsas/salary (2).txt.

Options used:
1. KEEP = salary: Keeps only the salary variable in the output dataset.
2. RENAME = salary = salaryemp: Renames the salary variable to salaryemp.
3. The DLM = " " option specifies that the data in the text file is space-delimited.
4. The INPUT statement defines the variables to read:
- year: A numeric variable representing the year.
- salary: A numeric variable representing the salary amount.

PROC PRINT: Prints a subset of the salaryemp dataset using:
1. FIRSTOBS = 3: Starts printing from the third observation.
2. OBS = 4: Stops printing at the fourth observation.

Result: The resulting salaryemp dataset contains the renamed salaryemp variable and excludes the year variable. The output includes the selected subset of observations (rows 3 and 4). This script demonstrates file importing, variable renaming, column selection, and printing subsets of data in SAS.

📄 [ImportTXT3.sas](SAS/ImportTXT3.sas): This script, imports data from a text file, calculates a new variable, and prints a subset of the dataset.

DATA Step (houseprice):
1. A dataset named houseprice is created by reading data from the text file located at /home/u63805106/datasetslearnsas/houseprice (2).txt.
2. The INFILE statement specifies the path to the text file, with the DLM = " " option indicating that the data is space-delimited.
3. The INPUT statement defines the structure of the data:
   - type: A character variable representing the type of property.
   - price: A numeric variable representing the price of the house.
   - tax: A numeric variable representing the tax rate.
4. The variable profit is calculated as the rounded product of price and tax using the ROUND function.

PROC PRINT: Prints a subset of the houseprice dataset:
1. FIRSTOBS = 3: Starts printing from the third observation.
2. OBS = 4: Stops printing at the fourth observation.

Result: The resulting houseprice dataset includes the variables type, price, tax, and the calculated profit. The output displays rows 3 and 4 from the dataset. This script demonstrates importing text files, performing calculations on imported data, and printing specific subsets of a dataset in SAS.

📄 [ImportCSV.sas](SAS/mportCSV.sas): This code reads data from a CSV file into a SAS dataset, demonstrating the use of options to handle formatted data.

DATA Step (weightgain): A dataset named weightgain is created by reading data from a CSV file located at /home/u63805106/datasetslearnsas/weightgain (2).csv.
INFILE options:
1. DSD: Indicates that values are separated by commas and that consecutive delimiters (e.g., two commas) signify missing values.
2. MISSOVER: Prevents SAS from moving to the next line if data is missing for the last variables, assigning missing values instead.
3. FIRSTOBS=2: Specifies that data import should begin from the second row, skipping the header row.

Input Variables:
1. id: An identifier for each observation.
2. source: A character variable indicating the source category.
3. type: A character variable for the type category.
4. weightg: A numeric variable representing weight gain.

Result: The resulting weightgain dataset contains each record with id, source, type, and weightg variables. This code showcases reading data from a CSV file into SAS with options to handle delimiters, missing values, and header rows effectively.

📄 [ImportXLSX.sas](SAS/ImportXLSX.sas): This script demonstrates the use of PROC IMPORT to import data from an Excel file into a SAS dataset.

PROC IMPORT Step:
1. OUT = salesdata: Specifies the name of the SAS dataset to be created, salesdata.
2. datafile="/home/u63805106/datasetslearnsas/Sample-Sales-Data (3).xlsx": Indicates the path to the Excel file to be imported.
3. dbms = xlsx: Specifies the file type as an Excel .xlsx file.
4. REPLACE: Allows overwriting the existing salesdata dataset if it already exists.

Options:
1. SHEET="Sheet1": Specifies the sheet from which data should be imported.
2. GETNAMES=NO: Indicates that the first row of the Excel sheet does not contain variable names; SAS will assign default variable names like VAR1, VAR2, etc.

Result:
- The resulting salesdata dataset contains all rows and columns from "Sheet1" of the Excel file, with SAS-generated variable names if no column headers are present.
- This script demonstrates a simple yet powerful way to import data from Excel files into SAS for further analysis.

## 📌 Informat in SAS

📄 [Informat.sas](SAS/Informat.sas): This script, policel, reads data from a CSV file into a SAS dataset, with explicit handling of variable lengths and data types.

DATA Step (policel): Creates a dataset named policel. The LENGTH statement specifies the length of each variable:
- CrimeID
- ReportedF
- FallsW
- Location
- LSOAC
- LSOAN
- OutcomeT
- Longitude
- Latitude

INFILE Statement: Specifies the source file as /home/u63805106/datasetslearnsas/londonoutcomes.csv. Options used:
- DSD: Handles comma-delimited data and treats consecutive delimiters as missing values.
- MISSOVER: Prevents SAS from moving to the next line when encountering missing data, assigning missing values instead.
- FIRSTOBS=2: Skips the first row (header) and starts importing data from the second row.

INPUT Statement: Defines the structure of the input data:
- CrimeID
- ReportedF
- FallsW
- Location
- LSOAC
- LSOAN
- OutcomeT
- Longitude
- Latitude

Result:
- The resulting policel dataset contains the specified variables, with appropriate handling of character lengths, missing values, and numeric data.
- This script demonstrates SAS’s capabilities for importing CSV files with diverse data types and ensuring variables are stored in a well-defined format.

## 📌 Length Statement in SAS

📄 [Length.sas](SAS/Length.sas): This script imports data from a CSV file into a SAS dataset, specifying variable types and handling CSV-specific features.

1. DATA Step (mydata). Creates a dataset named mydata. The LENGTH statement. Specifies the variable types and their maximum lengths:
- age: Numeric, up to 3 digits.
- sex: Character, up to 6 characters.
- children: Numeric, up to 3 digits.
- smoker: Character, up to 3 characters.
- region: Character, up to 15 characters.
- charges: Numeric, up to 8 digits.

3. INFILE Statement. Specifies the source file path as /home/u63805106/datasetslearnsas/insurance (1).csv. Options used:
- DSD: Handles comma-delimited files and treats consecutive delimiters as missing values.
- MISSOVER: Prevents SAS from advancing to the next line if data is missing, assigning missing values instead.
- FIRSTOBS=2: Skips the header row and starts reading data from the second row.

3. INPUT Statement. Defines the structure of the input data:
- age: Numeric variable for age.
- sex: Character variable for gender.
- bmi: Numeric variable for Body Mass Index.
- children: Numeric variable for the number of children.
- smoker: Character variable indicating smoking status.
- region: Character variable for the region.
- charges: Character variable for insurance charges.

4. Result:
- The resulting mydata dataset contains all specified variables, with proper handling of types, missing data, and header rows.
- This script demonstrates a structured approach to importing CSV data into SAS, highlighting the flexibility of SAS in managing data types and file-specific quirks.

## 📌 Merging data in SAS

📄 [Merging.sas](SAS/Merging.sas): This SAS script processes two datasets containing information about house prices, calculates profits, and merges them into a single dataset after sorting.

Step 1: Import and Process houseprice Data
1. DATA houseprice: Reads the file houseprice (2).txt, with space (" ") as the delimiter.
2. Variables:
- type: Character, type of house.
- price: Numeric, house price.
- tax: Numeric, tax amount.
- profit: Calculated as the rounded product of price and tax.
3. PROC SORT: Sorts the houseprice dataset by price and saves the sorted dataset as houseprice2.

Step 2: Import and Process newhomes Data
1. DATA newhomes: Reads the file newhomes (2).txt, with space (" ") as the delimiter. Variables and profit calculation follow the same structure as in the houseprice dataset.
2. PROC SORT: Sorts the newhomes dataset by price and saves the sorted dataset as newhomes2.

Step 3: Merge Sorted Datasets
1. DATA newcollections:
- Merges the sorted datasets houseprice2 and newhomes2 by the price variable.
- The resulting dataset, newcollections, contains records from both datasets, aligned by price.

Purpose and Use Case. This script is designed to:
- Compare and integrate data from two sources (houseprice and newhomes).
- Ensure both datasets are sorted and aligned by a common variable (price) before merging.
- Calculate and store additional metrics (e.g., profit) for analysis.
- This approach is useful for scenarios where house price data from multiple sources needs to be combined for further analysis or reporting.

📄 [MergingSet.sas](SAS/MergingSet.sas): This script, demonstrates how to merge two datasets containing sales data from different sources into a single dataset.

Step 1: Create and Process sales1 Dataset
1. DATA sales1: Inputs a dataset containing sales data for four sales periods (Sales_1 to Sales_4).
2. Variables:
- Name: Character variable for salesperson names.
- Sales_1, Sales_2, Sales_3, Sales_4: Numeric variables for sales amounts.
- total: Total sales across all four periods, calculated using the SUM function.

Step 2: Create and Process sales2 Dataset
1. DATA sales2: Inputs a dataset similar to sales1 but with different salespeople.
2. Variables:
- Names: Character variable for salesperson names (different variable name from sales1).
- Sales_1, Sales_2, Sales_3, Sales_4: Numeric variables for sales amounts.
- total: Total sales across all four periods, calculated using the SUM function.

Step 3: Merge Datasets
1. DATA salesmerged: Merges the two datasets (sales1 and sales2) into a single dataset.
2. Uses the SET statement to combine records from both datasets.
3. Renames the Names variable in sales2 to Name to match the variable name in sales1.

Result
1. The salesmerged dataset contains all records from both sales1 and sales2.
2. Common variables are aligned: Name includes all salesperson names, standardizing the variable name across datasets. total reflects the calculated total sales for each record.

## 📌 Using PROC Sort in SAS

Step 1: Create the houseprice Dataset
1. DATA houseprice: Inputs a dataset containing information about different types of houses, their prices, and tax rates.
2. Variables:
- type: Character variable specifying the type of house (e.g., Single, Duplex).
- price: Numeric variable for the house price.
- tax: Numeric variable for the tax rate as a proportion (e.g., 0.20 for 20% tax).

Step 2: Print the Original Dataset
1. PROC PRINT DATA=houseprice: Displays the contents of the houseprice dataset as it was initially inputted.
2. Provides a reference to compare the dataset before and after sorting.

Step 3: Sort the Dataset
1.PROC SORT DATA=houseprice OUT=sortedhouseprice: Sorts the houseprice dataset by the tax variable in descending order.
2. The sorted dataset is saved as sortedhouseprice.
3. Sorting by descending tax ensures that records with the highest tax rates appear first.

Step 4: Print the Sorted Dataset
1. PROC PRINT DATA=sortedhouseprice: Displays the sorted dataset to verify the order of the records after sorting.

## 📌 Renaming Variables in SAS

📄 [SAS/RenamingVariables.sas](SAS/RenamingVariables.sas): Using the RENAME statement in SAS.

Step 1: Create the newhomes Dataset DATA newhomes. Creates a dataset with three variables:
- x: The type of home (character variable, e.g., Duplex).
- y: The price of the home (numeric variable).
- z: The tax rate as a proportion (numeric variable).

Step 2: Rename Variables. DATA cleannewhomes. Copies the newhomes dataset while renaming its variables:
- x → type
- y → price
- z → tax
- This step improves clarity by assigning meaningful names to the variables.

Step 3: Add Labels to Variables. LABEL Statement. Adds descriptive labels to the renamed variables:
- type → "Type of Home"
- price → "Price of Home"
- tax → "Percentage of Home"
- These labels provide additional context for reports or outputs.

Step 4: Analyze the Data
PROC FREQ DATA=cleannewhomes:
Analyzes the frequency of each value in the type, price, and tax variables.
Outputs a frequency table showing how often each unique value appears in the dataset.

Step 5: Purpose and Use Case. This script is useful for preparing raw data for analysis by:
- Renaming ambiguous variable names for clarity.
- Labeling variables for better understanding in reports.
- Generating frequency tables to explore the distribution of data.
- By the end, the dataset cleannewhomes is ready for further analysis or visualization.

## 📌 Using SAS Functions

📄 [SasFunctions.sas](SAS/SasFunctions.sas): Using SUM to add arguments in SAS.

Step 1: Data Manipulation Using Functions. DATA summing. Demonstrates the use of the SUM function for various purposes:
- sumthis = SUM(7, 9, 13); Sums three numeric values: 7, 9, and 13.
- vararg = SUM(sumthis); Uses a variable as an argument and calculates its sum (here, just sumthis itself).
- numargum = SUM(6, 8); Sums two numeric values: 6 and 8.
- expargum = SUM(sumthis * 7 / 2); Sums the result of an expression (sumthis * 7 / 2).
- varargumlist = SUM(of Var1-Var5); Sums all values in variables Var1 through Var5 (assumes these variables exist in the dataset).
- datetoday = TODAY(); Assigns the current date to the variable datetoday using the TODAY function.

Step 2: Data Presentation. PROC PRINT DATA=summing. Prints the dataset summing to display the computed variables:
- FORMAT datetoday date11.; Formats the datetoday variable to display the date in the DATE11. format (e.g., "28-Nov-2024").

Step 3: String Manipulation DATA splitname. Creates a dataset for demonstrating the SCAN function, which extracts parts of a string:
- Prefix = SCAN(name, 3); Extracts the third word from the name variable and assigns it to the variable Prefix.
- Input Data:
1. Mr Ermin Dedic - For the first row, the third word is "Dedic".
2. Dr Joanna Ratner - For the second row, the third word is "Ratner".

Step 4: DATALINES. Provides inline data to populate the name variable. By the end, the script produces two datasets:
- summing: Demonstrates numeric and date calculations.
- splitname: Demonstrates string processing using the SCAN function.

Step 5: Purpose and Use Case This script is a great introduction to SAS functions for:
- Arithmetic and date-related calculations.
- String processing, such as splitting names or extracting components from text.
- Formatting data for output and reporting.

📄 [SasFunctionsCatx.sas](SAS/SasFunctionsCatx.sas): This script demonstrates how to use SAS string functions, specifically CATX and CAT, to concatenate strings while managing separators and whitespace.

Step 1: Using CATX

1. DATA concat. Declares variables:
- separator = ','; Defines the separator to use between concatenated strings.
- first = ' Larry'; A string with leading spaces.
- last = 'Larryson '; A string with trailing spaces.
- result = CATX(separator, first, last);
2. Concatenates first and last:
- Removes leading and trailing spaces from each string.
- Inserts the defined separator (,) between the two strings.
- Final result: "Larry,Larryson".
- DROP separator; Excludes the separator variable from the output dataset.
3. PROC PRINT DATA = concat:
- Prints the concat dataset to display the resulting variable result.

Step 2: Using CAT

1. DATA concat1. Similar setup as concat, but uses the CAT function:
- result = CAT(separator, first, last); Concatenates separator, first, and last without removing leading/trailing spaces.
- Final result: " Larry,Larryson " (spaces are retained).
2. PROC PRINT DATA = concat1:
- Prints the concat1 dataset to display the resulting variable result.

Step 3: Key Differences Between CATX and CAT

<table>
    <tr>
        <td>
            Function
        </td>
        <td>
            Behavior
        </td>
    </tr>
    <tr>
        <td>
            CATX
        </td>
        <td>
            Removes leading/trailing spaces from input strings and inserts a separator between them.
        </td>
    </tr>
    <tr>
        <td>
            CAT
        </td>
        <td>
            Concatenates input strings without removing any spaces and does not insert a separator.
        </td>
    </tr>
</table>

📄 [SasFunctionsCoalesce.sas](SAS/SasFunctionsCoalesce.sas): This script demonstrates the use of the COALESCE function in SAS to handle missing values by selecting the first non-missing value from a list of variables.

Step 1: Data Step
1. DATA coal. Declares two variables: home and cell, which are numeric.
- Uses the COALESCE function: numvalue = coalesce(home, cell);
- Assigns numvalue the first non-missing value between home and cell.
- If home is non-missing, it is assigned to numvalue.
- If home is missing, then the value of cell is assigned to numvalue.
2. DATALINES. Input dataset. Two observations:
- Observation 1: Only home is provided (6578975), while cell is missing.
- Observation 2: Only cell is provided (6448565), while home is missing.
3. RUN. Executes the DATA step to create the coal dataset.

Step 2: PROC PRINT
1. PROC PRINT DATA = coal. Prints the coal dataset to display the results of the COALESCE function.
2. Output. The dataset coal will look like this:

<table>
    <tr>
        <td>
            home
        </td>
        <td>
            cell
        </td>
        <td>
            numvalue
        </td>
    </tr>
    <tr>
        <td>
            6578975
        </td>
        <td>
            .
        </td>
        <td>
            6578975
        </td>
    </tr>
    <tr>
        <td>
            .
        </td>
        <td>
            6448565
        </td>
        <td>
            6448565
        </td>
    </tr>
</table>

The COALESCE function:
Takes multiple arguments and returns the first non-missing value from the list.
Commonly used in scenarios where you want to fill missing values by prioritizing available data.

📄 [SasFunctionsCompress.sas](SAS/SasFunctionsCompress.sas): This SAS script demonstrates the use of the COMPRESS function to remove specific characters from strings.

Step 1: Data Step
1. DATA compressed. Creates a dataset named compressed.
- Input variable phonen is defined as a string with a length of 15 characters ($1-15).
2. Variables Created:
- phone1 = COMPRESS(phonen); Removes all blank spaces from the variable phonen.
- phone2 = COMPRESS(phonen, '(-)', 's'); Removes the characters (, ), and - from phonen using the second argument '(-)'.
3. The 's' modifier ensures only these specified characters are removed while leaving others intact.
4. DATALINES. Provides sample input data:
- Observation 1: (314)456-4768
- Observation 2: (314) 453-56 78
5. RUN. Executes the DATA step to create the dataset compressed.

Step 2: PROC PRINT
1. PROC PRINT DATA = compressed. Prints the dataset compressed to display the output of the COMPRESS function.
2. Output. The resulting dataset compressed will look like this:

<table>
    <tr>
        <td>
            phonen
        </td>
        <td>
            phone1
        </td>
        <td>
            phone2
        </td>
    </tr>
    <tr>
        <td>
            (314)456-4768
        </td>
        <td>
            (314)456-4768
        </td>
        <td>
            3144564768
        </td>
    </tr>
    <tr>
        <td>
            (314) 453-56 78
        </td>
        <td>
            (314)453-5678
        </td>
        <td>
            3144535678
        </td>
    </tr>
</table>

📄 [SasFunctionsInput.sas](SAS/SasFunctionsInput.sas): This script demonstrates the use of the INPUT function in SAS to convert a character string into a numeric value.

Step 1: Data Step
1. DATA inputfunction: Creates a dataset named inputfunction.
2. Variables:
- sale $9.: Defines the variable sale as a character variable with a length of 9.
- numsale = INPUT(sale, comma9.);: Converts the character variable sale into a numeric value using the INPUT function.
- The comma9. informat allows the input to interpret commas within the numeric data.
3. DATALINES. Provides sample data for the variable sale:
- 6, 525, 352
4. RUN. Executes the DATA step to create the dataset inputfunction.

Step 2: PROC PRINT
1. PROC PRINT DATA = inputfunction: Prints the dataset inputfunction to display the output of the INPUT function.
2. Output. The resulting dataset inputfunction will look like this:

<table>
    <tr>
        <td>
            sale
        </td>
        <td>
            numsale
        </td>
    </tr>
    <tr>
        <td>
            6, 525,
        </td>
        <td>
            352	6525352
        </td>
    </tr>
</table>

📄 [SasFunctionsSubstr.sas](SAS/SasFunctionsSubstr.sas): This script demonstrates the use of the SUBSTR function in SAS to extract a portion of a string.

Step 1: Data Step
1. DATA new: Creates a dataset named new.
2. date = '06MAY98';: A character string 06MAY98 is assigned to the variable date.
3. month = SUBSTR(date, 3, 5);:
- The SUBSTR function extracts a substring from the variable date.
- 3: Starting position (3rd character in the string).
- 5: Number of characters to extract.
- The extracted portion is MAY98, which starts at position 3 and includes 5 characters.
4. RUN: Executes the DATA step to create the dataset.

Step 2: PROC PRINT
1. PROC PRINT DATA = new;: Prints the dataset new to display the results.

Step 3: Output. The resulting dataset new will look like this:

<table>
    <tr>
        <td>
            date
        </td>
        <td>
            month
        </td>
    </tr>
    <tr>
        <td>
            06MAY98
        </td>
        <td>
            MAY98
        </td>
    </tr>
</table>

Step 4: Explanation of SUBSTR
1. The SUBSTR function extracts a portion of a string starting at a specified position and for a specified length.
2. Syntax: SUBSTR(string, start, length);
- string: The character string from which to extract.
- start: The starting position (1-based index).
- length: The number of characters to extract.

📄 [SasFunctionsScan.sas](SAS/SasFunctionsScan.sas): This SAS script demonstrates the use of the SCAN function alongside the CATX function.

Step 1: DATA Step
1. DATA concat;: Creates a dataset named concat.
2. Variables Created:
- separator = ',';: Specifies a comma as the separator for concatenation.
- first = ' Larry'; and last = 'Larryson ';: Assigns leading and trailing-spaced strings to first and last.
- result = CATX(separator, first, last);: Combines first and last into one string, separated by a comma. CATX trims leading/trailing spaces before concatenating. The resulting value for result is: Larry,Larryson
- scann = SCAN(result, 1);: Extracts the first word (or token) from the string in result. Default delimiter is a space or common punctuation (comma, period, etc.). In this case, the first word before the comma is Larry.
3. DROP separator;: Excludes the separator variable from the final dataset.
4. RUN;: Executes the data step.

Step 2: PROC PRINT
1. PROC PRINT DATA = concat;: Displays the resulting dataset concat with the variables first, last, result, and scann.

Step 3: Output The final dataset concat will look like this:

<table>
    <tr>
        <td>
            first
        </td>
        <td>
            last
        </td>
        <td>
            result
        </td>
        <td>
            scann
        </td>
    </tr>
    <tr>
        <td>
            Larry
        </td>
        <td>
            Larryson
        </td>
        <td>
            Larry,Larryson
        </td>
        <td>
            Larry
        </td>
    </tr>
</table>

📄 [‎SAS/SasFunctionsRand.sas](‎SAS/SasFunctionsRand.sas): This SAS script generates random values from a Normal distribution using the RAND function and visualizes the output.

Step 1: DATA Step
1. DATA rand;: Creates a dataset named rand.
2. CALL streaminit(12345);:
- Initializes the random number generator with a seed value 12345.
- Using a fixed seed ensures that the random numbers generated are reproducible.
3. DO i = 1 to 200;:
- Loops 200 times to generate 200 random values.
4. x = rand("Normal");:
- Generates random values from a standard normal distribution 𝑁(0,1) using the RAND function.
5. OUTPUT;:
- Writes each generated value of x to the dataset rand.
6. END;:
- Ends the DO loop.
7. RUN;:
- Executes the data step.

Step 2: PROC SGPLOT
1. PROC SGPLOT DATA = rand;:
- Uses the SGPLOT procedure to plot the histogram of the random values.
2. TITLE "Random Values from N(0,1)";:
- Sets the title for the histogram.
3. HISTOGRAM x;:
- Creates a histogram of the variable x (the generated random values).
4. RUN;:
- Executes the plotting procedure.

Step 3: PROC FREQ
1. PROC FREQ DATA = rand;:
- Generates frequency statistics for the dataset rand.
2. RUN;:
- Executes the procedure.

Step 4: Output
1. Histogram:
- Displays the distribution of the 200 random values from 𝑁(0,1)
- The histogram should approximate the shape of a standard normal distribution (bell curve).
2. Frequency Table:
- Outputs the frequency of unique values or ranges in the dataset rand.

📄 [‎SAS/SasFunctionsLength.sas](‎SAS/SasFunctionsLength.sas): This SAS script demonstrates the use of the LENGTH, LENGTHN, and LENGTHC functions to evaluate string lengths and handle different cases of whitespace.

Step 1: DATA Step
1. Variables. one, two, and three contain string values:
- "ABC ": Includes trailing spaces.
- " ": A string with only a space.
- "ABC XYZ": Includes spaces within the string.
2. Functions:
- LENGTH: Returns the length of the string, including trailing spaces.
- LENGTHN: Returns the length of the string, excluding trailing spaces, but if the string is blank (contains only spaces), it returns 0.
- LENGTHC: Returns the length of the string after completely trimming blanks.
3. Code Logic. Calculate each function for the strings one, two, and three:
- length_one, lengthn_one, lengthc_one: Results for string one.
- length_two, lengthn_two, lengthc_two: Results for string two.
- length_three, lengthn_three, lengthc_three: Results for string three.
4. RUN;: Executes the data step and writes the results to the dataset lengthfunctions.

Step 2: PROC PRINT
1. PROC PRINT DATA = lengthfunctions;:
- Prints the dataset lengthfunctions.
2. TITLE "Length(n)(c) Function Examples";:
- Adds a descriptive title to the output.
3. RUN;:
- Executes the PROC PRINT step.

Step 3: Key Function Differences

<table>
    <tr>
        <td>
            Function
        </td>
        <td>
            Description
        </td>
        <td>
            Behavior for Blank Strings
        </td>
    </tr>
    <tr>
        <td>
            LENGTH
        </td>
        <td>
            Includes all characters + trailing spaces
        </td>
        <td>
            Returns 1 for a blank string
        </td>
    </tr>
    <tr>
        <td>
            LENGTHN
        </td>
        <td>
            Ignores trailing spaces
        </td>
        <td>
            Returns 0 for a blank string
        </td>
    </tr>
    <tr>
        <td>
            LENGTHC
        </td>
        <td>
            Ignores all spaces (trims)
        </td>
        <td>
            Returns 0 for a blank string
        </td>
    </tr>
</table>

📄 [SasFunctionsTrim.sas](SAS/SasFunctionsTrim.sas): Using SAS TRIM and Concatenation Functions

Step 1: Data Input and Transformation
1. DATA trimdata; Creates a dataset named trimdata.
2. INPUT: Reads data into variables:
- firstname: Character variable for the first name.
- lastname: Character variable for the last name.
- age: Numeric variable for the age.
- tscore: Numeric variable for the test score.
3. LENGTH name $20; Sets the length of the new variable name to 20 characters.
4. name=(lastname)||', '||firstname; Concatenates lastname and firstname, separated by a comma and a space (', '). || is the concatenation operator in SAS.
5. DATALINES: Provides the input data directly. Example: "Alex Benson 27 45".
6. RUN; Executes the data step to create the dataset trimdata.

Step 2: Exploring the Data
1. PROC CONTENTS DATA=trimdata; Displays the metadata of the dataset. Variable names, types, lengths, and other attributes.
2. PROC PRINT DATA=trimdata; Prints the dataset to show the actual data values.

Step 3: Expected Output. Dataset Structure:

<table>
    <tr>
        <td>
            firstname
        </td>
        <td>
            lastname
        </td>
        <td>
            age
        </td>
        <td>
            tscore
        </td>
        <td>
            name
        </td>
    </tr>
    <tr>
        <td>
            Alex
        </td>
        <td>
            Benson
        </td>
        <td>
            27
        </td>
        <td>
            45
        </td>
        <td>
            Benson, Alex
        </td>
    </tr>
</table>

📄 [‎SAS/SasFunctionsVerify.sas](‎SAS/SasFunctionsVerify.sas): Using SAS VERIFY Function to Validate Data

Step 1: Data Validation with VERIFY
1. DATA errors valid; Creates two datasets: errors and valid. Rows with invalid data are output to errors. Valid rows are sent to valid.
2. INPUT id$ stage : $5.; Reads two columns:
- id: A character variable (e.g., 001).
- stage: A 5-character variable.
3. IF VERIFY(stage, 'abcd') THEN OUTPUT errors; VERIFY Function:
- Checks if all characters in stage exist in the string 'abcd'.
- Returns the position of the first character not in 'abcd' (e.g., q in aabqc).
- If the function returns a value greater than 0, the row is classified as invalid and output to the errors dataset.
4. ELSE OUTPUT valid; Rows with valid stage values are sent to the valid dataset.
5. CARDS; Provides the input data. Example:
- 001 aabcd: All characters are valid.
- 002 aabqc: Contains q, which is not in 'abcd'.
6. RUN; Executes the data step, creating the errors and valid datasets.

Step 2: Displaying Results
1. PROC PRINT DATA=errors; Displays rows from the errors dataset. Includes rows where stage has invalid characters.
2. PROC PRINT DATA=valid; Displays rows from the valid dataset. Includes rows where all characters in stage are valid.
3. TITLE Statements: Adds meaningful titles to the output tables:
- 'Errors' for the invalid rows.
- 'Valid' for the valid rows.

Step 3: Expected Output
1. Errors Dataset:

<table>
    <tr>
        <td>
            id
        </td>
        <td>
            stage
        </td>
    </tr>
    <tr>
        <td>
            002
        </td>
        <td>
            aabqc
        </td>
    </tr>
</table>

2. Valid Dataset:

<table>
    <tr>
        <td>
            id
        </td>
        <td>
            stage
        </td>
    </tr>
    <tr>
        <td>
            001
        </td>
        <td>
            aabcd
        </td>
    </tr>
</table>

## Using Plots in SAS

📄 [PlotBar.sas](SAS/PlotBar.sas): This SAS script demonstrates data visualization techniques using the GPLOT and GCHART procedures.

Step 1: Data Input
1. DATA houseprice. Reads data from a file houseprice (2).txt. Each record includes:
- type: Character variable (type of house).
- price: Numeric variable (price of the house).
- tax: Numeric variable (tax on the house).
2. INFILE and INPUT:
- Specifies the input file path.
- Defines the structure of the dataset with INPUT.
3. RUN;: Executes the data step, creating the houseprice dataset.

Step 2: Scatter Plot with PROC GPLOT
1. PROC GPLOT DATA = houseprice;: Creates a scatter plot of the houseprice dataset.
2. TITLE 'House Price Scatter';: Sets the title for the plot.
3. FORMAT price dollar9.;: Formats the price variable to display values as currency with commas (e.g., $300,000).
4. SYMBOL Statements: Define the appearance of the points in the scatter plot:
- SYMBOL1: Dots with blue color.
- SYMBOL2: Squares with red color.
5. PLOT price*tax = type;: Plots price against tax, grouped by type (each type is assigned a unique symbol and color).
6. RUN;: Executes the plotting procedure.

Step 3: Bar Chart with PROC GCHART
1. PROC GCHART DATA = houseprice;: Creates a bar chart of the houseprice dataset.
2. TITLE 'House Price Bar';: Sets the title for the bar chart.
3. FORMAT price dollar9.;: Formats the price variable as currency.
4. VBAR price tax / GROUP = type;: Creates vertical bars for price and tax, grouped by type.
5. PATTERN COLOR = yellow;: Sets the bar fill color to yellow.
6. RUN;: Executes the bar chart creation.

Step 4: Key Features and Notes
1. Scatter Plot with PROC GPLOT: Provides insights into the relationship between price and tax. Differentiates type with symbols and colors.
2. Bar Chart with PROC GCHART: Shows grouped comparisons of price and tax for each house type. Uses color and grouping for clarity.
3. Formatting: The FORMAT statement improves readability by displaying monetary values properly.

Step 5:Potential Output Example
1. Scatter Plot:
- X-axis: Tax values.
- Y-axis: Price values.
- Points: Dots (blue): type = "Single"; Squares (red): type = "Duplex".
2. Bar Chart:
- Bars grouped by type:
- Heights represent price or tax values.
- All bars are filled with yellow.

[PlotScatter.sas](SAS/PlotScatter.sas)

Step 1: Data Input
1. DATA houseprice; Reads data from the file houseprice (2).txt into a dataset called houseprice.
2. INFILE and INPUT: INFILE: Specifies the file location containing the data. INPUT: Defines the structure of the dataset:
- type: Character variable representing the type of house.
- price: Numeric variable representing the price of the house.
- tax: Numeric variable representing the tax rate on the house.
3. RUN;: Executes the data step, preparing the dataset.

Step 2: Scatter Plot Creation
1. PROC GPLOT DATA = houseprice;: Generates a scatter plot using the houseprice dataset.
2. TITLE 'House Price';: Sets the title for the scatter plot.
3. FORMAT price dollar9.;: Formats the price variable as currency (e.g., $300,000).
4. SYMBOL Statements: Define the appearance of data points in the plot:
- SYMBOL1: Uses blue dots for one type of house.
- SYMBOL2: Uses red squares for another type.
5. PLOT price*tax = type;: Creates a scatter plot where:
- price (y-axis) is plotted against tax (x-axis).
- Data is grouped by the type variable, using different symbols/colors for each group.
6. RUN;: Executes the plotting procedure.

Step 3: Features of the Plot
1. Axes:
- X-axis: Tax rate (tax).
- Y-axis: Price of the house (price).
2. Grouping: Different house types (type) are represented by distinct symbols/colors.
3. Formatting: Prices are displayed in a dollar format for clarity.

Step 4: Example Plot Output
1. Scatter Plot: X-axis: Tax rates (e.g., 0.15, 0.20, 0.25). Y-axis: Prices (e.g., $175,000, $300,000). Points:
- Blue dots for one house type.
- Red squares for another house type.

## Using SQL in SAS

[ProcSql1.sas](SAS/ProcSql1.sas): This SAS script demonstrates the use of PROC SQL for querying and manipulating data within a dataset. The code highlights foundational SQL operations, including selecting columns, filtering rows, and summarizing data, all executed in the SAS environment.

Key Features:
1. Data Querying:
- Select specific columns from a dataset.
- Filter rows using conditional logic.
2. Data Aggregation:
- Calculate summary statistics (e.g., averages, totals) within groups.
3. PROC SQL Basics:
- Provides a concise introduction to SAS's implementation of SQL syntax.

[ProcSql2.sas](SAS/ProcSql2.sas): This SAS script builds upon the foundational concepts of ProcSql1.sas by introducing advanced SQL techniques within the SAS environment. It includes more complex queries and data manipulations, showcasing the power of PROC SQL for data analysis and reporting.

Key Features:
1. Advanced SQL Queries:
- Perform joins to combine data from multiple tables.
- Use subqueries for dynamic data selection.
2. Data Transformation:
- Create calculated fields using SQL expressions.
- Apply conditional logic for dynamic transformations.
3. PROC SQL Extensions:
- Explore advanced PROC SQL options available in SAS.

[ProcSql3.sas](SAS/ProcSql3.sas): This script demonstrates expert-level SQL techniques in SAS, focusing on performance optimization and advanced query capabilities. It extends the concepts from previous scripts (ProcSql1.sas and ProcSql2.sas), introducing intricate operations for sophisticated data management and reporting.

Key Features:
1. Complex Data Manipulation:
- Perform advanced joins, unions, and set operations.
- Implement hierarchical queries and recursive logic.
2. Optimization Techniques:
- Use indexing strategies to improve query performance.
- Optimize query execution with efficient PROC SQL practices.
3. Advanced Analytical Queries:
- Leverage aggregate functions for complex reporting.
- Include dynamic grouping and filtering techniques.

[ProcSql4.sas](SAS/ProcSql4.sas): This script highlights advanced SQL functionality in SAS, with a focus on leveraging database management techniques and reporting capabilities for large-scale datasets. It builds on prior scripts in the ProcSql series, incorporating dynamic filtering, aggregation, and subquery usage.

Key Features:
1. Dynamic Querying:
- Utilize parameterized SQL queries to enable dynamic data filtering.
- Perform advanced case-based logic within queries.
2. Data Aggregation and Summarization:
- Leverage nested queries for complex reporting.
- Apply grouping and summarization techniques for multi-dimensional analysis.
3. Enhanced Reporting:
- Design output-ready datasets for integration with reporting tools.
- Generate insights through calculated fields and formatted data.

[ProcSql5.sas](SAS/ProcSql5.sas): This script demonstrates advanced SQL techniques in SAS, focusing on optimizing query performance, joining datasets, and implementing complex data manipulations. It serves as the final iteration in the ProcSql series, showcasing refined approaches for real-world data analysis.

Key Features:
1. Optimized Joins:
- Demonstrates INNER, LEFT, and FULL joins to combine datasets effectively.
- Utilizes indexing and filtering for performance improvement.
2. Complex Queries:
- Implements multi-level subqueries to extract hierarchical data.
- Uses conditional logic to refine data processing.
3. Data Transformation:
- Includes examples of calculated fields, aggregated measures, and formatted results for downstream reporting.

[ProcSql6.sas](SAS/ProcSql6.sas): This script showcases advanced data manipulation and analysis techniques using PROC SQL in SAS. It builds upon prior scripts in the ProcSql series to demonstrate sophisticated query strategies, with a focus on enhancing data accuracy and reporting capabilities.

Key Features:
1. Advanced Data Filtering:
- Uses complex WHERE clauses for precise data extraction.
- Demonstrates the use of HAVING clauses to refine grouped data.
2. Calculated Fields:
- Introduces additional computed columns for in-depth analysis.
- Includes examples of conditional expressions in calculated fields.
3. Grouping and Aggregation:
- Utilizes GROUP BY and aggregate functions (e.g., SUM, AVG) for data summarization.
- Implements nested queries to support multi-layered analysis.
4. Performance Considerations:
- Optimized use of indexes for faster query execution.
- Demonstrates query execution plans for large datasets.

[ProcSql7.sas](SAS/ProcSql7.sas): This script demonstrates comprehensive examples of SQL operations in SAS, focusing on joining multiple datasets and managing complex relationships. It is a continuation of the ProcSql series, expanding on query optimization and data integration techniques.

Key Features:
1. Complex Joins:
- Implements various join types, including INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- Demonstrates merging datasets with common and unique keys.
2. Subqueries:
- Includes correlated and uncorrelated subqueries for advanced data retrieval.
- Utilizes subqueries within SELECT, WHERE, and FROM clauses.
3. Advanced Filtering and Conditions:
- Features intricate WHERE and HAVING clauses for detailed data segmentation.
- Incorporates logical operators and nested conditions for precision.
4. Data Transformation:
- Leverages SQL functions to manipulate and transform data.
- Applies CASE statements for conditional value creation.
5. Output Customization:
- Formats and sorts query results for report-ready output.
- Demonstrates the use of SQL aliases for improved readability.

[ProcSql8.sas](SAS/ProcSql8.sas): This script showcases advanced SQL functionalities in SAS, emphasizing data summarization, grouping, and conditional aggregation. It is the eighth installment in the ProcSql series, targeting scenarios that require detailed analysis and grouped reporting.

Key Features:
1. Data Grouping and Aggregation:
- Utilizes the GROUP BY clause to segment data into meaningful groups.
- Demonstrates the use of aggregate functions such as SUM, AVG, MAX, and COUNT.
2. Conditional Aggregation:
- Employs conditional logic in aggregate functions (e.g., CASE within SUM or COUNT) for tailored calculations.
3. Filtering with HAVING:
- Highlights filtering of grouped data using the HAVING clause.
- Compares the usage of HAVING and WHERE for granular control.
4. Subqueries in Aggregation:
- Incorporates subqueries to derive dynamic filters and summary statistics.
5. Output Customization:
- Formats grouped and summarized data for presentation-ready output.
- Applies column aliases for clarity and readability.

[ProcSql9.sas](SAS/ProcSql9.sas): This script introduces advanced SQL techniques in SAS, focusing on complex queries, subquery optimization, and combining datasets using SQL joins and set operations. It is the ninth script in the ProcSql series, designed for users aiming to master sophisticated SQL capabilities within SAS.

Key Features:
1. Advanced Joins:
- Demonstrates INNER, LEFT, RIGHT, and FULL OUTER JOIN operations.
- Illustrates combining datasets with different structures and keys.
2. Set Operations:
- Uses UNION, INTERSECT, and EXCEPT to merge or compare datasets.
3. Optimized Subqueries:
- Embeds subqueries for dynamic filtering and creating derived tables.
- Highlights efficient query construction for large datasets.
4. Conditional Logic:
- Employs CASE statements within SELECT clauses for conditional column transformations.
5. Output Customization:
- Applies formatted output with column aliases and calculated fields.

[ProcSqlCreateTable.sas](SAS/ProcSqlCreateTable.sas): This script introduces advanced SQL techniques in SAS, focusing on complex queries, subquery optimization, and combining datasets using SQL joins and set operations. It is the ninth script in the ProcSql series, designed for users aiming to master sophisticated SQL capabilities within SAS.

Key Features:
1. Advanced Joins:
- Demonstrates INNER, LEFT, RIGHT, and FULL OUTER JOIN operations.
- Illustrates combining datasets with different structures and keys.
2. Set Operations:
- Uses UNION, INTERSECT, and EXCEPT to merge or compare datasets.
3. Optimized Subqueries:
- Embeds subqueries for dynamic filtering and creating derived tables.
- Highlights efficient query construction for large datasets.
4. Conditional Logic:
- Employs CASE statements within SELECT clauses for conditional column transformations.
5. Output Customization:
- Applies formatted output with column aliases and calculated fields.

[ProcSqlAlterTable.sas](SAS/ProcSqlAlterTable.sas): This script demonstrates how to modify existing tables using the ALTER TABLE statement in PROC SQL. It covers adding, modifying, and deleting table columns, as well as applying constraints and labels. This script is essential for maintaining and evolving database structures in SAS.

Key Features:
1. Column Addition:
- Shows how to add new columns to an existing table with specified data types and default values.
2. Column Modification:
- Demonstrates altering existing column attributes, such as data types, labels, or formats.
3. Column Deletion:
- Explains how to drop unnecessary columns safely.
4. Constraints:
- Illustrates adding and modifying table constraints like primary keys or unique constraints.
5. Best Practices:
- Includes recommendations for table maintenance, such as preserving data integrity during alterations.

[ProcSqlInsertToTable.sas](SAS/ProcSqlInsertToTable.sas): This script provides examples of how to insert data into existing tables using the INSERT INTO statement in PROC SQL. It includes multiple methods for adding rows to tables, ensuring flexibility for dynamic and static data insertion scenarios.

Key Features:
1. Single Row Insertion:
- Demonstrates how to insert a single row with specified column values.
2. Multiple Rows Insertion:
- Shows how to add multiple rows in a single operation for efficiency.
3. Dynamic Data Insertion:
- Illustrates using a SELECT statement to insert data from another table into the target table.
4. Data Validation:
- Provides insights into ensuring data integrity and checking constraints during insertion.
5. Commented Examples:
- Includes well-commented sections to guide users through different insertion techniques.

[ProcSqlFindDuplicates.sas](SAS/ProcSqlFindDuplicates.sas): This script demonstrates how to identify duplicate records in a dataset using PROC SQL. It highlights efficient methods for detecting duplicates based on one or more columns, ensuring data consistency and accuracy.

Key Features:
1. Duplicate Detection:
- Identifies rows with duplicate values in specific columns.
2. Count of Duplicates:
- Displays the number of occurrences for each duplicate entry.
3. Flexible Column Selection:
- Allows users to specify columns for duplicate detection, catering to different dataset structures.
4. Clean and Readable Output:
- Outputs results in a clear tabular format, making it easy to analyze duplicate records.

[ProcSqlDropDuplicates.sas](SAS/ProcSqlDropDuplicates.sas): This script demonstrates how to remove duplicate records from a dataset using PROC SQL. It ensures data integrity by keeping only unique records based on specified columns.

Key Features:
1. Duplicate Removal:
- Eliminates rows with duplicate values from the dataset, retaining only one instance of each unique record.
2. Custom Column Specification:
- Allows users to define the columns that determine uniqueness, making it adaptable to various datasets.
3. Flexible Output Options:
- Outputs the deduplicated dataset for further analysis or saves it as a new table.
4. Efficient and Clear Code:
- Implements best practices for SQL in SAS to optimize performance and readability.

[ProcSqlSorting.sas](SAS/ProcSqlSorting.sas): This script demonstrates sorting datasets using PROC SQL in SAS. It highlights methods for organizing data in ascending and descending order based on one or multiple columns.

Key Features:
1. Sorting by Single or Multiple Columns:
- Sorts the dataset based on one column or a combination of columns for more granular organization.
2. Ascending and Descending Order:
- Supports sorting in both ascending (default) and descending orders for greater flexibility.
3. Customizable Sorting Logic:
- Users can define specific columns and the order of sorting as per their dataset's requirements.
4. Efficient Data Handling:
- Processes large datasets effectively by leveraging PROC SQL's optimized sorting capabilities.

[ProcSqlCase.sas](SAS/ProcSqlCase.sas): This script demonstrates the use of the CASE statement within PROC SQL in SAS. It illustrates how conditional logic can be applied to create new columns or modify existing data based on specific conditions.

Key Features:
1. Conditional Logic with CASE:
- Dynamically assigns values to a column based on specified conditions.
2. Enhanced Data Categorization:
- Groups or categorizes data effectively by applying conditional logic.
3. Customizable Conditions:
- Users can define multiple conditions to suit the data analysis requirements.
4. Integration with PROC SQL:
- Combines the power of CASE statements with SQL querying for flexible data manipulation.

## Using Indexes In SAS

[ProcSqlIndex.sas](SAS/ProcSqlIndex.sas): This script demonstrates how to create both simple and composite indexes in SAS using PROC SQL.

Key Features:
1. Data Import:
- Reads londonoutcomes.csv into a dataset named policel.
2. Simple Index Creation:
- Creates an index on the LSOAC variable using PROC SQL.
3. Composite Index Creation:
- Defines a composite index compind on CrimeID and LSOAC for efficient multi-column lookups.
4. Unique Index Option:
- Includes a commented-out example of enforcing uniqueness with CREATE UNIQUE INDEX.
5. SQL Index Syntax:

<table>
    <tr>
        <td>
            Index
        </td>
        <td>
            Type
        </td>
        <td>
            Syntax Example
        </td>
    </tr>
    <tr>
        <td>
            Simple
        </td>
        <td>
            Index
        </td>
        <td>
            CREATE INDEX LSOAC ON policel;
        </td>
    </tr>
    <tr>
        <td>
            Unique
        </td>
        <td>
            Index
        </td>
        <td>
            CREATE UNIQUE INDEX LSOAC ON policel;
        </td>
    </tr>
    <tr>
        <td>
            Composite
        </td>
        <td>
            Index
        </td>
        <td>
            CREATE INDEX compind ON policel(CrimeID, LSOAC);
        </td>
    </tr>
</table>

[ProcDataSetsBy.sas](SAS/ProcDataSetsBy.sas): Using PROC DATASETS in SAS to handle large amounts of data. This script demonstrates how to create an index on a dataset using PROC DATASETS and leverage it for sorting operations.

Key Features:
1. Data Import:
- Reads londonoutcomes.csv into a dataset named policel.
2. Index Creation Using PROC DATASETS:
- Adds an index on the LSOAC column.
3. Using the Index in Data Processing:
- The useindexby dataset leverages the index for sorting operations.
4. Message Level Setting:
- Enables informational messages (MSGLVL=I) to display indexing details.
5. Indexing Syntax in PROC DATASETS:

<table>
    <tr>
        <td>
            Task
        </td>
        <td>
            Syntax Example
        </td>
    </tr>
    <tr>
        <td>
            Create Index
        </td>
        <td>
            INDEX CREATE LSOAC /;
        </td>
    </tr>
    <tr>
        <td>
            Modify Dataset
        </td>
        <td>
            MODIFY policel;
        </td>
    </tr>
</table>

[ProcDataSets.sas](SAS/ProcDataSets.sas): Using PROC DATASETS in SAS to handle large amounts of data. This script demonstrates indexing in SAS using PROC DATASETS and filtering missing values using WHERE conditions.

Key Features:
1. Data Import:
- Reads londonoutcomes.csv into a dataset named policel.
2. Indexing Operations:
- Creates an index on LSOAC using PROC DATASETS.
- Creates a composite index (compind) on CrimeID and LSOAC.
3. Frequency Analysis:
- Uses PROC FREQ to analyze LSOAC distribution.
4. Filtering Missing Values:
- Creates usingindex dataset to store records where LSOAC is missing.

<br>

Details:
1. Indexing Benefits: Optimizes search and query performance.
- Filtering with Index: Uses WHERE LSOAC IS MISSING; to extract missing values efficiently.
- Composite Indexing: Enables multi-key searches for performance optimization.
2. Indexing Syntax in PROC DATASETS:
- Task	Syntax Example
- Create Index on One Variable	INDEX CREATE LSOAC /;
- Create Composite Index	INDEX CREATE compind=(CrimeID LSOAC) /;

[IndexVariables.sas](SAS/IndexVariables.sas): Using INDEX to create variables to handle large amounts of data. This script imports sales data, processes it into a SAS dataset, and performs frequency analysis.

Key Features:
1. Library Assignment:
- Uses LIBNAME to assign a path for storing datasets (sa).
2. Data Import:
- Reads sales.csv into sa.sal using INFILE.
3. Variable Assignment:
- Defines numeric (x1-x8, MSRP) and categorical (Status, ProductLine, ProductCode, CustomerName) variables.
4. Frequency Analysis:
- Uses PROC FREQ to analyze CustomerName distribution.

[IndexLargeData.sas](SAS/IndexLargeData.sas): Using INDEX to handle large data. This script generates a large dataset, queries data with and without indexing, and demonstrates indexing efficiency.

Key Features:
1. Dataset Creation (LARGEDATA):
- Generates 800,000 records.
- Computes X, Y, and Z dynamically.
- Assigns categorical values (M, N, O, P) based on a cyclic pattern.
2. Data Querying (Without Indexing):
- PROC SQL selects specific records (X values: 792286, 486273, 237838) into NOINDEX.
3. Index Creation:
- Uses PROC DATASETS to add an index on X for faster lookups.
4. Data Querying (With Indexing):
- PROC SQL retrieves the same records into INDEX but benefits from the indexed search.

## Using Macro Variables in SAS

[MacroVariables1.sas](SAS/MacroVariables1.sas): Using SAS Macro Variables and displaying all of them in the results tab. This script imports crime outcome data, prints a subset, and displays macro variables.

Key Features:
1. Data Import:
- Reads londonoutcomes.csv into a dataset (policel) using INFILE.
2. Variable Assignment:
- Defines categorical (CrimeID, ReportedF, FallsW, Location, LSOAC, LSOAN, OutcomeT) and numeric (Longitude, Latitude) variables.
3. Subset Printing:
- Uses PROC PRINT to display the first 10 records of CrimeID.
4. Macro Variables:
- Defines site = NY and references it in TITLE.
5. Macro Debugging:
- %PUT _all_; outputs all macro variables for debugging.

[MacroVariables2.sas](SAS/MacroVariables2.sas): This script demonstrates importing a dataset using the DATA step and using SAS macro variables to manage text, numbers, and dynamic expressions. The _ALL_ log feature is used to display the current state of all macro variables.

Key Features:
1. CSV Data Import:
- Reads the londonoutcomes.csv dataset, specifying delimiter options, skipping the first observation, and defining input variables.
2. Macro Variable Usage:
- Defines various macro variables to store text strings, expressions, and numeric values.
- Includes examples of macro variables with empty values, simple arithmetic expressions, and string assignments with special characters.
3. Displaying Macro Variables:
- The %PUT _ALL_ statement outputs all macro variables and their values to the SAS log.

Code Explanation:
1. DATA Policel:
- Imports data from a CSV file, mapping columns to specified variables.
2. Macro Variable Assignments:
- A simple string (name and name2).
- A string containing special characters (title).
- Empty values (start).
- Numeric values and arithmetic expressions (total, sum, and sumtotal).
3. Log Output:
- The %PUT _ALL_ statement lists all macro variables and their current values in the SAS log, allowing debugging and tracking.

[MacroVariables3.sas](SAS/MacroVariables3.sas): This script demonstrates importing a dataset using the DATA step and using SAS macro variables to manage text, numbers, and dynamic expressions. The _ALL_ log feature is used to display the current state of all macro variables.

Key Features:
1. CSV Data Import:
- Reads the londonoutcomes.csv dataset, specifying delimiter options, skipping the first observation, and defining input variables.
2. Macro Variable Usage:
- Defines various macro variables to store text strings, expressions, and numeric values.
- Includes examples of macro variables with empty values, simple arithmetic expressions, and string assignments with special characters.
3. Displaying Macro Variables:
- The %PUT _ALL_ statement outputs all macro variables and their values to the SAS log.

Code Explanation:
1. DATA Policel:
- Imports data from a CSV file, mapping columns to specified variables.
2. Macro Variable Assignments:
- A simple string (name and name2).
- A string containing special characters (title).
- Empty values (start).
- Numeric values and arithmetic expressions (total, sum, and sumtotal).
3. Log Output:
- The %PUT _ALL_ statement lists all macro variables and their current values in the SAS log, allowing debugging and tracking.

[MacroVariables4.sas](SAS/MacroVariables4.sas): This script demonstrates importing a dataset using a DATA step, utilizing SAS macro variables, and enabling the SYMBOLGEN system option to display macro variable resolutions in the SAS log.

Key Features:
1. CSV Data Import:
- Reads the londonoutcomes.csv dataset, setting delimiter options and starting from the second observation.
2. Macro Variables with SYMBOLGEN:
- Defines macro variables such as TEXT and site to dynamically generate titles and other content.
- Enables SYMBOLGEN to display macro variable resolutions in the SAS log.
3. Subset of Data:
- Displays the first 10 observations from the dataset and keeps only the CrimeID variable in the output.
4. Dynamic Titles:
- Uses the macro variable TEXT to create a dynamic title for the printed dataset.

Code Explanation:
1. DATA Policel:
- Imports the CSV file using the INFILE and INPUT statements, specifying variable mappings.
2. Macro and Log Options:
- The SYMBOLGEN option reveals the resolution of macro variables during execution.
- %LET TEXT = %STR(Mike%'s Report) demonstrates escaping special characters.
3. PROC PRINT:
- Prints the first 10 observations of the dataset with a dynamic title derived from a macro variable.

[MacroVariables5.sas](SAS/MacroVariables5.sas): This script demonstrates the use of a DATA step to import and process a CSV dataset, followed by a %INDEX macro example to locate the position of a specific character within a string.

Key Features:
1. CSV Data Import:
- Reads data from a CSV file (londonoutcomes.csv) with specified options for delimiters, missing values, and starting observation.
2. Data Variables:
- Loads key fields such as CrimeID, ReportedF, FallsW, Longitude, Latitude, Location, LSOAC, LSOAN, and OutcomeT.
3. Macro Function %INDEX:
- Identifies the position of a specific character (v) within a string (a very long value) and assigns the position to a macro variable.
4. Output:
- Displays the position of the character in the SAS log using %PUT.

Code Explanation:
1. DATA Policel:
- Utilizes the INFILE statement to read the CSV file with DSD and MISSOVER options.
- Specifies column mappings with the INPUT statement.
2. Macro Example:
- %INDEX(&a, v) calculates the position of the character v in the string a very long value.
- The result is stored in the macro variable b and displayed in the SAS log.

[MacroVariables6.sas](SAS/MacroVariables6.sas): This script demonstrates the usage of the %SCAN macro function in SAS for extracting specific substrings or words from a given text string. It highlights its flexibility in handling delimiters and parsing text dynamically.

Key Features:
1. Extract Substrings with %SCAN:
- Retrieves specific words or segments from a string based on their position.
2. Customizable Delimiters:
- Allows the use of custom delimiters for parsing text beyond the default spaces.
3. Macro Variable Integration:
- Assigns the extracted values to macro variables for further processing in SAS programs.

Code Explanation:
1. Macro Variable X:
- Defined as XYZ.ABC/XYY, representing the input string.
2. First %SCAN Example:
- %SCAN(&X, 3) extracts the third word (default delimiter: /), assigning the value XYY to WORD.
3. Second %SCAN Example:
- %SCAN(&X, 1, Z) extracts the first segment of the string using Z as a delimiter, assigning the value XY to PART.
4. Output:
- Displays the extracted WORD and PART values using %PUT.

## Using SAS Macros

[MacroInSas1.sas](SAS/MacroInSas1.sas): This script demonstrates the creation and execution of SAS macros to perform statistical analysis on a dataset.

Key Features:
1. Dataset Creation:
- Defines a sample dataset houseprice with columns for property type, price, and tax rate.
2. Basic Macro Creation:
- Implements a simple macro %somestats to run the PROC MEANS procedure for summary statistics.
3. Parameterized Macro:
- Defines a macro %newstats(PROG, VARS) that accepts procedure names and variables as parameters.
- Examples show usage with procedures such as MEANS and UNIVARIATE.

Code Explanation:
1. Dataset Definition:
- Uses the DATA step and DATALINES to create a dataset with property types, prices, and tax rates for further analysis.
2. Macro %somestats:
- A simple, reusable macro to calculate summary statistics using PROC MEANS.
3. Parameterized Macro %newstats:
- Generalizes statistical analysis by allowing the user to specify:
- PROG: The procedure to run (e.g., MEANS, UNIVARIATE).
- VARS: The variables for analysis (e.g., price, tax).
4. Macro Execution:
- Demonstrates executing macros with different combinations of procedures and variables.

[MacroInSas2.sas](SAS/MacroInSas2.sas): This script demonstrates the use of SAS macros to automate the calculation of average sales for multiple years.

Key Features:
1. Multiple Datasets Creation:
- Defines yearly sales datasets (yr2005 to yr2010) containing sales data for four individuals.
2. Macro %AVERAGE:
- Automates the computation of average sales for each year.
- Uses a DO loop to iterate through years (2005-2010).
- Executes PROC MEANS to compute summary statistics for sales data.
- Dynamically sets the report title using the macro variable &i.
3. Macro Execution with Options:
- Enables debugging options (MPRINT, MLOGIC) for macro execution tracking.
- Calls %AVERAGE to process all yearly datasets.

Code Explanation:
1. Data Creation:
- Defines six datasets (yr2005 to yr2010), each storing sales values for four individuals.
2. Macro Definition %AVERAGE:
- Iterates through years using %DO to dynamically reference dataset names.
- Computes summary statistics for the Sales variable using PROC MEANS.
3. Macro Execution:
- Calls %AVERAGE, triggering PROC MEANS for each dataset.

[MacroInSas3.sas](SAS/MacroInSas3.sas): This script demonstrates the use of the %INCLUDE statement in SAS to incorporate external SAS code into the current session.

Key Features:
1. External Script Inclusion:
- Uses %INCLUDE to import and execute the SAS script MacroInSas2.sas located in /home/u63805106/datasetslearnsas/.
2. /SOURCE2 Option:
- Enables detailed logging by displaying the included file's source code in the SAS log.
- Helps in debugging and tracking macro execution.

Code Explanation:
1. %INCLUDE Statement:
- Loads and executes the contents of MacroInSas2.sas dynamically.
- Useful for modularizing SAS programs by reusing existing macro definitions.
2. Logging with /SOURCE2:
- Ensures that the included script's code appears in the log for better traceability.

[MacroInSas4.sas](SAS/MacroInSas4.sas): This script defines a macro %logitma to perform logistic regression in SAS using the PROC LOGISTIC procedure. It allows dynamic selection of dependent and independent variables.

Key Features:
1. Data Import:
- Reads the dataset train.csv using INFILE with DSD, MISSOVER, and FIRSTOBS=2 options.
2. Macro for Logistic Regression (%logitma):
- Takes input dataset, dependent variable, independent variable(s), and an output dataset name.
- Iterates over multiple dependent variables (if specified).
- Runs PROC LOGISTIC for each dependent variable against the given independent variables.
3. Dynamic Title Generation:
- Sets TITLE statements based on dependent and independent variable names.
4. Model Output Handling:
- Stores estimation results in separate datasets (est1, est2, etc.).
- Combines results into a final dataset (myparm by default).
5. Macro Parameters:

<table>
    <tr>
        <td>
            Parameter
        </td>
        <td>
            Description
        </td>
    </tr>
    <tr>
        <td>
            inpdata
        </td>
        <td>
            Input dataset (e.g., train)
        </td>
    </tr>
    <tr>
        <td>
            depvar
        </td>
        <td>
            Dependent variable(s) (e.g., Survived)
        </td>
    </tr>
    <tr>
        <td>
            indvar
        </td>
        <td>
            Independent variables (default: none)
        </td>
    </tr>
    <tr>
        <td>
            myout
        </td>
        <td>
            Output dataset name (default: _out)
        </td>
    </tr>
</table>

## Solutions to exercises in Udemy course by Ermin Dedic: "SAS Programming Complete: Learn SAS and Become a Data Ninja"

[Exercise 1.sas](SAS/Exercise%201.sas): This script imports data from multiple sheets of an Excel file and merges the data based on account number. It also calculates the running balance for each account across the merged sheets.

1. Macro Definition (import_excel): A macro %import_excel is defined to streamline the import process for multiple Excel sheets. The macro takes a parameter, sheet_number, to dynamically select the desired sheet.
2. PROC IMPORT imports data from a specified Excel file, Balance_Bank.xlsx, located in /home/u63805106/datasetslearnsas/.
3. Bank&sheet_number is the output dataset name, where &sheet_number creates a unique dataset name for each sheet.
4. The SHEET option is set to "Sheet&sheet_number", importing data from the specified sheet.
5. The PROC SORT step sorts each imported dataset by Acc_number and Date.
6. Macro Invocation: The macro %import_excel is called twice to import Sheet1 and Sheet2 into datasets Bank1 and Bank2.
7. Data Merging and Balance Calculation:
- The DATA BankMerged step merges Bank1 and Bank2 by Acc_number.
- The RETAIN statement holds the Balance value across rows within each account.
- The conditional logic calculates Balance as follows:
- For the first row of each Acc_number, Balance is initialized to Credit - Debit.
- For subsequent rows, Balance accumulates by adding the difference (Credit - Debit) to the previous balance.
8. Result: The final dataset, BankMerged, contains a consolidated list of transactions for each account, with a running balance calculation.
- This script demonstrates using SAS macros for repetitive tasks, importing and merging data from multiple sheets, and calculating cumulative values within groups.

## Solutions to exercises in Udemy course by Aslam Khan: "The Simplest Guide to SAS Programming- SAS Base-SAS Advanced"

[SAS_Course_Exercise_19.sas](SAS/SAS_Course_Exercise_19.sas): This code creates a vertical bar chart displaying the mean MSRP (Manufacturer's Suggested Retail Price) of cars for each make using the SASHELP.CARS dataset. The second step involves visually inspecting the chart to identify the car with the highest mean MSRP, which corresponds to the tallest bar in the chart.

[SAS_Course_Exercise_20.sas](SAS/SAS_Course_Exercise_20.sas): This code generates a report using PROC REPORT on the SASHELP.CARS dataset. It includes columns for Make, Type, Origin, Sum Retail Price, and Mean Retail Price. The Sum Retail Price column displays the total MSRP of all cars within each Make, Type, and Origin group, while the Mean Retail Price column shows the average MSRP for the same groups.

## Usage

1. Clone the repository to your local machine.
2. Open the desired SAS file in SAS Studio, SAS Enterprise Guide, or any other SAS environment.
3. Run the code to execute the specified data processing or analysis tasks.
4. Customize the code as needed for your specific use case.

## Future Updates

This repository will be regularly updated with additional SAS code snippets for various data science tasks and analyses. Stay tuned for more examples and templates to support your data science projects.

## License

This repository is licensed under the MIT License. Feel free to use the code provided here for educational, research, or commercial purposes. Contributions are welcome!
