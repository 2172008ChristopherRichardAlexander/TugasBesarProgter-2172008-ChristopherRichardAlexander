from werkzeug.utils import secure_filename
from apps import app
import os

def save_file(file, folder_name, upload_type):
    if file:
        if upload_type == 'register':
            base_folder = app.config['UPLOAD_FOLDER_REGISTER']
        elif upload_type == 'cover_activity':
            base_folder = app.config['UPLOAD_FOLDER_COVER_ACTIVITY']
        elif upload_type == 'cover_review':
            base_folder = app.config['UPLOAD_FOLDER_COVER_REVIEW']
        elif upload_type == 'file_review':
            base_folder = app.config['UPLOAD_FOLDER_FILE_REVIEW']
        else:
            raise ValueError("Invalid upload type specified")

        filename = secure_filename(file.filename)
        folder_path = os.path.join(base_folder, folder_name)
        os.makedirs(folder_path, exist_ok=True)
        file_path = os.path.join(folder_path, filename)
        file.save(file_path)
        return file_path.replace("\\", '/')
    return None

def delete_files(file_paths):
    for file_path in file_paths:
        if file_path and os.path.exists(file_path):
            os.remove(file_path)