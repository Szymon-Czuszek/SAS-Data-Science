/*============================================================================*/
/* STEP 1: Create sales dataset                                               */
/*============================================================================*/

/*
   Dataset SALES contains quarterly sales
   values for each employee.

   The program also calculates the total
   sales across all four periods.
*/

DATA sales;

    /* Read employee name and quarterly sales values */
    INPUT
        Name $
        Sales_1-Sales_4;

    /* Calculate total sales across all quarters */
    total = SUM(
        Sales_1,
        Sales_2,
        Sales_3,
        Sales_4
    );

    /* Inline data values */
Greg 10 2 40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
;
RUN;


/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This example demonstrates how to:

   - Create a SAS dataset
   - Read multiple variables using a variable list
   - Calculate a row-level total
   - Use the SUM function

   Dataset Structure
   ----------------------------------------------------------------

   Variables:

   Name
       Employee name

   Sales_1
       Sales for period 1

   Sales_2
       Sales for period 2

   Sales_3
       Sales for period 3

   Sales_4
       Sales for period 4

   total
       Total sales across all periods
	
   Variable List
   ----------------------------------------------------------------

   INPUT
       Name $
       Sales_1-Sales_4;

   Instead of listing every variable individually,
   SAS allows consecutive variables to be referenced
   using a variable range.

   The following statements are equivalent:

   Sales_1-Sales_4

   and

   Sales_1 Sales_2 Sales_3 Sales_4

  SUM Function
   ----------------------------------------------------------------

   total = SUM(
       Sales_1,
       Sales_2,
       Sales_3,
       Sales_4
   );

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

   Practical Applications
   ----------------------------------------------------------------

   Similar calculations are commonly used for:

   - Quarterly sales totals
   - Annual revenue
   - Student exam scores
   - Financial reporting
   - Budget calculations
   - Inventory quantities
   - Performance metrics
   - KPI aggregation

   DATA Step Workflow
   ----------------------------------------------------------------

   The program performs the following steps:

   1. Create the SALES dataset.
   2. Read employee names and quarterly sales.
   3. Calculate the total sales for each employee.
   4. Store the completed observations.

   Each observation is processed independently,
   making this a row-by-row calculation.