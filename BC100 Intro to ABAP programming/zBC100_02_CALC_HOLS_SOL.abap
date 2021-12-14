*&---------------------------------------------------------------------*
*& Report zBC100_02_CALC_HOLS_SOL
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBC100_02_CALC_HOLS_SOL.
* calculates remaining vacation days 
* Under construction!

PARAMETERS: pa_name TYPE string, "input field for user name
            pa_total TYPE i, "total days annual vacation
            pa_used TYPE i, "number of vacation days used
            pa_roll TYPE i. "number of days to roll over

DATA gv_remaining TYPE i.
DATA gv_next_year TYPE i.
DATA gv_month_avg(16) TYPE p DECIMALS 2. " monthly average vacation days

CONSTANTS c_months TYPE i VALUE 12. "quantity of months per year

gv_remaining = pa_total - pa_used. " calculate remaining vacation days
gv_next_year = pa_total + pa_roll. " calulate the number of vacation days for next year
gv_month_avg = pa_total / c_months. " calculate average vacation days per month

WRITE: icon_flight AS ICON, " output a plane icon,
       gv_remaining COLOR col_positive, " colored remaining vacation days for the year
       'vacation days remaining for', pa_name. 

NEW-LINE.

WRITE: icon_holiday AS ICON, " output an icon,
       gv_next_year COLOR col_total, " colored number of days vacation for next year
       'vacation days available for next year.'.

NEW-LINE.

WRITE: gv_month_avg, 'average vacation days per month.'.
