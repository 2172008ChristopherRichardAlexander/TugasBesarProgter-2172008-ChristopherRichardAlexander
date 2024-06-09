from sqlalchemy import Column, Integer, String
from apps import db


class Department(db.Model):
    __tablename__ = 'departments'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String, nullable=False)

    def json(self):
        return {
            'id': self.id,
            'name': self.name,
        }
