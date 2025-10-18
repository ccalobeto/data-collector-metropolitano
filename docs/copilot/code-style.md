# Code Style Guide

## Project structure for dbt

src/
 |- analytics/
    ├── models/
    │   ├── staging/
    │   │   │── stg__entity.sql
    │   │   └── stg__another_entity.sql
    ├── ...

## Code style for dbt

- Schema, table, and column names should be in snake_case.
- Dates should be named <event>_date (e.g., created_date).
- Event dates/times should be past tense (e.g., created, updated).
- Price/revenue fields in decimal currency should be explicit (e.g., 19.99 for $19.99). If non-decimal, indicate with a suffix (e.g., price_in_soles).
- Use business terminology over source terminology (e.g., customer_id instead of user_id).
- Model versions should use suffixes like _v1,_v2.
- SQL Formatting: Consistent indentation, line breaks, and capitalization for SQL keywords.
- Jinja and Macros: Follow "dbtonic" principles for well-structured and reusable Jinja code.
- Column Ordering: Prefer a consistent order of data types in SELECT statements (e.g., IDs, strings, numerics, booleans, dates, timestamps).
- Modularity and Reusability: Encourage the use of ref() and source() for clear dependencies and the creation of reusable macros.

## Project structure for pyspark

src/
 |- analytics-spark/
    │── spark_calculation_1.py
    └── spark_calculation_2.py
    ├── ...

## Code Style for pyspark

- Python code style primarily adheres to PEP 8, the official Style Guide for Python Code. Key principles include:
- Use snake_case for function and variable names.
- Use CamelCase for class names.
- Constants should be in UPPER_SNAKE_CASE.
- Limit line length to 79 characters.
- Use implied line continuation with parentheses, brackets, or braces for long lines.
- Consistency: Maintain a consistent style throughout the project.
- Modularity: Design code with clear functions, classes, and modules.
- Documentation: Use docstrings for modules, classes, and functions, and comments for explanations where necessary.
- Error Handling: Implement robust error detection and handling.
- Tools: Utilize tools like Black for automatic formatting and Flake8 or Pylint for linting to enforce PEP 8.
