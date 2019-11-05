require 'minitest'
require 'minitest/autorun'
require_relative '../lib/ingredient'

class IngredientTest < Minitest::Test
  def setup
    @cheese = Ingredient.new('Cheese', 'oz', 50)
  end   

end
