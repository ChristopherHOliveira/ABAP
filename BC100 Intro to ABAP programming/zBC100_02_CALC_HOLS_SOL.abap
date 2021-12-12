*&---------------------------------------------------------------------*
*& Report zBC100_02_CALC_HOLS_SOL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBC100_02_CALC_HOLS_SOL.
* calculates remaining vacation days 
* Under construction!

PARAMETERS: pa_name TYPE string, "Input field for user name
            pa_total TYPE i, "Total days annual vacation
            pa_used TYPE i, "Number of vacation days used
            pa_roll TYPE i. "Number of days to roll over

DATA gv_remaining TYPE i.
DATA gv_next_year TYPE i.
DATA gv_month_avg(16) TYPE p DECIMALS 2. " Monthly average vacation days

CONSTANTS c_months TYPE i VALUE 12. " Quantity of months per year

* Calculate the remaining vacation days
gv_remaining = pa_total - pa_used.

* Output the remaining vacation days for the year
WRITE: gv_remaining, 'vacation days remaining for', pa_name.

* Calulate the number of vacation days for next year
gv_next_year = pa_total + pa_roll.

NEW-LINE.
* Output the number of days vacation for next year
WRITE: gv_next_year, 'vacation days available for next year'.