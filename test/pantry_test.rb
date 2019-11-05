require 'minitest'
require 'minitest/autorun'
require_relative '../lib/pantry'

class PantryTest < Minitest::Test
  def setup
    @pantry = Pantry.new
    @cheese = Ingredient.new("Cheese", "C", 50)
    @mac = Ingredient.new("Macaroni", "oz", 200)
    @mac_and_cheese = Recipe.new("Mac and Cheese")
    @mac_and_cheese.add_ingredient(cheese, 2)
    @mac_and_cheese.add_ingredient(mac, 8)
  end

  def test_existence
    assert_instance_of Pantry, @pantry
  end   
end
