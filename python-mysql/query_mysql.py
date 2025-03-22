import mysql.connector


username = "python"
password = "python123"
host = "192.168.0.15"
database = "python_mysql"

conn = mysql.connector.connect(user=username,
                               password=password,
                               host=host,
                               database=database)

cursor = conn.cursor()

cmd = ("SELECT * FROM business_operations "
       "WHERE value BETWEEN %s AND %s "
       "ORDER BY value DESC")

min_val = 1000
max_val = 3000

cursor.execute(cmd, (min_val, max_val))
print("QUERY 1")
for row in cursor:
    print(row)


cursor.execute(cmd, (3000, 5000)) 
print("\nQUERY 2")
for row in cursor:
    print(row)


# cerrar conexión
cursor.close()
conn.close()

