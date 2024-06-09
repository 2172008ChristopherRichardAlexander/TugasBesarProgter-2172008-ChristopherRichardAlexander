from flask import Blueprint, request, jsonify
from apps.models.department import Department
from apps import db

department_bp = Blueprint('department', __name__)

@department_bp.route('/departments', methods=['GET'])
def get_all_departments():
    departments = Department.query.all()
    return jsonify([department.json() for department in departments])

@department_bp.route('/departments/<int:id>', methods=['GET'])
def get_department(id):
    department = Department.query.get_or_404(id)
    return jsonify(department.json())

@department_bp.route('/departments', methods=['POST'])
def create_department():
    data = request.get_json()
    new_department = Department(
        name=data['name']
    )
    db.session.add(new_department)
    db.session.commit()
    return jsonify(new_department.json()), 201

@department_bp.route('/departments/<int:id>', methods=['PUT'])
def update_department(id):
    data = request.get_json()
    department = Department.query.get_or_404(id)
    
    department.name = data.get('name', department.name)

    db.session.commit()
    return jsonify(department.json())

@department_bp.route('/departments/<int:id>', methods=['DELETE'])
def delete_department(id):
    department = Department.query.get_or_404(id)
    db.session.delete(department)
    db.session.commit()
    return '', 204
