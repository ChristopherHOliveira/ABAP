*&---------------------------------------------------------------------*
*& Report zbc100_selscreen
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbc100_selscreen.

* input fields for user name and age
PARAMETERS: p_name TYPE string,            
            p_age  TYPE i.

* say hello to the user
WRITE: TEXT-hel, p_name. " using a text symbol in text elements

NEW-LINE.

WRITE: 'Congratulations on reaching', p_age, 'years!'.
