class UserDecorator < ApplicationDecorator
  def user
    object
  end

  def account
    "#{object.name}: #{object.status}"
  end
end
