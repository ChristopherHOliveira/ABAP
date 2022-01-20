*&---------------------------------------------------------------------*
*& Report zBC100_02_CALC_HOLS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBC100_02_CALC_HOLS.
* calculates remaining vacation days 

PARAMETERS: pa_name TYPE string, "input field for user name
            pa_total TYPE i, "total days annual vacation
            pa_used TYPE i, "number of vacation days used
            pa_roll TYPE i. "number of days to roll over

DATA: gv_remaining TYPE i,
     gv_next_year TYPE i,
     gv_month_avg(16) TYPE p DECIMALS 2, " monthly average vacation days
     gv_first_name TYPE string, " assuming that the user enters a first
     gv_last_name TYPE string. " and a second name (this exercise do not validate it)

CONSTANTS c_months TYPE i VALUE 12. "quantity of months per year

gv_remaining = pa_total - pa_used. " calculate remaining vacation days
gv_month_avg = pa_total / c_months. " calculate average vacation days per month

IF pa_roll > gv_remaining. " test if pa_roll is greater than days remaining
    WRITE 'You cannot roll over more days than you have remaining'.
ELSE.
    gv_next_year = pa_total + pa_roll. " calulate the number of vacation days for next year

    WRITE: icon_flight AS ICON, " output a plane icon,
           gv_remaining COLOR col_positive, " colored remaining vacation days for the year
           'vacation days remaining for', pa_name. 

    NEW-LINE.

    WRITE: icon_holiday AS ICON, " output an icon,
           gv_next_year COLOR col_total, " colored number of days vacation for next year
           'vacation days available for next year.'.

    NEW-LINE.

    WRITE: gv_month_avg, 'average vacation days per month.'.
ENDIF.