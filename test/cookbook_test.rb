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

  def test_existence
    assert_instance_of CookBook, @cookbook
  end

  def test_recipes
    assert_equal [], @cookbook.recipes
  end

  def test_add_recipes
    @cookbook.add_recipe(@burger)
    @cookbook.add_recipe(@mac_and_cheese)

    assert_equal [@burger, @mac_and_cheese], @cookbook.recipes
  end

  def test_summary
    @cookbook.add_recipe(@burger)
    @cookbook.add_recipe(@mac_and_cheese)

    output = [
      {:name => 'Burger', :details => {:ingredients=>[{:ingredient=>"Ground Beef", :amount=>"4 oz"}, {:ingredient=>"Bun", :amount=>"100 g"}], :total_calories=>500}},
      {:name=>"Mac and Cheese", :details=>{:ingredients=>[{:ingredient=>"Cheese", :amount=>"2 C"}, {:ingredient=>"Macaroni", :amount=>"8 oz"}], :total_calories=>440}}
    ]

    assert_equal output, @cookbook.summary
  end
end
