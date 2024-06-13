from flask import Blueprint, redirect, render_template, request, jsonify, url_for
from flask_login import login_required
from apps.function.file_placement import delete_files, save_file
from apps.models.activity import Activity
from apps import db

activity_bp = Blueprint('activity', __name__)

@activity_bp.route('/activity')
def activity():
    activities = Activity.query.all()
    return render_template('/activity/index.html', activities=activities)

@login_required
@activity_bp.route('/activities/create')
def create_activity_view():
    return render_template('/activity/create.html')

@activity_bp.route('/activities', methods=['GET'])
def get_all_activities():
    activities = Activity.query.all()
    return jsonify([activity.json() for activity in activities])

@activity_bp.route('/activities/<int:id>', methods=['GET'])
def get_activity(id):
    activity = Activity.query.get_or_404(id)
    return render_template('/activity/edit.html', activity=activity)

@login_required
@activity_bp.route('/activities/create', methods=['POST'])
def create_activity():
    data = request.form
    files = request.files
    file_name = data['title']
    new_activity = Activity(
        member_id=data['member_id'],
        title=data['title'],
        cover = save_file(files.get('cover'), file_name, 'cover_activity'),
        desc=data['desc']
    )
    db.session.add(new_activity)
    db.session.commit()
    return redirect(url_for('activity.activity'))

@login_required
@activity_bp.route('/activities/<int:id>', methods=['POST'])
def update_activity(id):
    data = request.form
    files = request.files
    activity = Activity.query.get_or_404(id)
    activity.title = data.get('title', activity.title)
    file_name = activity.title
    if files.get('cover'):
        if activity.cover:
            delete_files([activity.cover])
        activity.cover = save_file(files.get('cover'), file_name, 'cover_activity')
    activity.desc = data.get('desc', activity.desc)
    db.session.commit()
    return redirect(url_for('activity.activity'))

@login_required
@activity_bp.route('/activities/delete/<int:id>')
def delete_activity(id):
    activity = Activity.query.get_or_404(id)
    file_paths = [activity.cover]
    delete_files(file_paths)
    db.session.delete(activity)
    db.session.commit()
    return redirect(url_for('activity.activity'))