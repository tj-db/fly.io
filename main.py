from flask import Flask
import time

app = Flask(__name__)

@app.route('/')
def hello_world():
    return f"Hello, Fly.io! The time is: {time.strftime('%Y-%m-%d %H:%M:%S', time.gmtime())}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
