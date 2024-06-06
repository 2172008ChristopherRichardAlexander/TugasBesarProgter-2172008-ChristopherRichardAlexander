from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from apps.routes.home_route import home_bp
from apps.routes.login_route import login_bp
from apps.routes.register_route import register_bp

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///bem-maranatha.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.secret_key = 'your_secret_key'

db = SQLAlchemy(app)

# Initialize database
with app.app_context():
    db.create_all()

# Register Blueprints
app.register_blueprint(home_bp)
app.register_blueprint(login_bp)
app.register_blueprint(register_bp)
if __name__ == '__main__':
    app.run(debug=True)
