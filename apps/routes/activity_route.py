from flask import Blueprint, render_template, request, jsonify

activity_bp = Blueprint('activity', __name__)

@activity_bp.route('/activity')
def activity():
    return render_template('/kegiatan/index.html')