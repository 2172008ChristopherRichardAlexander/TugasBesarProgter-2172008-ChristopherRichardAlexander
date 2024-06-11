from sqlalchemy import Column, Integer, String, ForeignKey, Boolean
from apps import db
from sqlalchemy.orm import relationship

class Recruitment(db.Model):
    __tablename__ = 'recruitments'

    id = Column(Integer, primary_key=True, autoincrement=True)
    nrp = Column(String(255), nullable=False, unique=True)
    name = Column(String(255), nullable=False)
    email = Column(String(255), nullable=False, unique=True)
    telephone = Column(String(255), nullable=False)
    birthdate = Column(String(255), nullable=False)
    gender = Column(String(255), nullable=False)
    faculty_id = Column(Integer, ForeignKey('faculties.id'), nullable=False)
    angkatan = Column(String(255), nullable=False)
    transkrip = Column(String(255), nullable=False)
    osjur = Column(String(255), nullable=False)
    wiratha = Column(String(255), nullable=False)
    cv = Column(String(255), nullable=False)
    porto = Column(String(255), nullable=False)
    rekomKetua = Column(String(255), nullable=False)
    status = Column(Boolean, nullable=False, default=False)
    department_id = Column(Integer, ForeignKey('departments.id'), nullable=False)
    alasan = Column(String(255), nullable=False)
    department = db.relationship('Department', backref='recruitments')
    faculty = db.relationship('Faculty', backref='recruitments')

    def json(self):
        return {
            'id': self.id,
            'nrp': self.nrp,
            'name': self.name,
            'email': self.email,
            'telephone': self.telephone,
            'birthdate': self.birthdate,
            'gender': self.gender,
            'faculty_id': self.faculty_id,
            'angkatan': self.angkatan,
            'transkrip': self.transkrip,
            'osjur': self.osjur,
            'wiratha': self.wiratha,
            'cv': self.cv,
            'porto': self.porto,
            'rekomKetua': self.rekomKetua,
            'status': self.status,
            'department_id': self.department_id,
            'alasan': self.alasan,
        }
