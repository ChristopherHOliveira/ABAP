*&---------------------------------------------------------------------*
*& Report zBC100_06_DUMP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBC100_06_DUMP.
* managing a runtime error

PARAMETERS: pa_left TYPE i, " input of vacation days left in current year
            pa_mont TYPE i. " input of months left in current year

DATA: gv_avg TYPE p LENGTH 16 DECIMALS 2.

* condition implemented to prevent a 'division by zero' dump
IF pa_mont = 0.
*    instead of outputing a WRITE statement like: WRITE: 'Please consult if you can roll over your remaining vacation'.
*    I've added a MESSAGE type i (information) nº001 of Message Class zbc100_msgs
*    for that, I had to previously create a Package in SE21 associated to a Transport Request created in SE09
     MESSAGE i001(zbc100_msgs).
ELSE.
* calculating average vacation days left per remaining months of the year
    gv_avg = pa_left / pa_mont.
    WRITE: 'You have an average of', gv_avg, 'days left per month.'.
ENDIF.
