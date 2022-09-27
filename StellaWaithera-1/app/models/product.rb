class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def leave_review(user, star_rating, comment)
    Review.create(product: self, user: user, star_rating: star_rating, comment: comment)
  end

  def print_reviews
    self.reviews.each do |review|
      puts review.print_review
    end
  end

  def average_rating
    self.reviews.average(:star_rating).to_f
  end
end
