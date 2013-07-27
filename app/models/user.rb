class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def make_admin!
    self.update_attribute(:admin, true)
  end

  def admin?
    admin
  end
end
