from flask import Flask, request, jsonify
import model.prediction as prediction

app = Flask(__name__)

@app.route('/predict', methods=['GET'])
def predict():
    query = request.args.get('query')
    res = prediction.process(query)
    return jsonify(result=res)

if __name__ == '__main__':
    app.run(debug=True)