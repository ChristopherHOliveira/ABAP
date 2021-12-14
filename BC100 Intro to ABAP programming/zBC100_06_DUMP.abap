*&---------------------------------------------------------------------*
*& Report zBC100_06_DUMP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zBC100_06_DUMP.
* managing a runtime error

PARAMETERS: pa_left TYPE i,
            pa_months TYPE i.

DATA: gv_avg TYPE p LENGTH 16 DECIMALS 2.

* calculating average vacation days left per remaining months of the year
gv_avg = pa_left / pa_months.

* condition implemented to prevent a 'division by zero' dump
IF pa_months = 0.
    WRITE: 'Please consult if you can roll over your remaining vacation'.
ELSE.
    WRITE: 'You have an average of', gv_avg, 'days left per month.'.