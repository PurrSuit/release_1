require 'test_helper'

class DeputyTest < ActiveSupport::TestCase

  def setup
    @deputy = Deputy.new(name: "Deputado Teste",registration: 12345,
     legislation_situation: "teste", gender:"Masculino", age: 45)
  end

  test "setup should be valid" do
    assert @deputy.valid?
  end




end
