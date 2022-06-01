from flask import Flask, render_template, request
import sql

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('change.html')

@app.route('/change', methods = ['POST', 'GET'])
def choose():
    global choosed_table
    output = request.form.to_dict()
    choosed_table = output["table"]
    return render_template("index.html", table_name = choosed_table)

@app.route('/result', methods = ['POST', 'GET'])
def result():
    output = request.form.to_dict()
    name = output["id"]
    return render_template("index.html",  table_name = choosed_table, name=sql.get_teams(name, choosed_table))

@app.route('/update', methods = ['POST', 'GET'])
def update():
    if request.method == "POST":
        fields = []
        output = request.form.to_dict()
        if choosed_table == "teams":
            fields.append(output["team_name"])
            fields.append(output["team_region"])
            fields.append(output["logotipe"])
        if choosed_table == "team_mates":
            fields.append(output["role_id"])
            fields.append(output["team_id"])
            fields.append(output["player_name"])
            fields.append(output["world_rank"])
            fields.append(output["approx_total_winnings"])
        if choosed_table == "teamate_roles":
            fields.append(output["role_name"])
        if choosed_table == "arenas":
            fields.append(output["arena_name"])
        if choosed_table == "games":
            fields.append(output["team1_id"])
            fields.append(output["team2_id"])
            fields.append(output["arena_id"])
            fields.append(output["date_time"])
        return  render_template("index.html",  table_name = choosed_table, name1 = sql.change_data(fields, choosed_table))
    else:
        return render_template('update.html',  table_name = choosed_table)

@app.route('/delete')
def delete():
    try:
        sql.delete(choosed_table)
    except:
        print("Deleting is not success")
    else:
        print("Deleting is success")
    finally:
        return render_template('index.html',  table_name = choosed_table)

@app.route("/create", methods = ['POST', 'GET'])
def create():
    if request.method == "POST":
        fields = []
        output = request.form.to_dict()
        if choosed_table == "teams":
            fields.append(output["id"])
            fields.append(output["team_name"])
            fields.append(output["team_region"])
            fields.append(output["logotipe"])
        if choosed_table == "team_mates":
            fields.append(output["id"])
            fields.append(output["role_id"])
            fields.append(output["team_id"])
            fields.append(output["player_name"])
            fields.append(output["world_rank"])
            fields.append(output["approx_total_winnings"])
        if choosed_table == "teamate_roles":
            fields.append(output["id"])
            fields.append(output["role_name"])
        if choosed_table == "arenas":
            fields.append(output["id"])
            fields.append(output["arena_name"])
        if choosed_table == "games":
            fields.append(output["id"])
            fields.append(output["team1_id"])
            fields.append(output["team2_id"])
            fields.append(output["arena_id"])
            fields.append(output["date_time"])
        return render_template("index.html",  table_name = choosed_table, id = sql.add(fields, choosed_table))
    else:
        return render_template('create.html',  table_name = choosed_table)

if __name__ == '__main__':
    app.run(debug=True)
