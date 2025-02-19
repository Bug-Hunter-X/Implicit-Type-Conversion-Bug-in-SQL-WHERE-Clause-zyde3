The solution is to explicitly cast the string literal to the appropriate integer type:

```sql
SELECT * FROM employees WHERE employee_id = CAST('123' AS INT);
```

This ensures that the comparison is performed between two integers, preventing any issues due to implicit conversion.  The specific casting function might vary slightly depending on your database system (e.g., `CAST` in many systems, `CONVERT` in SQL Server).  It's generally good practice to explicitly cast data types in SQL comparisons to avoid these kinds of subtle bugs.  Always ensure that data types match to avoid unintended behaviour.  Consider using parameterized queries to help prevent SQL injection vulnerabilities too.