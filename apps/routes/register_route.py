from flask import Blueprint, render_template, request, jsonify

register_bp = Blueprint('register', __name__)

@register_bp.route('/register')
def register():
    return render_template('/pendaftaran/index.html')