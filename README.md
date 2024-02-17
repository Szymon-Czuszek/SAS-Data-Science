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

Explanation:
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

## SAS Data Processing Example: "guardians" Dataset

This SAS code snippet demonstrates the creation of a dataset named "guardians" containing information about guardians. The dataset has three variables:

1. **first_name**: Represents the first name of the guardian.
2. **last_name**: Indicates the last name of the guardian.
3. **height**: Represents the height of the guardian.

The data is read from the "cards" section using the INFILE statement with a specified delimiter (`,`). The `dsd` option is also used, which stands for "Delimiter-Sensitive Data". This option treats consecutive delimiters as separate, empty fields. In this case, it allows the code to properly handle the data where the delimiter is a comma, and there are no missing values for some variables.

Explanation:
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

Explanation:
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

Explanation:
The individuals dataset is structured to store information about individuals, including their first name, last name, gender, age, and mass.
The @@ symbols in the input statement indicate that SAS should hold the input pointer at the current line after reading the values. This allows for reading multiple observations from the same line of data without advancing to the next line.
The data is manually entered using the input statement followed by the cards section, where each line represents information about an individual.
This example serves as a template for creating datasets to manage information about individuals, which can be valuable for various analytical and reporting purposes in SAS.

## Usage

Clone the repository to your local machine.
Open the desired SAS file in SAS Studio, SAS Enterprise Guide, or any other SAS environment.
Run the code to execute the specified data processing or analysis tasks.
Customize the code as needed for your specific use case.
Future Updates

This repository will be regularly updated with additional SAS code snippets for various data science tasks and analyses. Stay tuned for more examples and templates to support your data science projects.

## License

This repository is licensed under the MIT License. Feel free to use the code provided here for educational, research, or commercial purposes. Contributions are welcome!
