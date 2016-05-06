require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Usuario Teste", email: "a@b.com", password: "testeteste",
    password_digest: "testeteste", gender:"Masculino", age: 21)
  end

  test "setup should be valid" do
    assert @user.valid?
  end

  test "new user should not be admin" do
    new_user = User.new()
    assert new_user.role_admin == false
  end

  test "new user should not have experience_points" do
    new_user = User.new()
    assert new_user.experience_points == 0
  end

  test "name should be present" do
    @user.name = " "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end


end
