class Reviewer < User
  has_many :reviews
  has_many :apps, through: :reviews


  def positive_reviews
    reviews.positive
  end

  def negative_reviews
    reviews.negative
  end

  def reviews_with_comments
    reviews.has_comment
  end
end
