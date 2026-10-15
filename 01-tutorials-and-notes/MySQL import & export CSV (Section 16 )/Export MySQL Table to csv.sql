-- The CSV stands for comma-separated values. The CSV file format is often used to exchange data between applications such as Microsoft Excel, Open Office, Google Docs, and so on.

-- Having data from the MySQL database in CSV file format will be useful because you can analyze and format the data in the way you want

-- 1) Exporting data to CSV file using MySQL Workbench 
-- If you don’t have access to the MySQL server to retrieve the exported CSV file, you can use MySQL Workbench to export the result set of a query to a CSV file in your local computer as follows:

-- 1. First, execute a query to get its result set.
-- 2. Second, from the result panel, click “export recordset to an external file”. Note that a result set is also known as a recordset.
-- 3. Third, a new dialog is displayed and asks you for a filename and file format. Enter the file name, choose CSV as the file format, and click the Save button.



desc customers;

select
customerNumber,contactLastName,phone,city,state
from customers;