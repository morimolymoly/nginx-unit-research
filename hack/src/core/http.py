from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "<h1>Hello World!</h1>"

def serve():
    app.run(host='0.0.0.0', port=2222)