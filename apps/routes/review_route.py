from flask import Blueprint, render_template, request, jsonify

review_bp = Blueprint('review', __name__)

@review_bp.route('/review')
def review():
    return render_template('/kajian/index.html')