import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from apps.routes.home_route import home_bp
from apps.routes.login_route import login_bp
from apps.routes.register_route import register_bp
from apps.routes.activity_route import activity_bp
from apps.routes.review_route import review_bp
from apps.routes.structure_route import structure_bp
from apps.routes.faculty_routes import faculty_bp

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///bem-maranatha.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.secret_key = 'your_secret_key'

db = SQLAlchemy(app)
app.register_blueprint(home_bp)
app.register_blueprint(login_bp)
app.register_blueprint(register_bp)
app.register_blueprint(activity_bp)
app.register_blueprint(review_bp)
app.register_blueprint(structure_bp)
app.register_blueprint(faculty_bp)
if __name__ == '__main__':
    app.run(debug=True)
