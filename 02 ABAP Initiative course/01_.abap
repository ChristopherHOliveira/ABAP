* Declaring variable using 'Data' and giving it a predefined type using 'TYPE' statement:
DATA lv_001(10) TYPE i.

* Creating a new type using 'TYPES:' statement:
TYPES: ty_str(50).

* Now we can declare variables of the type we created:
DATA: lv_002 TYPE ty_str,
      lv_003 TYPE ty_str,
      lv_004 TYPE ty_str,
      lv_005 LIKE lv_004. " We can also use 'LIKE' to refer to the type of an existing
*                           local or global object (e.g. local variable 'lv_004' type).
* 'LIKE' statement can be used only referring a global or declared local object type.

* A created type can also be of the same type of an existing object.
* e.g. created type 'ty_matnr001' created with the same type of 'matnr' column of 'mara' table:
TYPES: ty_matnr001 TYPE mara-matnr,
       ty_matnr002 LIKE mara-matnr. " or reffered to an object type with 'LIKE'

* When declaring types, using 'TYPES:', they can also make reference to another type referrenced 