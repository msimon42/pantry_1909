require 'minitest'
require 'minitest/autorun'
require_relative '../lib/cookbook'
require_relative '../lib/pantry'
require_relative '../lib/ingredient'
require_relative '../lib/recipe'

class CookBookTest < Minitest::Test
  def setup
    @cookbook = CookBook.new
    @cheese = Ingredient.new("Cheese", "C", 100)
    @mac = Ingredient.new("Macaroni", "oz", 30)
    @mac_and_cheese = Recipe.new("Mac and Cheese")
    @mac_and_cheese.add_ingredient(@cheese, 2)
    @mac_and_cheese.add_ingredient(@mac, 8)
    @ground_beef = Ingredient.new("Ground Beef", "oz", 100)
    @bun = Ingredient.new("Bun", "g", 1)
    @burger = Recipe.new("Burger")
    @burger.add_ingredient(@ground_beef, 4)
    @burger.add_ingredient(@bun, 100)
  end
end     
