class Developer < User
  has_many :app_developers
  has_many :apps, through: :app_developers
end
