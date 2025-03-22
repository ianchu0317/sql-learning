"""
Pasos a implementar:
1. Conectar db 
2. Cargar datos archivos
3. Limpieza de datos
4. Subir a db datos limpios
5. cerrar conexion
"""

import mysql.connector


# credentials
username = "python"
password = "python123"
host = "192.168.0.15"

# database information to use
db_name = "python_mysql"
table_name = "business_operations"

# file csv to read
csv_file = "business-operations-200.csv"
datas = []


# start connections
sql = mysql.connector.connect(user=username, 
                              password=password,
                              host=host,
                              database=db_name)
cursor = sql.cursor()


# clean line
def clean_data(line: str):
    # data cleaning
    splited = line.split(",")
    splited[-1] = splited[-1].strip('\n')
    
    # save data
    datas.append({"description": splited[0],
                  "industry": splited[1],
                  "level": int(splited[2]),
                  "size": splited[3],
                  "line_code": splited[4],
                  "value": int(splited[5])})

# read csv file
with open(csv_file, "r") as file:
    counter = 0
    for line in file:
        if counter != 0:
            clean_data(line)
        counter += 1


# insert data into table (SQL)
add_data = ("INSERT INTO business_operations "
            "VALUES (%(description)s, %(industry)s, %(level)s, %(size)s, %(line_code)s, %(value)s)")


# add data to table
for data in datas:
    print("adding ", data, "...")
    cursor.execute(add_data, data)


# commit data
sql.commit()
print("All data commited !")

# close connections
cursor.close()
sql.close()

