require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Usuario Teste", email: "a@b.com", password: "testeteste",
    password_digest: "testeteste", gender:"Masculino", age: 21, role_admin: false, experience_points: 0)
  end

  test "setup should be valid" do
    assert @user.valid?
  end

  


end
