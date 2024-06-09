from sqlalchemy import Column, Integer, String, ForeignKey, Boolean
from apps import db


class User(db.Model):
    __tablename__ = 'users'

    id = Column(Integer, primary_key=True, autoincrement=True)
    nrp = Column(Integer, nullable=False, unique=True)
    name = Column(String, nullable=False)
    email = Column(String, nullable=False, unique=True)
    password = Column(String, nullable=False)
    status = Column(Boolean, default=0)
    department_id = Column(Integer, ForeignKey('departments.id'))
    faculty_id = Column(Integer, ForeignKey('faculties.id'))

    def json(self):
        return {
            'id': self.id,
            'nrp': self.nrp,
            'name': self.name,
            'email': self.email,
            'password':  self.password,
            'department_id': self.department_id,
            'faculty_id': self.faculty_id
        }
    
    

