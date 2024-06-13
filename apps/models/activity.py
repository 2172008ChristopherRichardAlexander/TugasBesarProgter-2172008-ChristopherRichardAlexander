from sqlalchemy import Column, Integer, String, ForeignKey, Boolean
from apps import db



class Activity(db.Model):
    __tablename__ = 'activities'

    id = Column(Integer, primary_key=True, autoincrement=True)
    member_id = Column(Integer, ForeignKey('users.id'))
    title = Column(String, nullable=False)
    cover = Column(String, nullable=True)
    desc = Column(String, nullable=False)
    user = db.relationship('User', backref='activities')
    def json(self):
        return {
            'id': self.id,
            'member_id': self.member_id,
            'title': self.title,
            'desc': self.desc,
            'cover': self.cover
        }

