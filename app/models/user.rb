class User < ApplicationRecord
  has_many :apps
  has_many :reviews
end
