from flask import Blueprint, render_template, request, jsonify
from apps.models.activity import Activity
from apps import db

activity_bp = Blueprint('activity', __name__)

@activity_bp.route('/activity')
def activity():
    return render_template('/kegiatan/index.html')

@activity_bp.route('/activities', methods=['GET'])
def get_all_activities():
    activities = Activity.query.all()
    return jsonify([activity.json() for activity in activities])

@activity_bp.route('/activities/<int:id>', methods=['GET'])
def get_activity(id):
    activity = Activity.query.get_or_404(id)
    return jsonify(activity.json())

@activity_bp.route('/activities', methods=['POST'])
def create_activity():
    data = request.get_json()
    new_activity = Activity(
        member_id=data['member_id'],
        title=data['title'],
        desc=data['desc']
    )
    db.session.add(new_activity)
    db.session.commit()
    return jsonify(new_activity.json()), 201

@activity_bp.route('/activities/<int:id>', methods=['PUT'])
def update_activity(id):
    data = request.get_json()
    activity = Activity.query.get_or_404(id)
    
    activity.member_id = data.get('member_id', activity.member_id)
    activity.title = data.get('title', activity.title)
    activity.desc = data.get('desc', activity.desc)

    db.session.commit()
    return jsonify(activity.json())

@activity_bp.route('/activities/<int:id>', methods=['DELETE'])
def delete_activity(id):
    activity = Activity.query.get_or_404(id)
    db.session.delete(activity)
    db.session.commit()
    return '', 204