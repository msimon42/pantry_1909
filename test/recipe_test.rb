require 'minitest'
require 'minitest/autorun'
require_relative '../lib/recipe'

class RecipeTest < Minitest::Test
  def setup
    @mac_and_cheese = Recipe.new
    @cheese = Ingredient.new("Cheese", "C", 100)
    @mac = Ingredient.new("Macaroni", "oz", 30)
  end    
