from sqlalchemy import Column, Integer, String, ForeignKey, Boolean
from apps import db
from flask_login import UserMixin

class User(db.Model, UserMixin):
    __tablename__ = 'users'

    id = Column(Integer, primary_key=True, autoincrement=True)
    nrp = Column(Integer, nullable=False, unique=True)
    name = Column(String, nullable=False)
    email = Column(String, nullable=False, unique=True)
    password = Column(String, nullable=False)
    is_admin = Column(Boolean, default=False)
    department_id = Column(Integer, ForeignKey('departments.id'))
    faculty_id = Column(Integer, ForeignKey('faculties.id'))
    department = db.relationship('Department', backref='users')
    faculty = db.relationship('Faculty', backref='users')
    def json(self):
        return {
            'id': self.id,
            'nrp': self.nrp,
            'name': self.name,
            'email': self.email,
            'password':  self.password,
            'is_admin': self.is_admin,
            'department_id': self.department_id,
            'faculty_id': self.faculty_id
        }
    
    

