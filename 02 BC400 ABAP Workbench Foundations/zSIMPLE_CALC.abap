*&---------------------------------------------------------------------*
*& Report  zSIMPLE_CALC
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
report zSIMPLE_CALC.

* user inputs (two integer numbers and a desired operator)
parameters: lv_n1      type i,
            lv_oper(2) type c,
            lv_n2      type i.

* creating a type for the result variable
types: ty_result(16) type p decimals 2.

* creating the result variable
data: gv_result type ty_result.

*conditions to accept a valid operator
if lv_oper <> '+' and
   lv_oper <> '-' and
   lv_oper <> '*' and
   lv_oper <> '/' and
   lv_oper <> '%' and
   lv_oper <> '**'.

  message e001(zbc400_msgs). " error message if not a valid operator

elseif lv_oper = '/' and lv_n2 = 0.

  message e002(zbc400_msgs). " 'division by Zero' message error

else.
* else: do the given operation according to the operator
  case lv_oper.
    when '+'.
      gv_result = lv_n1 + lv_n2.
    when '-'.
      gv_result = lv_n1 - lv_n2.
    when '*'.
      gv_result = lv_n1 * lv_n2.
    when '%'.
      perform calc_perc(z_calc1_perform) " permorm a subroutine to calculate X % of Y (below)
        using
          lv_n1                          " variable to be send to subroutine
          lv_n2                          " variable to be send to subroutine
        changing
          gv_result.                     " variable to be modified by subroutine
    when '**'.
      call function 'ZFM_BC400TEST1'     " call a function module created previously
        exporting
          iv_n1          = lv_n1     " Attributing local user input variables 'lv_n1' and 'lv_n2' as
          iv_n2          = lv_n2     " internal variables of respective function module
        importing
          ev_power       = gv_result " Attributing local result variable as a FM internal variable
        exceptions
          negative_power = 1         " test exception created, if power is a negative number (then sy-subrc will be = 1)
          others         = 2.
      if sy-subrc = 1.               " negative_power exception
        message 'In this program, you cannot elevate a number to a negative power' type 'E'.
      endif.
*      FUNCTION ZFM_BC400TEST1.  " Source code of the called function, just for example
*     *"----------------------------------------------------------------------
*     *"*"Local Interface:
*     *"  IMPORTING
*     *"     REFERENCE(IV_N1) TYPE  I
*     *"     REFERENCE(IV_N2) TYPE  I
*     *"  EXPORTING
*     *"     REFERENCE(EV_POWER) TYPE  P
*     *"  EXCEPTIONS
*     *"      NEGATIVE_POWER
*     *"----------------------------------------------------------------------
*     * error handling
*     if iv_n2 < 0.
*         raise negative_power.
*     else.
*     *   calculate result
*         ev_power = iv_n1 ** iv_n2.
*     endif.
*     ENDFUNCTION.
      when '/'.
        call method zcl_division_bc400=>get_division
        exporting
            iv_n1 = lv_n1
            iv_n2 = lv_n2
        importing
            iv_result = gv_result.
*       method GET_DIVISION.  " Called method, just for example
                
*         iv_result = iv_n1 / iv_n2.
                
*       endmethod.
  endcase.

* and display the result
  write: 'Result:', gv_result.

endif.

form calc_perc
  using                             " just using the following variables
    value(pv_perc) type i           " gv_int1 as pv_perc
    value(pv_num) type i            " gv_int2 as pv_num
  changing                          " modifying the following variable
    value(cv_perc) type ty_result.  " gv_result as cv_perc

  cv_perc = pv_perc * pv_num / 100. " the percentage calculus
endform.