#!/usr/bin/env python3
"""
Backend server.
"""
import time

from flask import Flask
from flask import send_from_directory




app = Flask(
    __name__
)



@app.route('/time')
def get_current_time():
    return {
        'time': time.time(),
        'status': 'failure',
        'version': 0.7
    }


# app.run(debug = True)