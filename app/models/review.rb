class Review < ApplicationRecord
  belongs_to :user
  belongs_to :app

  scope :positive, -> { where(rating: 4..5) }
  scope :negative, -> { where(rating: 1...4) }
  scope :has_comment, -> { where.not(comment: '') }
end
