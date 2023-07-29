class App < ApplicationRecord
  belongs_to :user
  has_many :reviewers, class_name: 'User', through: :reviews
  has_many :reviews
  has_many :app_categories
  has_many :categories, through: :app_categories

  def game_apps
    categories.where(name: 'Game').joins(:apps)
  end

  def top_game_apps
    game_apps.joins(:reviews).where(rating: [4..5])
  end

  def top_free_apps
    where(price: 0).joins(:reviews).where(rating: [4..5])
  end

  def top_paid_apps
    where.not(price: 0).joins(:reviews).where(rating: [4..5])
  end
end
