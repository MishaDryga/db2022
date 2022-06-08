from flask import Flask, render_template, request
import sql

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('change.html')


@app.route('/change', methods = ['POST', 'GET'])
def choose():
    global chosen_tbl
    output = request.form.to_dict()
    chosen_tbl = output["table"]
    return render_template("index.html", table_name = chosen_tbl)


@app.route('/result', methods = ['POST', 'GET'])
def result():
    output = request.form.to_dict()
    name = output["id"]
    return render_template("index.html",  table_name = chosen_tbl, name=sql.get_racer(name, chosen_tbl))


@app.route('/update', methods = ['POST', 'GET'])
def update():
    if request.method == "POST":
        data = []
        output = request.form.to_dict()

        if chosen_tbl == "racer":
            data.append(output["name"])
            data.append(output["last_name"])
            data.append(output["racing_id"])
            data.append(output["team"])

        if chosen_tbl == "model":
            data.append(output["model"])
            data.append(output["brend"])
            data.append(output["color"])

        if chosen_tbl == "cars":
            data.append(output["model_id"])
            data.append(output["cars_number"])
            data.append(output["involved"])

        if chosen_tbl == "contract":
            data.append(output["cars_id"])
            data.append(output["date_contract"])
            data.append(output["date_end"])
            data.append(output["racer_id"])
            data.append(output["subscription"])
            data.append(output["prize"])
            

        if chosen_tbl == "accidens":
            data.append(output["break_down"])
            data.append(output["result"])

        return  render_template("index.html",  table_name = chosen_tbl, name1 = sql.change_data(data, chosen_tbl))
    else:
        return render_template('update.html',  table_name = chosen_tbl)

@app.route('/delete')
def delete():
    try:
        sql.delete(chosen_tbl)
    except:
        print("Removal not performed")
    else:
        print("Delete completed")
    finally:
        return render_template('index.html',  table_name = chosen_tbl)


@app.route("/create", methods = ['POST', 'GET'])
def create():
    if request.method == "POST":
        data = []
        output = request.form.to_dict()
        
        if chosen_tbl == "racer":
            data.append(output["id"])
            data.append(output["name"])
            data.append(output["last_name"])
            data.append(output["racing_id"])
            data.append(output["team"])

        if chosen_tbl == "model":
            data.append(output["id"])
            data.append(output["model"])
            data.append(output["brend"])
            data.append(output["color"])

        if chosen_tbl == "cars":
            data.append(output["id"])
            data.append(output["model_id"])
            data.append(output["cars_number"])
            data.append(output["involved"])

        if chosen_tbl == "contract":
            data.append(output["id"])
            data.append(output["cars_id"])
            data.append(output["date_contract"])
            data.append(output["date_end"])
            data.append(output["racer_id"])
            data.append(output["subscription"])
            data.append(output["prize"])

        if chosen_tbl == "accidens":
            data.append(output["contract_id"])
            data.append(output["break_down"])
            data.append(output["result"])

        return render_template("index.html",  table_name = chosen_tbl, id = sql.add(data, chosen_tbl))
    else:
        return render_template('create.html',  table_name = chosen_tbl)

if __name__ == '__main__':
    app.run(debug=True)