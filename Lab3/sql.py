import psycopg2

arr = 1
choosed_table = ""

def get_teams(id, table):
    global arr
    arr = id
    conn = psycopg2.connect(dbname='d24kbhq728f76j', user="bxpvpkkpythaka", 
                        password='c611ee94510abdaa439f4cb8e9eed39fa5144ad59f53963d8984d0009fa4ad92', host='ec2-34-246-227-219.eu-west-1.compute.amazonaws.com')
    cursor = conn.cursor()

    cursor.execute(f"SELECT * FROM {table} WHERE id = {id};")
    res = cursor.fetchall()

    cursor.close()
    conn.close()
    return res


def change_data(fields_list, table_name):
    conn = psycopg2.connect(dbname='d24kbhq728f76j', user="bxpvpkkpythaka", 
                        password='c611ee94510abdaa439f4cb8e9eed39fa5144ad59f53963d8984d0009fa4ad92', host='ec2-34-246-227-219.eu-west-1.compute.amazonaws.com')
    cursor = conn.cursor()

    if(table_name == "teams"):
        cursor.execute(f"UPDATE teams SET team_name = '{fields_list[0]}', team_region = '{fields_list[1]}', logotipe = '{fields_list[2]}' WHERE id = {arr}")
    if(table_name == "team_mates"):
        cursor.execute(f"UPDATE team_mates SET role_id = '{fields_list[0]}', team_id = '{fields_list[1]}', player_name = '{fields_list[2]}', world_rank = '{fields_list[3]}', approx_total_winnings = '{fields_list[4]}' WHERE id = {arr}")
    if(table_name == "teamate_roles"):
        cursor.execute(f"UPDATE teamate_roles SET role_name = '{fields_list[0]}' WHERE id = {arr}")
    if(table_name == "arenas"):
        cursor.execute(f"UPDATE arenas SET arena_name = '{fields_list[0]}' WHERE id = {arr}")
    if(table_name == "games"):
        cursor.execute(f"UPDATE games SET team1_id = '{fields_list[0]}', team2_id = '{fields_list[1]}', arena_id = '{fields_list[2]}', date_time = '{fields_list[3]}' WHERE id = {arr}")
          
    conn.commit()
    cursor.execute(f"SELECT * FROM '{table_name}' WHERE id = {arr}")
    res = cursor.fetchall()

    cursor.close()
    conn.close()
    return res

def delete(table_name):

    conn = psycopg2.connect(dbname='d24kbhq728f76j', user="bxpvpkkpythaka", 
                        password='c611ee94510abdaa439f4cb8e9eed39fa5144ad59f53963d8984d0009fa4ad92', host='ec2-34-246-227-219.eu-west-1.compute.amazonaws.com')
    cursor = conn.cursor()

    cursor.execute(f"DELETE FROM \"{table_name}\" WHERE id = {arr}")
    conn.commit()

    cursor.close()
    conn.close()
  
def add(fields_list, table_name):
    conn = psycopg2.connect(dbname='d24kbhq728f76j', user="bxpvpkkpythaka", 
                        password='c611ee94510abdaa439f4cb8e9eed39fa5144ad59f53963d8984d0009fa4ad92', host='ec2-34-246-227-219.eu-west-1.compute.amazonaws.com')
    cursor = conn.cursor()
    
    sql = ""
    val = ""
    
    if(table_name == "teams"):
        sql = f"INSERT into teams (id, team_name, team_region, logotipe) values(%s, %s, %s, %s)"
        val = str(fields_list[0]), str(fields_list[1]), str(fields_list[2]), str(fields_list[3])
    if(table_name == "team_mates"):
        sql = f"INSERT into team_mates (id, role_id, team_id, player_name, world_rank, approx_total_winnings) values(%s, %s, %s, %s, %s, %s)"
        val = str(fields_list[0]), str(fields_list[1]), str(fields_list[2]), str(fields_list[3]), str(fields_list[4]), str(fields_list[5])
    if(table_name == "teamate_roles"):
        sql = f"INSERT into teamate_roles (id, role_name) values(%s, %s)"
        val = str(fields_list[0]), str(fields_list[1])
    if(table_name == "arenas"):
        sql = f"INSERT into arenas (id, arena_name) values(%s, %s)"
        val = str(fields_list[0]), str(fields_list[1])
    if(table_name == "games"):
        sql = f"INSERT into games (id, team1_id, team2_id, arena_id, date_time) values(%s, %s, %s, %s, %s)"
        val = str(fields_list[0]), str(fields_list[1]), str(fields_list[2]), str(fields_list[3]), str(fields_list[4])
        
    cursor.execute(sql, val)
    conn.commit()

    cursor.close()
    conn.close()

