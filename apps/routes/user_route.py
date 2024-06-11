from flask import Blueprint, redirect, render_template, request, jsonify, url_for
from apps.models.department import Department
from apps.models.faculty import Faculty
from apps.models.user import User
from apps import db
from werkzeug.security import generate_password_hash

user_bp = Blueprint('user', __name__)

@user_bp.route('/users', methods=['GET'])
def get_all_users():
    users = User.query.all()
    return render_template('/user/index.html', users=users)

@user_bp.route('/users/edit/<int:id>', methods=['GET'])
def get_user(id):
    user = User.query.get_or_404(id)
    faculties = Faculty.query.all()
    departments = Department.query.all()
    return render_template('/user/edit.html', user=user, faculties=faculties, departments=departments)

@user_bp.route('/users/create', methods=['GET'])
def create_view_departments():
    faculties = Faculty.query.all()
    departments = Department.query.all()
    return render_template('/user/create.html', faculties=faculties, departments=departments)

@user_bp.route('/users/create', methods=['POST'])
def create_user():
    data = request.form
    hashed_password = generate_password_hash(data['password'])
    new_user = User(
        nrp=data['nrp'],
        name=data['name'],
        email=data['email'],
        password=hashed_password,
        department_id=data.get('department_id'),
        faculty_id=data.get('faculty_id')
    )
    db.session.add(new_user)
    db.session.commit()
    return redirect(url_for('user.get_all_users'))

@user_bp.route('/users/edit/<int:id>', methods=['POST'])
def update_user(id):
    data = request.form
    user = User.query.get_or_404(id)
    user.nrp = data.get('nrp', user.nrp)
    user.name = data.get('name', user.name)
    user.email = data.get('email', user.email)
    new_password = data.get('password')
    is_admin_str = data.get('is_admin', 'false')
    user.is_admin = is_admin_str.lower() == 'true' 
    if new_password:
        hashed_password = generate_password_hash(new_password) 
        user.password = hashed_password  
    user.department_id = data.get('department_id', user.department_id)
    user.faculty_id = data.get('faculty_id', user.faculty_id)
    db.session.commit()
    return redirect(url_for('user.get_all_users'))

@user_bp.route('/users/delete/<int:id>')
def delete_user(id):
    user = User.query.get_or_404(id)
    db.session.delete(user)
    db.session.commit()
    return redirect(url_for('user.get_all_users'))
