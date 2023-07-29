class Device < ApplicationRecord
  has_many :app_devices
  has_many :apps, through: :app_devices
end
