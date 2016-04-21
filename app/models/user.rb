class User < ActiveRecord::Base
  acts_as :person

  has_secure_password
end
