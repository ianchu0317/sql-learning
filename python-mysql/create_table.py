import mysql.connector


# SQL CREDENTIALS
username = "python"
password = "python123"
host = "192.168.0.15"
db_name = "python_mysql"

# Connect to server
sql = mysql.connector.connect(user=username,
                              password=password,
                              host=host,
                              database=db_name)
# Cursor to execute commands
cursor = sql.cursor()

create_table = """
CREATE TABLE IF NOT EXISTS business_operations (
    description VARCHAR(15),
    industry VARCHAR(15),
    level INT NOT NULL,
    size VARCHAR(10),
    line_code VARCHAR(10) UNIQUE,
    value INT
);
"""

# create table
print("Creating table 'business_operations'...")
cursor.execute(create_table)

# Close cursor
cursor.close()
# Close connection
sql.close()

