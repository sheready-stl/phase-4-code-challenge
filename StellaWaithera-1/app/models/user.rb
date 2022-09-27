class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, through: :reviews

  def favorite_product
    self.reviews.order("star_rating DESC").first.product
  end

  def remove_reviews(product)
    self.products.delete(product)
  end
end
