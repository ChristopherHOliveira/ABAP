*&---------------------------------------------------------------------*
*& Report zBC100_CALC_HOLS_SOL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT BC100_CALC_HOLS_SOL.
* calculates

PARAMETERS: pa_name TYPE string, "Input field for user name
            pa_total TYPE i, "Total days annual vacation
            pa_used TYPE i, "Number of vacation days used
            pa_roll TYPE i. "Number of days to roll over

DATA gv_remaining TYPE i. "Remaining vacation days
DATA gv_next_year TYPE i. "Vacation days for next year

* Calculate the remaining days vacation for the 
gv_remaining = pa_total - pa_used.

* Output the remaining days vacation for the year
WRITE: gv_remaining, 'vacation days remaining for', pa_name.

* Calulate the number of vacation days for next year
gv_next_year = pa_total + pa_roll.

NEW-LINE.
* Output the number of days vacation for next year
WRITE: gv_next_year, 'vacation days available for next year'.