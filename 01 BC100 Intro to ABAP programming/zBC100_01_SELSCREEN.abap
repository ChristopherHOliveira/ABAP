*&---------------------------------------------------------------------*
*& Report zbc100_01_selscreen
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbc100_01_selscreen.
* Utilizing a simple selection screen

* input fields for user name and age
PARAMETERS: p_name TYPE string,            
            p_age  TYPE i.

* say hello to the user
WRITE: TEXT-hel, p_name. " using a text symbol in text elements

NEW-LINE.

WRITE: 'Congratulations on reaching the age of', p_age, '!'.
