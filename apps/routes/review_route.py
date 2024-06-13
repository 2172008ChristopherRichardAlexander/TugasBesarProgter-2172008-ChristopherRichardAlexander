from flask import Blueprint, render_template, request, jsonify, redirect, url_for
from flask_login import login_required
from apps import db
from apps.models.review import Review
from apps.function.file_placement import save_file, delete_files

review_bp = Blueprint('review', __name__)

@review_bp.route('/review')
def review():
    reviews = Review.query.all()
    return render_template('/review/index.html', reviews=reviews)

@login_required
@review_bp.route('/review/create', methods=['GET'])
def create_review_page():
    return render_template('/review/create.html')

@review_bp.route('/reviews', methods=['GET'])
def get_all_reviews():
    reviews = Review.query.all()
    return jsonify([review.json() for review in reviews])

@login_required
@review_bp.route('/reviews/edit/<int:id>', methods=['GET'])
def get_review(id):
    review = Review.query.get_or_404(id)
    return render_template('/review/edit.html', review=review)

@login_required
@review_bp.route('/review/create', methods=['POST'])
def create_review():
    data = request.form
    files = request.files
    file_name = data['title']
    new_review = Review(
        member_id = data['member_id'],
        title = data['title'],
        file = save_file(files.get('file'), file_name, 'file_review'),
        cover = save_file(files.get('cover'), file_name, 'cover_review')
    )
    db.session.add(new_review)
    db.session.commit()
    return redirect(url_for('review.review'))

@login_required
@review_bp.route('/reviews/edit/<int:id>', methods=['POST'])
def update_review(id):
    review = Review.query.get_or_404(id)
    data = request.form
    files = request.files
    review.title = data['title']
    file_name = review.title
    if files.get('file'):
        if review.file:
            delete_files([review.file])
            delete_files([review.cover])
        review.file = save_file(files.get('file'),file_name,'file_review')
        review.cover = save_file(files.get('cover'), file_name, 'cover_review')

    db.session.commit()
    return redirect(url_for('review.review'))

@login_required
@review_bp.route('/reviews/delete/<int:id>')
def delete_review(id):
    review = Review.query.get_or_404(id)
    file_paths = [review.file]
    delete_files(file_paths)
    file_paths = [review.cover]
    delete_files(file_paths)
    db.session.delete(review)
    db.session.commit()
    return redirect(url_for('review.review'))