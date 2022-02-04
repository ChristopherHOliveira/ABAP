* DATA, TYPE and TYPES

* Declaring variable using 'Data' and giving it a predefined type using 'TYPE' statement:
DATA lv_001(10) TYPE i.

* Creating a new type using 'TYPES:' statement:
TYPES: ty_str(50).

* Now we can declare variables of the type we created:
DATA: lv_002 TYPE ty_str,
      lv_003 TYPE ty_str,
      lv_004 TYPE ty_str,
      lv_005 LIKE lv_004. " We can also use 'LIKE' to refer to the type of an existing
*                           local or global object ONLY (e.g. local variable 'lv_004' type).
* 'LIKE' statement can be used only referring a global or declared local object type.

* A created type can also be of the same type of an existing object.
* e.g. created type 'ty_matnr001' created with the same type of 'matnr' column of 'mara' table:
TYPES: ty_matnr001 TYPE mara-matnr,
       ty_matnr002 LIKE mara-matnr, " or reffered to an object type with 'LIKE'
       ty_matnr003 TYPE ty_matnr002. "or can also make reference to another 'created type type'


* Structures and Internal Tables

* Creating a structure and internal table of the same type of 'sflight' SAP table:
DATA: wa_sflight TYPE sflight, " structure 
      it_sflight TYPE TABLE OF sflight. " internal table

* Creating a structure and internal table of the same type of 'sflight' SAP table but adding a new column:
TYPES: BEGIN OF mod_sflight.
       INCLUDE TYPE sflight.
TYPES: new_column TYPE i,
       END OF mod_sflight.

DATA: wa_sflight_custom TYPE mod_sflight,
      it_sflight_custom TYPE TABLE OF mod_sflight.

* Creating a table from zero:
