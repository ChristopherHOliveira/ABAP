*&---------------------------------------------------------------------*
*& Report zBC100_NAME_CHANGER
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zBC100_NAME_CHANGER.
* changes your name if your first name is 'Chris'

PARAMETERS: f_name TYPE string,
            l_name TYPE string.

FIND 'Chris' IN f_name IGNORING CASE.

IF sy-subrc = 0.
    REPLACE 'Chris' IN f_name WITH 'Peter' IGNORING CASE.
    WRITE: 'Congratulations, your new name is', f_name, l_name, '!'.
ELSE.
    WRITE 'Congratulations, you are not called Chris!'.
ENDIF.