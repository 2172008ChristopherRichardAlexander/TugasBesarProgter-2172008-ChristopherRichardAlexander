from flask import Blueprint, render_template, request, jsonify
from apps.models.user import User
structure_bp = Blueprint('structure', __name__)

@structure_bp.route('/strucutre')
def structure():
    bphs = User.query.filter_by(department_id=1).all()
    sekres = User.query.filter_by(department_id=2).all()
    ksps = User.query.filter_by(department_id=3).all()
    iks = User.query.filter_by(department_id=4).all()
    pms = User.query.filter_by(department_id=5).all()
    kps = User.query.filter_by(department_id=6).all()
    sphs = User.query.filter_by(department_id=7).all()
    psdos = User.query.filter_by(department_id=8).all()
    mbs = User.query.filter_by(department_id=9).all()
    ps = User.query.filter_by(department_id=10).all()
    hlus = User.query.filter_by(department_id=11).all()
    return render_template('/struktur/index.html', bphs=bphs, sekres=sekres, ksps=ksps, iks=iks, pms=pms, kps=kps, sphs=sphs, psdos=psdos, mbs=mbs, ps=ps, hlus=hlus)