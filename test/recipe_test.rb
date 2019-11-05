require 'minitest'
require 'minitest/autorun'
require_relative '../lib/recipe'
require_relative '../lib/ingredient'

class RecipeTest < Minitest::Test
  def setup
    @mac_and_cheese = Recipe.new('Mac and Cheese')
    @cheese = Ingredient.new("Cheese", "C", 100)
    @mac = Ingredient.new("Macaroni", "oz", 30)
  end

  def test_existence
    assert_instance_of Recipe, @mac_and_cheese
  end

  def test_name
    assert_equal 'Mac and Cheese', @mac_and_cheese.name
  end

  def test_ingredients_required
    assert_equal ({}), @mac_and_cheese.ingredients_required
  end
end
