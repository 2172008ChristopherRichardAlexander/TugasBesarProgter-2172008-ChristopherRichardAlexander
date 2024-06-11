from flask import Blueprint, redirect, render_template, request, jsonify, url_for
from apps.models.faculty import Faculty
from apps import db

faculty_bp = Blueprint('faculty', __name__)

@faculty_bp.route('/faculties', methods=['GET'])
def get_all_faculties():
    faculties = Faculty.query.all()
    return render_template('/faculty/index.html', faculties=faculties)

@faculty_bp.route('/faculties/edit/<int:id>', methods=['GET'])
def get_faculty(id):
    faculty = Faculty.query.get_or_404(id)
    return render_template('/faculty/edit.html', faculty=faculty)

@faculty_bp.route('/faculties/create', methods=['GET'])
def create_view_departments():
    return render_template('/faculty/create.html')

@faculty_bp.route('/faculties/create', methods=['POST'])
def create_faculty():
    data = request.form
    new_faculty = Faculty(
        name=data['name']
    )
    db.session.add(new_faculty)
    db.session.commit()
    return redirect(url_for('faculty.get_all_faculties'))

@faculty_bp.route('/faculties/edit/<int:id>', methods=['POST'])
def update_faculty(id):
    data = request.form
    faculty = Faculty.query.get_or_404(id)
    faculty.name = data.get('name', faculty.name)
    db.session.commit()
    return redirect(url_for('faculty.get_all_faculties'))

@faculty_bp.route('/faculties/delete/<int:id>')
def delete_faculty(id):
    faculty = Faculty.query.get_or_404(id)
    db.session.delete(faculty)
    db.session.commit()
    return redirect(url_for('faculty.get_all_faculties'))
