 #All information I found in Youtube and Stack overflow
from flask import Flask

app = Flask(__name__)

@app.route('/', defaults={'path': ''}) #ChatGPT
@app.route('/<path:path>')  #ChatGPT
def hello(path):
    return "Hello Yarowa AG!!!"


if __name__ == "__main__":
    app.run(host = "0.0.0.0", port = 5000)