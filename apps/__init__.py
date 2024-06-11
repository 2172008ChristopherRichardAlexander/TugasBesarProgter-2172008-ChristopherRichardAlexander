from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.ext.declarative import declarative_base

db = SQLAlchemy()
Base = declarative_base()
app = Flask(__name__)
def create_app():
    app.config.from_object('config.Config')

    db.init_app(app)

    from apps.routes.home_route import home_bp
    from apps.routes.login_route import login_bp
    from apps.routes.register_route import register_bp
    from apps.routes.activity_route import activity_bp
    from apps.routes.review_route import review_bp
    from apps.routes.structure_route import structure_bp
    from apps.routes.faculty_routes import faculty_bp
    from apps.routes.department_route import department_bp
    from apps.routes.user_route import user_bp
    
    app.register_blueprint(home_bp)
    app.register_blueprint(login_bp)
    app.register_blueprint(register_bp)
    app.register_blueprint(activity_bp)
    app.register_blueprint(review_bp)
    app.register_blueprint(structure_bp)
    app.register_blueprint(faculty_bp)
    app.register_blueprint(department_bp)
    app.register_blueprint(user_bp)
    
    with app.app_context():
        db.create_all()
        

    return app
