class User < ActiveRecord::Base
  acts_as :person

  has_secure_password

  validates :name, presence: true, length: { maximum: 50 }

  before_save { self.email = email.downcase }
  validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
  on: :create}, uniqueness: {case_sensitive: false}

  validates :password, presence: true, length: { minimum: 8 }

end
