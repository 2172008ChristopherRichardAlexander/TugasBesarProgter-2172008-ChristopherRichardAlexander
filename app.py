from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

# Data disimpan di memory menggunakan list
data = []

@app.route('/')
def index():
    return render_template('home.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)
