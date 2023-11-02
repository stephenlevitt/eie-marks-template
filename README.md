# Excel Template for Capturing Marks (Wits School of E&IE)

This is a template spreadsheet for capturing marks in the School of E&IE. It is in Excel 2013 format so it should be compatible with all later versions of Excel. All formulas are in-cell formulas and it does not contain any macros, so no special permissions are required.

This spreadsheet has some nice features in that it:
1. Integrates with Ulwazi by working directly with Ulwazi-exported data.
2. Performs basic input validation to ensure that captured marks never exceed the total marks for a question or component.
3. Automatically finds the exam, deferred, or supplementary mark for the overview worksheet and highlights it accordingly.
4. Automatically identifies borderline marks (48,49 and 74) on the overview sheet and highlights them.
5. Calculates the student rank which is sometimes important when providing references.

The one thing it cannot do, unfortunately, is the actual marking 😉.

The spreadsheet consists of an Overview worksheet

 (see the legend on the right of the table).
 To manually override any calculated mark, enter the moderated mark in the Moderated column.


In order to use the spreadsheet, obtain a class list from Ulwazi by going to the Grades section, select View and ensure that Split Student Names is ticked. Then click on Actions, Export Entire Gradebook. Open the CSV file in Excel and copy the data from the first four columns (LastName, FirstName, ID, SIS User ID). Select the top-left empty table cell on the Ulwazi spreadsheet and paste the copied data. The table should automatically expand to hold the data. In order for the spreadsheet to work you should never sort the data in the Ulwazi worksheet; you can sort it on any of the other worksheets.

Next, go to the Labs, Test, Project, Exam, Def, and Sup worksheets and drag the bottom-right corner of each table vertically downwards so that it is large enough to contain all the students. Lastly, resize the table on the Overview page. You should be good to go!

For each assessment component you can change any of the columns that you want except for the first four (Student No, First Name, Last Name, Total (%)). Changing those first four columns will break the Overview sheet formulas. For the assessment component worksheets you should only ever capture marks. If a student misses an assessment, leave the relevant cells blank. On the Overview worksheet, you can enter the following text where appropriate: "EXEMPT", "ABSENT", and "FABS". Also on the Overview worksheet in the capture section you can copy-paste the marks from Moeniera and any differences will be highlighted.

Note the following (explain): all components rounded and validation on input; conditional formatting on final totals and imports

Explain how to add a new component

Use conventions for naming tables in each spreadsheet. The table name is the spreadsheet name in lowercase and with underscores for spaces.
Discuss the difference between a resolveable assessment (Test) and an unresolvable assessment (Exam) for when student don't write.