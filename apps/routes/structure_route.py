from flask import Blueprint, render_template, request, jsonify

structure_bp = Blueprint('structure', __name__)

@structure_bp.route('/strucutre')
def structure():
    return render_template('/struktur/index.html')