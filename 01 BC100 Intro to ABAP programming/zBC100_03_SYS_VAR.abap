*&---------------------------------------------------------------------*
*& Report zBC100_03_SYS_VAR
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zBC100_03_SYS_VAR.
* using system predefined variables

WRITE: 'Hello', SY-UNAME, " ID of current user 
       ', today is', SY-DATUM, " current date
       'and now is', SY-UZEIT, " current time
       '.'.
