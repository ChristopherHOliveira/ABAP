*&---------------------------------------------------------------------*
*& Report zBC100_05_LOOP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zBC100_05_LOOP.
* Vacation days calculator based on worked company years

* Each employee must receive additional vacation days for each year
* they have worked with the company (up to five years) as follows:
* Worked company years -> Vacation days(cumulative)
* 1 -> 1
* 2 -> 2
* 3 -> 3
* 4 -> 4
* 5 -> 5

PARAMETERS: pa_name  TYPE string, " user name
            pa_start TYPE i, " total vacation days when joining the company
            pa_years Type i. " total years worked in the company

DATA gv_result TYPE i.

gv_result = pa_start " first move current total to the result variable

DO pa_years TIMES.
    gv_result = gv_result + Sy-index " increment the total with the built-in loop counter variable

    IF Sy-index = 5.
        EXIT.
    ENDIF.
ENDDO.

WRITE: 'Total vacation allowance on joining the company is', pa_start, 'days for', pa_name, '.'.
NEW-LINE.
WRITE: 'Vacation allowance in', pa_years,'year(s) will be', gv_result, 'days'.