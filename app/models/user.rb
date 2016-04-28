class User < ActiveRecord::Base
  acts_as :person

  has_secure_password

  validates :name, presence: true, length: { maximum: 50 }

  before_save { self.email = email.downcase }
  validates :email, presence: true

  validates :password, presence: true, length: { minimum: 6 }

end
