class User < ApplicationRecord
  has_many :app_downloads, dependent: :destroy
  has_many :apps, through: :app_downloads
  enum status: [:active, :away]

  def self.free_apps
    apps.where(price: nil)
  end

  def self.paid_apps
    apps.where.not(price: nil)
  end

end
