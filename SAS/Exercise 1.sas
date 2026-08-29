/*============================================================================*/
/* Calculate the average age of employees by job title                        */
/*============================================================================*/

/*
   This query calculates the average age of employees
   for each job title in the NORTHWIND.EMPLOYEES table.

   The employee's age is calculated from their BIRTHDATE
   using the current system date.
*/

SELECT
    TITLE,

    /*
       Calculate employee age in completed years:

       1. MONTHS_BETWEEN calculates the number of months
          between the current date and the employee's birthdate.

       2. Divide by 12 to convert months into years.

       3. TRUNC removes the fractional part to obtain
          the completed number of years.

       4. AVG calculates the average age within each
          job title.

       5. ROUND rounds the final average to two decimal places.
    */
    ROUND(
        AVG(
            TRUNC(
                MONTHS_BETWEEN(SYSDATE, BIRTHDATE) / 12
            )
        ),
        2
    ) AS AVG_AGE

FROM
    NORTHWIND.EMPLOYEES

/* Group employees according to their job title */
GROUP BY
    TITLE;


/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose
   ----------------------------------------------------------------
   The query determines the average age of employees for
   each distinct job title.

   For example, if three employees with the same TITLE are
   30, 35, and 40 years old, their average age is:

       (30 + 35 + 40) / 3 = 35


   MONTHS_BETWEEN
   ----------------------------------------------------------------

   MONTHS_BETWEEN(SYSDATE, BIRTHDATE)

   calculates the number of months between:

       SYSDATE
           Current database system date

   and:

       BIRTHDATE
           Employee's date of birth


   Converting Months to Years
   ----------------------------------------------------------------

   Dividing by 12 converts the calculated number
   of months into years.

       MONTHS_BETWEEN(SYSDATE, BIRTHDATE) / 12


   TRUNC
   ----------------------------------------------------------------

   TRUNC removes the decimal portion of the calculated age.

   For example:

       35.8 → 35

   This means the calculation uses the employee's
   completed age rather than their fractional age.


   AVG
   ----------------------------------------------------------------

   AVG calculates the arithmetic mean of employee ages.

   Because the query uses GROUP BY TITLE, AVG is calculated
   separately for each job title.


   ROUND
   ----------------------------------------------------------------

   ROUND(..., 2)

   rounds the resulting average to two decimal places.

   Example:

       35.6667 → 35.67


   GROUP BY
   ----------------------------------------------------------------

   GROUP BY TITLE

   creates one result group for every distinct job title.

   The final result therefore contains:

       TITLE | AVG_AGE

   with one row per job title.


   Key SQL Concepts Demonstrated
   ----------------------------------------------------------------

   - SELECT
   - Aggregate functions
   - AVG()
   - ROUND()
   - TRUNC()
   - Date calculations
   - MONTHS_BETWEEN()
   - SYSDATE
   - GROUP BY
   - Column aliases
*/