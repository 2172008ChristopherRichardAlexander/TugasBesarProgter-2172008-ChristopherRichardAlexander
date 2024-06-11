from sqlalchemy import Column, Integer, String, ForeignKey, Boolean
from sqlalchemy.ext.declarative import declarative_base
from apps import db


class Review(db.Model):
    __tablename__ = 'reviews'

    id = Column(Integer, primary_key=True, autoincrement=True)
    member_id = Column(Integer, ForeignKey('users.id'))
    title = Column(String, nullable=False)
    cover = Column(String, nullable=True)
    file = Column(String, nullable=False, unique=True)
    user = db.relationship('User', backref='reviews')
    def json(self):
        return {
            'id': self.id,
            'member_id': self.member_id,
            'title': self.title,
            'file': self.file,
            'cover': self.cover
        }

