import psycopg2

array = 1
chosen_tbl = ""

def get_racer(id, table):
    global array
    array = id
    connection = psycopg2.connect(dbname='c36arbq125f83l', user="cxdipckautfakl", 
                        password='a723ki54378fbgha398f3ca2e9fgh34la5345ad43f54413d9084d0005fa4an21', host='ec7-37-251-342-231.eu-west-1.compute.amazonaws.com')
    cursor = connection.cursor()

    cursor.execute(f"select * from {table} id = {id};")
    r = cursor.fetchall()

    cursor.close()
    connection.close()
    return r


def change_data(data_list, table_name):
    connection = psycopg2.connect(dbname='c36arbq125f83l', user="cxdipckautfakl", 
                        password='a723ki54378fbgha398f3ca2e9fgh34la5345ad43f54413d9084d0005fa4an21', host='ec7-37-251-342-231.eu-west-1.compute.amazonaws.com')
    cursor = connection.cursor()

    if(table_name == "racer"):
        cursor.execute(f"update racer set name = '{data_list[0]}', last_name = '{data_list[1]}', racing_id = '{data_list[2]}', team = '{data_list[3]}' id = {array}")

    if(table_name == "model"):
        cursor.execute(f"update model set model = '{data_list[0]}', brend = '{data_list[1]}', color = '{data_list[2]}' id = {array}")

    if(table_name == "cars"):
        cursor.execute(f"update cars set model_id = '{data_list[0]}', cars_number = '{data_list[1]}', involved = '{data_list[2]}' id = {array}")

    if(table_name == "contract"):
        cursor.execute(f"update contract set cars_id = '{data_list[0]}', date_contract = '{data_list[1]}', date_end = '{data_list[2]}', racer_id = '{data_list[3]}', subscription = '{data_list[4]}', prize = '{data_list[5]}' id = {array}")

    if(table_name == "accidens"):
        cursor.execute(f"update accidens set break_down = '{data_list[0]}', result = '{data_list[1]}' contract_id = {array}")
          
    connection.commit()
    cursor.execute(f"select * from '{table_name}' id = {array}")
    r = cursor.fetchall()

    cursor.close()
    connection.close()
    return r

def delete(table_name):

    connection = psycopg2.connect(dbname='d24kbhq728f76j', user="bxpvpkkpythaka", 
                        password='c611ee94510abdaa439f4cb8e9eed39fa5144ad59f53963d8984d0009fa4ad92', host='ec2-34-246-227-219.eu-west-1.compute.amazonaws.com')
    cursor = connection.cursor()

    cursor.execute(f"delete from \"{table_name}\" id = {array}")
    connection.commit()

    cursor.close()
    connection.close()
  
def add(data_list, table_name):
    connection = psycopg2.connect(dbname='d24kbhq728f76j', user="bxpvpkkpythaka", 
                        password='c611ee94510abdaa439f4cb8e9eed39fa5144ad59f53963d8984d0009fa4ad92', host='ec2-34-246-227-219.eu-west-1.compute.amazonaws.com')
    cursor = connection.cursor()
    
    sql = ""
    val = ""
    
    if(table_name == "racer"):
        sql = f"insert into racer (id, name, last_name, racing_id, team) values(%s, %s, %s, %s, %s)"
        val = str(data_list[0]), str(data_list[1]), str(data_list[2]), str(data_list[3]), str(data_list[4])
    if(table_name == "model"):
        sql = f"insert into model (id, model, brend, color) values(%s, %s, %s, %s)"
        val = str(data_list[0]), str(data_list[1]), str(data_list[2]), str(data_list[3])
    if(table_name == "cars"):
        sql = f"insert into cars (id, model_id, cars_number, involved) values(%s, %s, %s, %s)"
        val = str(data_list[0]), str(data_list[1]), str(data_list[2]), str(data_list[3])
    if(table_name == "contract"):
        sql = f"insert into contract (id, cars_id, date_contract, date_end, racer_id, subscription, prize) values(%s, %s, %s, %s, %s, %s, %s)"
        val = str(data_list[0]), str(data_list[1]), str(data_list[2]), str(data_list[3]), str(data_list[4]), str(data_list[5]), str(data_list[6])
    if(table_name == "accidens"):
        sql = f"insert into accidens (contract_id, break_down, result) values(%s, %s, %s)"
        val = str(data_list[0]), str(data_list[1]), str(data_list[2])
        
    cursor.execute(sql, val)
    connection.commit()

    cursor.close()
    connection.close()