* defining a packed number variable:
DATA result TYPE p LENGHT 16 DECIMALS 2.
* or DATA result(16) TYPE p DECIMALS 2.

* multiplying the two numbers and storing the result in 'result':
result = num1 * num2.

*****************************************

* global type example:
DATA var_1 TYPE type_name.

* like keyword example:
DATA var_2 TYPE var_1.

*****************************************

* string literal example (hard codded unchangeable values):
WRITE 'Hello world'.

NEW-LINE.

* numeric literal example:
WRITE 33.

*****************************************

* constants example (recomended over literals):
* values cannot be changed during runtime.
CONSTANTS c_hello TYPE string VALUE 'Hello World'.
CONSTANTS c_number TYPE I value 123.

WRITE c_hello.

NEW-LINE.

WRITE c_number.

*****************************************
