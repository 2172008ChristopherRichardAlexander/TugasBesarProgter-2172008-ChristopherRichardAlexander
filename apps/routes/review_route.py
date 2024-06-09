from flask import Blueprint, render_template, request, jsonify
from apps import db
from apps.models.review import Review


review_bp = Blueprint('review', __name__)

@review_bp.route('/review')
def review():
    return render_template('/kajian/index.html')

@review_bp.route('/reviews', methods=['GET'])
def get_all_reviews():
    reviews = Review.query.all()
    return jsonify([review.json() for review in reviews])

@review_bp.route('/reviews/<int:id>', methods=['GET'])
def get_review(id):
    review = Review.query.get_or_404(id)
    return jsonify(review.json())

@review_bp.route('/reviews', methods=['POST'])
def create_review():
    data = request.get_json()
    new_review = Review(
        member_id=data['member_id'],
        title=data['title'],
        desc=data['desc']
    )
    db.session.add(new_review)
    db.session.commit()
    return jsonify(new_review.json()), 201

@review_bp.route('/reviews/<int:id>', methods=['PUT'])
def update_review(id):
    data = request.get_json()
    review = Review.query.get_or_404(id)
    
    review.member_id = data.get('member_id', review.member_id)
    review.title = data.get('title', review.title)
    review.desc = data.get('desc', review.desc)

    db.session.commit()
    return jsonify(review.json())

@review_bp.route('/reviews/<int:id>', methods=['DELETE'])
def delete_review(id):
    review = Review.query.get_or_404(id)
    db.session.delete(review)
    db.session.commit()
    return '', 204