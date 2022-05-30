import psycopg2

arr = 0

def get_teams(id):
    global arr
    arr = id
    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()

    cursor.execute(f"SELECT * FROM teams WHERE id = {id};")
    returned = cursor.fetchall()

    cursor.close()
    conn.close()
    return returned


def change_data(team_name, team_region, team_logotipe):
    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()
    print(arr)
    
    cursor.execute(f"UPDATE teams SET team_name = '{team_name}', team_region = '{team_region}', logotipe = '{team_logotipe}' WHERE id = {arr}")
    
    conn.commit()
    cursor.execute(f"SELECT * FROM teams WHERE id = {arr}")
    returned = cursor.fetchall()

    cursor.close()
    conn.close()
    return returned

def delete():

    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()

    cursor.execute(f"DELETE FROM teams WHERE id = {arr}")
    conn.commit()

    cursor.close()
    conn.close()

def add(id, team_name, team_region, team_logotipe):

    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()

    sql = f"INSERT into teams (id, team_name, team_region, logotipe) values(%s, %s, %s, %s)"
    val = (str(id),str(team_name), str(team_region), str(team_logotipe))
    cursor.execute(sql, val)
    conn.commit()

    cursor.close()
    conn.close()


#psql \! chcp 1251