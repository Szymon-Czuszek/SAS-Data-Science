/*============================================================================*/
/* STEP 1: Create first student dataset                                       */
/*============================================================================*/

/*
   Dataset STUDENT_DATA_1 contains information about students,
   including:

   - student name
   - gender
   - age
   - weight

   Some observations intentionally contain
   missing values to demonstrate how SAS
   handles incomplete data.
*/

DATA student_data_1;
INPUT student_name $ gender $ student_age student_weight;
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
   Dataset STUDENT_DATA_2 contains additional
   student records with the same structure
   as STUDENT_DATA_1.
*/

DATA student_data_2;
INPUT student_name $ gender $ student_age student_weight;
CARDS;
Michael M 34 150.2
Patricia F 56 125.0
;
RUN;

/*============================================================================*/
/* STEP 3: Append datasets                                                    */
/*============================================================================*/

/*
   Combine both student datasets into
   a single dataset using the SET statement.

   Because both datasets share the same
   structure, SAS appends observations
   from STUDENT_DATA_2 below those in
   STUDENT_DATA_1.
*/

DATA combined_student_data;
	SET student_data_1 student_data_2;
RUN;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/
