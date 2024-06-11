import os

class Config:
    SECRET_KEY = os.urandom(24)
    SQLALCHEMY_DATABASE_URI = 'sqlite:///bem-maranatha.db'
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    DEBUG = True
    MAX_CONTENT_LENGTH = 16 * 1024 * 1024
    
    BASE_UPLOAD_FOLDER = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'uploads')
    UPLOAD_FOLDER_REGISTER = os.path.join(BASE_UPLOAD_FOLDER, 'register')
    UPLOAD_FOLDER_COVER_ACTIVITY = os.path.join(BASE_UPLOAD_FOLDER, 'cover_activity')
    UPLOAD_FOLDER_COVER_REVIEW = os.path.join(BASE_UPLOAD_FOLDER, 'cover_review')
    UPLOAD_FOLDER_FILE_REVIEW = os.path.join(BASE_UPLOAD_FOLDER, 'file_review')

    os.makedirs(UPLOAD_FOLDER_REGISTER, exist_ok=True)
    os.makedirs(UPLOAD_FOLDER_COVER_ACTIVITY, exist_ok=True)
    os.makedirs(UPLOAD_FOLDER_COVER_REVIEW, exist_ok=True)
    os.makedirs(UPLOAD_FOLDER_FILE_REVIEW, exist_ok=True)
