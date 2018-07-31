from flask import Flask, jsonify, request
from flask_cors import CORS
app = Flask(__name__)
CORS(app)


@app.route('/', methods = ['GET'])
def hello():
    return "Hello World!"

@app.route('/', methods = ['POST'])
def parse_post():   
    s = request.data.decode("utf-8")
    response = {'updated':s}
    return jsonify(response)

@app.route('/', methods = ['DELETE'])
def parse_delete():   
    s = request.data.decode("utf-8")
    response = {'deleted':s}
    return jsonify(response)

@app.route('/', methods = ['PUT'])
def parse_put():   
    s = request.data.decode("utf-8")
    response = {'created':s}
    return jsonify(response)
