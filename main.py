import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return "Hello World"

@app.route('/secret/<secret>')
def get_secret(secret):
    return "The secret for " + secret + " is " + str(os.environ[secret])
