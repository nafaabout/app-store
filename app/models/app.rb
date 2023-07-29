class App < ApplicationRecord
  belongs_to :user
  has_many :reviewers, class: 'User', through: :reviews
  has_many :reviews
  has_many :app_categories
  has_many :categories, through: :app_categories

end
