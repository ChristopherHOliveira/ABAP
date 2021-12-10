*&---------------------------------------------------------------------*
*& Report zbc100_13_selscreen
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbc100_13_selscreen.

* input fields for user name and age
PARAMETERS: p_name TYPE string,            
            p_age  TYPE i.

WRITE: 'Hello', p_name. " say hello to the user

NEW-LINE.

WRITE: 'Congratulations on reaching', p_age, 'years!'.
