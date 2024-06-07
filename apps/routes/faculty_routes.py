from flask import Blueprint, request, jsonify
from apps.models.faculty import Faculty
from apps import db

faculty_bp = Blueprint('faculty', __name__)

@faculty_bp.route('/faculties', methods=['GET'])
def get_all_faculties():
    faculties = Faculty.query.all()
    return jsonify([faculty.json() for faculty in faculties])

@faculty_bp.route('/faculties/<int:id>', methods=['GET'])
def get_faculty(id):
    faculty = Faculty.query.get_or_404(id)
    return jsonify(faculty.json())

@faculty_bp.route('/faculties', methods=['POST'])
def create_faculty():
    data = request.get_json()
    new_faculty = Faculty(
        name=data['name']
    )
    db.session.add(new_faculty)
    db.session.commit()
    return jsonify(new_faculty.json()), 201

@faculty_bp.route('/faculties/<int:id>', methods=['PUT'])
def update_faculty(id):
    data = request.get_json()
    faculty = Faculty.query.get_or_404(id)
    
    faculty.name = data.get('name', faculty.name)

    db.session.commit()
    return jsonify(faculty.json())

@faculty_bp.route('/faculties/<int:id>', methods=['DELETE'])
def delete_faculty(id):
    faculty = Faculty.query.get_or_404(id)
    db.session.delete(faculty)
    db.session.commit()
    return '', 204
