from flask import Blueprint, render_template
# from app.controllers.home_controller import get_home_data, add_item, remove_item

login_bp = Blueprint('login', __name__)

@login_bp.route('/login')
def login():
    return render_template('/auth/login.html')