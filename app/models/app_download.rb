class AppDownload < ApplicationRecord
  belongs_to :app
  belongs_to :user
  belongs_to :device
end
