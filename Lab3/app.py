from flask import Flask, render_template, request
import sql

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/result', methods = ['POST', 'GET'])
def result():
    output = request.form.to_dict()
    name = output["id"]
    return render_template("index.html", name=sql.get_teams(name))

@app.route('/update', methods = ['POST', 'GET'])
def update():
    if request.method == "POST":
        output = request.form.to_dict()
        name = output["upd_team_name"]
        name1 = output["upd_team_region"]
        name2 = output["upd_logotipe"]
        return  render_template("update.html", name1 = sql.change_data(name, name1, name2))
    else:
        return render_template('update.html')

@app.route('/delete')
def delete():
    try:
        sql.delete()
    except:
        print("Deleting is not success")
    else:
        print("Deleting is success")
    finally:
        return render_template('index.html')

@app.route("/create", methods = ['POST', 'GET'])
def create():
    if request.method == "POST":
        output = request.form.to_dict()
        name1 = output["id"]
        name2 = output["team_name"]
        name3 = output["team_region"]
        name4 = output["logotipe"]
        return  render_template("create.html", id = sql.add(name1,name2,name3,name4))
    else:
        return render_template('create.html')


if __name__ == '__main__':
    app.run(debug=True)
