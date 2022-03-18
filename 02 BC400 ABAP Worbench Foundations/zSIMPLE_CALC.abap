report z_calc1.

* user inputs (two integer numbers and a desired operator)
parameters: lv_n1      type i,
            lv_oper(2) type c,
            lv_n2      type i.

* creating the result variable
data: gv_result(16) type p decimals 2.

*conditions to accept a valid operator
if lv_oper <> '+' and
   lv_oper <> '-' and
   lv_oper <> '*' and
   lv_oper <> '/' and
   lv_oper <> '**'.

  message e001(zbc400_msgs). " error message if not a valid operator

elseif lv_oper = '/' and lv_n2 = 0.

  message e002(zbc400_msgs). " 'division by Zero' message error

else.
* else: do the given operation
  case lv_oper.
    when '+'.
      gv_result = lv_n1 + lv_n2.
    when '-'.
      gv_result = lv_n1 - lv_n2.
    when '*'.
      gv_result = lv_n1 * lv_n2.
    when '/'.
      gv_result = lv_n1 / lv_n2.
    when '**'.
      gv_result = lv_n1 ** lv_n2.
  endcase.

* and display the result
  write: 'Result:', gv_result.

endif.
