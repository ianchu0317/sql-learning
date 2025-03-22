import mysql.connector

username = "python"
password = "python123"
host = "192.168.0.15"
db_name = "python_mysql"

sql = mysql.connector.connect(user=username,
                              password=password,
                              host=host,
                              database=db_name)

if sql and sql.is_connected():
    print("Connection success !")

sql.close()
