class User < ApplicationRecord
  has_many :app_downloads, dependent: :destroy
  has_many :apps, through: :app_downloads

  def free_apps
    apps.where(price: nil)
  end

  def paid_apps
    apps.where.not(price: nil)
  end

end
