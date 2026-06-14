/*=========*==================================================================*/
/* STEP 1: Create first student dataset                                       */
/*============================================================================*/

/*
   Dataset STUDENT_INFO_1 contains student
   demographic and physical information.
*/

DATA student_info_1;
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
   Dataset STUDENT_INFO_2 contains additional
   student records that will later be appended
   to a master dataset.
*/

DATA student_info_2;
	INPUT student_name $ gender $ student_age student_weight;
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

PROC APPEND BASE=combined_student_info DATA=student_info_1;
RUN;

/*============================================================================*/
/* STEP 4: Append second dataset to master dataset                            */
/*============================================================================*/

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
/*
   Append observations from STUDENT_INFO_2
   to the existing COMBINED_STUDENT_INFO dataset.
*/

PROC APPEND BASE=combined_student_info DATA=student_info_2;
RUN;

* Running the code multiple times will result in duplicated appended records.

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