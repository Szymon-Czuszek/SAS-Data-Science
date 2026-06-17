/*============================================================================*/
/* STEP 1: Create first student dataset                                       */
/*============================================================================*/

/*
   Dataset STUDENT_INFO_1 contains student
   demographic and physical information.
*/

DATA student_info_1;

    /* Define input variables */
    INPUT
        student_name $
        gender $
        student_age
        student_weight;

    /* Inline data values */
    CARDS;
Adam M 48 128.6
Sophia . 58 158.3
Emma F . 115.5
James M 28 170.1
;
RUN;


/*============================================================================*/
/* STEP 2: Create second student dataset                                      */
/*============================================================================*/

/*
   Dataset STUDENT_INFO_2 contains additional
   student records that will later be appended
   to a master dataset.
*/

DATA student_info_2;

    /* Define input variables */
    INPUT
        student_name $
        gender $
        student_age
        student_weight;

    /* Inline data values */
    CARDS;
Michael M 34 150.2
Patricia F 56 125.0
;
RUN;


/*============================================================================*/
/* STEP 3: Append first dataset to master dataset                             */
/*============================================================================*/

/*
   PROC APPEND adds all observations from
   STUDENT_INFO_1 to COMBINED_STUDENT_INFO.

   If COMBINED_STUDENT_INFO does not exist,
   SAS creates it automatically using the
   structure of STUDENT_INFO_1.
*/

PROC APPEND
    BASE=combined_student_info
    DATA=student_info_1;
RUN;


/*============================================================================*/
/* STEP 4: Append second dataset to master dataset                            */
/*============================================================================*/

/*
   Append observations from STUDENT_INFO_2
   to the existing COMBINED_STUDENT_INFO dataset.
*/

PROC APPEND
    BASE=combined_student_info
    DATA=student_info_2;
RUN;


/*============================================================================*/
/* Important Note                                                             */
/*============================================================================*/

/*
   Running this program multiple times will
   append the same observations again.

   As a result, duplicate records will be
   created in COMBINED_STUDENT_INFO unless
   the target dataset is deleted or recreated
   before execution.
*/


/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This example demonstrates how to:

   - create multiple SAS datasets
   - append observations using PROC APPEND
   - build a cumulative master dataset
   - understand duplicate risks when appending


   Dataset Structure
   ----------------------------------------------------------------

   Variables:

   student_name
       Student name

   gender
       Student gender

   student_age
       Student age

   student_weight
       Student weight


   PROC APPEND
   ----------------------------------------------------------------
   PROC APPEND adds observations from one
   dataset to another without reading and
   rewriting the entire target dataset.

   Syntax:

   PROC APPEND
       BASE=target_dataset
       DATA=source_dataset;
   RUN;


   BASE Dataset
   ----------------------------------------------------------------
   BASE= specifies the destination dataset.

   In this example:

   BASE=combined_student_info

   receives new observations.


   DATA Dataset
   ----------------------------------------------------------------
   DATA= specifies the source dataset whose
   observations will be appended.

   Examples:

   DATA=student_info_1
   DATA=student_info_2


   How PROC APPEND Works
   ----------------------------------------------------------------

   Step 1:
   ------------------------------------------------
   student_info_1 is appended to
   combined_student_info

   Step 2:
   ------------------------------------------------
   student_info_2 is appended to
   combined_student_info

   Result:
   ------------------------------------------------
   combined_student_info contains records
   from both source datasets.


   Expected Output
   ----------------------------------------------------------------

   student_name   gender   age   weight
   --------------------------------------
   Adam           M        48    128.6
   Sophia         .        58    158.3
   Emma           F         .    115.5
   James          M        28    170.1
   Michael        M        34    150.2
   Patricia       F        56    125.0


   PROC APPEND vs SET
   ----------------------------------------------------------------

   PROC APPEND
   ------------------------------------------------
   - Faster for large datasets
   - Adds observations directly
   - Does not rewrite the BASE dataset

   DATA Step with SET
   ------------------------------------------------
   - Creates a new dataset
   - Reads all source observations again
   - More flexible for transformations


   Duplicate Record Risk
   ----------------------------------------------------------------

   PROC APPEND does not automatically check
   for duplicates.

   Example:

   First execution:
   ------------------------------------------------
   6 records

   Second execution:
   ------------------------------------------------
   12 records

   Third execution:
   ------------------------------------------------
   18 records

   and so on.


   Preventing Duplicate Appends
   ----------------------------------------------------------------

   Common approaches include:

   - Deleting the target dataset before loading
   - Using PROC SORT NODUPKEY
   - Using PROC SQL DISTINCT
   - Checking record existence before append


   Business Applications
   ----------------------------------------------------------------

   - Monthly report consolidation
   - Customer transaction loading
   - Data warehouse staging
   - Survey data collection
   - Incremental ETL processing
   - Historical record accumulation
   - Log file aggregation


   Why PROC APPEND is Popular
   ----------------------------------------------------------------

   Advantages:

   - Efficient for large datasets
   - Minimal resource usage
   - Simple syntax
   - Commonly used in ETL pipelines
   - Ideal for incremental data loading
*/