import psycopg2

arr = 0
choosed_table = ""

def get_teams(id, table):
    global arr
    arr = id
    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()

    cursor.execute(f"SELECT * FROM {table} WHERE id = {id};")
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

def delete(table_name):

    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()

    cursor.execute(f"DELETE FROM {table_name} WHERE id = {arr}")
    conn.commit()

    cursor.close()
    conn.close()
  
def add(fields_list, table_name):
    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()
    
    if(table_name == "teams"):
        sql = f"INSERT into teams (id, team_name, team_region, logotipe) values(%s, %s, %s, %s)"
        val = '{fields_list[0]}', '{fields_list[1]}', '{fields_list[2]}', '{fields_list[3]}'
    if(table_name == "team_mates"):
        sql = f"INSERT into team_mates (id, role_id, team_id, player_name, world_rank, approx_total_winnings) values(%s, %s, %s, %s, %s, %s)"
        val = '{fields_list[0]}', '{fields_list[1]}', '{fields_list[2]}', '{fields_list[3]}', '{fields_list[4]}', '{fields_list[5]}'
    if(table_name == "teamate_roles"):
        sql = f"INSERT into teamates_roles (id, role_name) values(%s, %s)"
        val = '{fields_list[0]}', '{fields_list[1]}'
    if(table_name == "arenas"):
        sql = f"INSERT into arenas (id, arena_name) values(%s, %s)"
        val = '{fields_list[0]}', '{fields_list[1]}'
    if(table_name == "games"):
        sql = f"INSERT into games (id, team1_id, team2_id, arena_id, date_time) values(%s, %s, %s, %s)"
        val = '{fields_list[0]}', '{fields_list[1]}', '{fields_list[2]}', '{fields_list[3]}', '{fields_list[4]}'
        
    cursor.execute(sql, val)
    conn.commit()

    cursor.close()
    conn.close()

