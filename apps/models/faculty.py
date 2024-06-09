from sqlalchemy import Column, Integer, String
from apps import db


class Faculty(db.Model):
    __tablename__ = 'faculties'

    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String, nullable=False)

    def json(self):
        return {
            'id': self.id,
            'name': self.name,

        }

