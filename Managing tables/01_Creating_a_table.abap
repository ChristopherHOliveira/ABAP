* Steps to create a simple table:

* 1. Access SE11 transaction.
* 2. With 'database table' radio button selected, choose a table name and click 'Create'. (e.g. 'ZMOTOS').
* 3. Provide a short description. (e.g. 'Motorcycle data').
* 4. Choose a Delivery Class: (e.g. 'A', from Application table, for master and transactional data)
* 5. In Delivery and Maintenance tab:
*       Choose Data Browser/Table View Maint. (e.g. 'Display/Maintenance Allowed with Restrictions').
* 6. In Fields tab:
*       Name a field, name a Data Element and double click on it:
*           It pop up a message box asking to create the Data Element: click Yes:
*               Provide a short description.
*               In Data Type tab:
*                   Choose a predefined Type or create a Domain:
*                       Name the domain and double click on it:
*                           It pop up a message box asking to create the Data Element: click Yes
*                       Provide a short description of the Domain,
*                       In Definition tab:
*                           Set a Data Type, No. Characters, Output Lenght,
*                           Activate it.
* 7. In Technical Settings:
*        In General Properties tab:
*           Set a Data Class: e.g. 'APPL0' for master data, transparent tables,
*           Set a Size Category: e.g. '0' for up to 5.100 data records.
*        In DB-Specific Properties:
*           Set Storage Type: e.g. 'Undefined'
* 8. When Saving it asks to attribute the table to a package, or save it as local object.
*       It also pop up a Workbench request screen, choose or create a crequest.
*       Information: Application table should be client-specific
* 9. When activating it asks for Enhancement Category, select one in 'extras' menu.