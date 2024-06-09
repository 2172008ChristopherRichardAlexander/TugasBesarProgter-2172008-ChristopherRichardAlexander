from flask import Blueprint, request, jsonify
from apps.models.user import User
from apps import db

user_bp = Blueprint('user', __name__)

@user_bp.route('/users', methods=['GET'])
def get_all_users():
    users = User.query.all()
    return jsonify([user.json() for user in users])

@user_bp.route('/users/<int:id>', methods=['GET'])
def get_user(id):
    user = User.query.get_or_404(id)
    return jsonify(user.json())

@user_bp.route('/users', methods=['POST'])
def create_user():
    data = request.get_json()
    new_user = User(
        nrp=data['nrp'],
        name=data['name'],
        email=data['email'],
        password=data['password'],
        department_id=data.get('department_id'),
        faculty_id=data.get('faculty_id')
    )
    db.session.add(new_user)
    db.session.commit()
    return jsonify(new_user.json()), 201

@user_bp.route('/users/<int:id>', methods=['PUT'])
def update_user(id):
    data = request.get_json()
    user = User.query.get_or_404(id)
    
    user.nrp = data.get('nrp', user.nrp)
    user.name = data.get('name', user.name)
    user.email = data.get('email', user.email)
    user.password = data.get('password', user.password)
    user.department_id = data.get('department_id', user.department_id)
    user.faculty_id = data.get('faculty_id', user.faculty_id)

    db.session.commit()
    return jsonify(user.json())

@user_bp.route('/users/<int:id>', methods=['DELETE'])
def delete_user(id):
    user = User.query.get_or_404(id)
    db.session.delete(user)
    db.session.commit()
    return '', 204
