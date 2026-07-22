/*============================================================================*/
/* STEP 1: Create dataset with SAS date values                                */
/*============================================================================*/

/*
   This example demonstrates how SAS stores
   and performs calculations using date values.

   SAS dates are stored internally as the number
   of days since 01JAN1960, which is the SAS
   reference (epoch) date.
*/

DATA test;

    /* Assign SAS date literals */
    a = "1Jan1960"d;
    b = "31Dec1960"d;
    c = "29Dec2018"d;
    d = "10Apr2018"d;

    /* Calculate the number of days between two dates */
    diff = c - d;

RUN;


/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This example demonstrates how to:

   - Create SAS date variables
   - Use date literals
   - Perform date arithmetic
   - Calculate the difference between dates


   SAS Date Values
   ----------------------------------------------------------------

   SAS stores dates as numeric values.

   The reference date is:

       01JAN1960

   which has the numeric value:

       0

   Every other date is stored as the number
   of days relative to this reference date.


   Examples
   ----------------------------------------------------------------

   Date                SAS Value
   --------------------------------
   01JAN1960              0

   02JAN1960              1

   31DEC1959             -1

   31DEC1960            365


   Date Literals
   ----------------------------------------------------------------

   SAS date literals use the syntax:

       "DDMMMYYYY"d

   Examples:

       "1Jan1960"d

       "31Dec1960"d

       "29Dec2018"d

   The trailing "d" tells SAS that the
   quoted value represents a date.

   Variables in the Dataset
   ----------------------------------------------------------------

   a
       01JAN1960

   b
       31DEC1960

   c
       29DEC2018

   d
       10APR2018

   diff
       Number of days between
       dates c and d

   Date Arithmetic
   ----------------------------------------------------------------

   diff = c - d;

   Since SAS dates are stored as integers,
   subtracting two dates simply subtracts
   their numeric values.

   The result represents the number of
   days between the two dates.

   Example Calculation
   ----------------------------------------------------------------

   c = 29DEC2018

   d = 10APR2018

   diff = c - d

        = 263 days

   Therefore:

       diff = 263

   Why Date Arithmetic Works
   ----------------------------------------------------------------

   Because SAS stores dates as integers,
   mathematical operations are straightforward.

   Common operations include:

   date1 - date2
       Number of days between dates

   date + 30
       Date 30 days later

   date - 7
       Date one week earlier


   Displaying Dates
   ----------------------------------------------------------------

   Although SAS stores dates as numbers,
   they are usually displayed using a
   date format such as:

       DATE9.

   Example:

       FORMAT a b c d DATE9.;

   Output:

       01JAN1960
       31DEC1960
       29DEC2018
       10APR2018

   The SUM function adds all supplied values.

   Unlike the + operator, SUM ignores
   missing numeric values.

   Example:

   SUM(10, ., 20)

   returns

   30

   whereas

   10 + . + 20

   returns

   .

   Example Calculations
   ----------------------------------------------------------------

   Greg

   10 + 2 + 40 + 0 = 52

   John

   15 + 5 + 10 + 100 = 130

   Lisa

   50 + 10 + 15 + 50 = 125

   Mark

   20 + 0 + 5 + 20 = 45

   Expected Output
   ----------------------------------------------------------------

   Name    Sales_1  Sales_2  Sales_3  Sales_4  total
   --------------------------------------------------
   Greg       10        2        40        0      52
   John       15        5        10      100     130
   Lisa       50       10        15       50     125
   Mark       20        0         5       20      45

   Why Use SUM Instead of "+"
   ----------------------------------------------------------------

   Advantages:

   - Ignores missing values
   - More reliable for real-world data
   - Produces cleaner calculations
   - Reduces the need for additional
     missing value checks