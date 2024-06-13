from flask import Blueprint, redirect, render_template, request, jsonify, url_for
from flask_login import login_required
from apps.models.department import Department
from apps import db

department_bp = Blueprint('department', __name__)

@department_bp.route('/departments', methods=['GET'])
def get_all_departments():
    departments = Department.query.all()
    return render_template('/department/index.html', departments=departments)

@login_required
@department_bp.route('/departments/edit/<int:id>', methods=['GET'])
def get_department(id):
    department = Department.query.get_or_404(id)
    return render_template('/department/edit.html', department=department)

@login_required
@department_bp.route('/departments/create', methods=['GET'])
def create_view_departments():
    return render_template('/department/create.html')

@login_required
@department_bp.route('/departments/create', methods=['POST'])
def create_department():
    data = request.form
    new_department = Department(
        name=data['name']
    )
    db.session.add(new_department)
    db.session.commit()
    return redirect(url_for('department.get_all_departments'))

@login_required
@department_bp.route('/departments/edit/<int:id>', methods=['POST'])
def update_department(id):
    data = request.form
    department = Department.query.get_or_404(id)
    department.name = data.get('name', department.name)
    db.session.commit()
    return redirect(url_for('department.get_all_departments'))

@login_required
@department_bp.route('/departments/delete/<int:id>')
def delete_department(id):
    department = Department.query.get_or_404(id)
    db.session.delete(department)
    db.session.commit()
    return redirect(url_for('department.get_all_departments'))
