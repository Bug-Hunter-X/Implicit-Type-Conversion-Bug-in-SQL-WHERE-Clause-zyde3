# Implicit Type Conversion Bug in SQL WHERE Clause

This repository demonstrates a common SQL bug related to implicit type conversion in WHERE clauses.  The bug occurs when comparing a numeric column with a string literal, which can lead to unexpected results or errors.

## Bug Description

The bug arises from the implicit type conversion performed by the database system when comparing a numeric column (`employee_id` in this case) with a string literal. This implicit conversion can result in incorrect comparisons or errors if the string literal cannot be converted to a valid number or if there are data inconsistencies in the `employee_id` column.

## Bug Solution

The solution involves explicit type casting to ensure consistent data types in the comparison. By explicitly casting the string literal to the same data type as the numeric column, we avoid the problems caused by implicit conversion.  This approach also makes the query more readable and maintainable.

## How to Reproduce

1. Create a table named 'employees' with an `employee_id` column of integer type and some sample data, including some potential 'bad' data (e.g., non-numeric employee id's).
2. Run the `bug.sql` query.
3. Observe the unexpected results or errors.
4. Run the `bugSolution.sql` query to see the correct output.
