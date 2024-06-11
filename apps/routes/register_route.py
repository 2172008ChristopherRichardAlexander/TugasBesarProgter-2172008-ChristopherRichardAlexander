from flask import Blueprint, redirect, render_template, request, jsonify, url_for
from flask_login import login_required
from apps.models.faculty import Faculty
from apps.models.department import Department
from apps.models.recruitment import Recruitment
from apps.function.file_placement import delete_files, save_file
from apps import db


register_bp = Blueprint('register', __name__)
@register_bp.route('/register')
def register():
    faculties = Faculty.query.all()
    departments = Department.query.all()
    return render_template('/register/index.html', faculties=faculties, departments=departments)

@register_bp.route('/register_list')
@login_required
def register_view():
    recruitments = Recruitment.query.all()
    return render_template('/register/member.html',recruitments=recruitments)


@register_bp.route('/recruitments', methods=['GET'])
def get_all_recruitments():
    recruitments = Recruitment.query.all()
    return jsonify([recruitment.json() for recruitment in recruitments])

@register_bp.route('/recruitments/<int:id>', methods=['GET'])
def get_recruitment(id):
    recruitment = Recruitment.query.get_or_404(id)
    return jsonify(recruitment.json())

@register_bp.route('/recruitments', methods=['POST'])
def create_recruitment():
    data = request.form
    files = request.files
    nrp = data['nrp']

    new_recruitment = Recruitment(
        nrp=data['nrp'],
        name=data['name'],
        email=data['email'],
        telephone=data['telephone'],
        birthdate=data['birthdate'],
        gender=data['gender'],
        faculty_id=data['faculty_id'],
        angkatan=data['angkatan'],
        transkrip=save_file(files.get('transkrip'), nrp, 'register'),
        osjur=save_file(files.get('osjur'), nrp, 'register'),
        wiratha=save_file(files.get('wiratha'), nrp, 'register'),
        cv=save_file(files.get('cv'), nrp, 'register'),
        porto=save_file(files.get('porto'), nrp, 'register'),
        rekomKetua=save_file(files.get('rekomKetua'), nrp, 'register'),
        status=False,
        department_id=data['department_id'],
        alasan=data['alasan']
    )
    db.session.add(new_recruitment)
    db.session.commit()
    return render_template('/register/end.html')

@register_bp.route('/recruitments/<int:id>', methods=['POST'])
def update_recruitment(id):
    data = request.form
    recruitment = Recruitment.query.get_or_404(id)
    recruitment.status = True
    db.session.commit()
    return redirect(url_for('register.register_view'))

@register_bp.route('/recruitments/<int:id>', methods=['DELETE'])
def delete_recruitment(id):
    recruitment = Recruitment.query.get_or_404(id)
    file_paths = [
        recruitment.transkrip,
        recruitment.osjur,
        recruitment.wiratha,
        recruitment.cv,
        recruitment.porto,
        recruitment.rekomKetua
    ]
    
    # Delete the files
    delete_files(file_paths)
    db.session.delete(recruitment)
    db.session.commit()
    return '', 204