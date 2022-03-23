report z_perform_example.

*creating a packed type
types gty_perc type p decimals 2.

* user inputs for:
parameters: gv_int1 type i, " desired percentage
            gv_int2 type i. " of desired number

* creating result variable
data gv_result type gty_perc.

* calling percentage calculation form
perform calc_perc
  using " passing the variables to just use
    gv_int1
    gv_int2
  changing " passing the variable to modify
    gv_result.

* writing the answer
write: 'Answer: ', gv_result, '%'.

* percentage calculation form
form calc_perc
  using " just using the following variables
    value(pv_perc) type i " gv_int1 as pv_perc
    value(pv_num) type i " gv_int2 as pv_num
  changing " modifying the following variable
    value(cv_perc) type gty_perc. " gv_result as cv_perc

  cv_perc = pv_perc * pv_num / 100. " the percentage calculus
endform.
