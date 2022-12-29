from flask import Flask, request, jsonify
import model.prediction as prediction

app = Flask(__name__)

@app.route('/predict', methods=['GET'])
def predict():
    age = request.args.get('age')
    sex = request.args.get('sex')
    trestbps = request.args.get('trestbps')
    chol = request.args.get('chol')
    fbs = request.args.get('fbs')

    res = prediction.predict(age=age, sex=sex, trestbps=trestbps, chol=chol, fbs=fbs)
    return jsonify(result=res)

if __name__ == '__main__':
    app.run(debug=True)