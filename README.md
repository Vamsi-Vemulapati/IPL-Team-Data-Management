# IPL-Team-Data-Management
# IPL Team Data Management

This project provides a comprehensive data management system for IPL team data using SQL. It includes the creation of tables, insertion of data, stored procedures, views, and indexes for efficient data manipulation and retrieval.

## Project Structure

- **sql-scripts/**
  - `Tables Creation.sql`: Contains SQL commands to create the necessary tables for IPL teams, players, and statistics.
  - `insert_data.sql`: Contains SQL commands to insert initial data into the tables for IPL teams and players.
  - `stored Procedures.sql`: Contains SQL commands to create stored procedures for data insertion, retrieval, and manipulation.
  - `calling procedures.sql`: Contains SQL commands to call the stored procedures and demonstrate their functionality.
  - `views.sql`: Contains SQL commands to create views for aggregating and simplifying data retrieval.
  - `indexes.sql`: Contains SQL commands to create indexes for improving query performance.


## Usage

1. **Create Tables:**
   - Run the `create_tables.sql` script to create the necessary tables for the IPL team data.
   ```sql
   source sql-scripts/create_tables.sql;
2. **Create Stored Procedures:**
   - Run the stored_procedures.sql script to create stored procedures for data manipulation.
   - source sql-scripts/stored procedures.sql;
3. **Call Stored Procedures:**
   - Run the call_stored_procedures.sql script to execute the stored procedures and demonstrate their functionality.
   - source sql-scripts/calling procedures.sql;
4.**Create Views:**
  - Run the views.sql script to create views for aggregating and simplifying data retrieval.
  - source sql-scripts/views.sql;
5. **Create Indexes:**
  - Run the indexes.sql script to create indexes for improving query performance.
  - source sql-scripts/indexes.sql;
  **Insert Sample Data:**
    After all these, we can able to insert data into the tables and perform different operations.

