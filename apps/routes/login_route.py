from flask import Blueprint, render_template, request, redirect, url_for, session
from werkzeug.security import check_password_hash
from flask_login import login_user, LoginManager, login_required, logout_user, current_user
from apps.models.user import User
from apps import app

login_bp = Blueprint('login', __name__)

login_manager = LoginManager(app)
login_manager.init_app(app)
login_manager.login_view = 'login.view'

@login_bp.route('/login')
def view():
    return render_template('/auth/login.html')

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(user_id)

@login_bp.route('/login', methods=['GET', 'POST'])
def login():
    user = User.query.filter_by(email=request.form['email']).first()
    if user and check_password_hash(user.password, request.form['password']):
        login_user(user)
        return redirect(url_for('home.home'))
    else:
        return render_template('/auth/login.html', error='Invalid email or password')

@login_bp.route('/logout', methods=['GET', 'POST'])
@login_required
def logout():
    logout_user()
    return redirect(url_for('login.view'))

@login_bp.route('/home')
def home():
    if 'email' in session:
        return render_template('home.html', email=session['email'])
    return redirect(url_for('/auth/login.html'))