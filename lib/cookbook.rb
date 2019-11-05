require 'pry'
class CookBook
  attr_reader :recipes
  def initialize
    @recipes = Array.new
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def summary
    output = @recipes.map do |recipe|
      info = Hash.new
      info[:name] = recipe.name
      info[:details] = Hash.new
      info[:details][:ingredients] = recipe.ingredients_required.map do |ingredient|
        ing_info = Hash.new
        ing_info[:ingredient] = ingredient[0].name
        ing_info[:amount] = "#{ingredient[1].to_s} #{ingredient[0].unit}"
        ing_info
      end
      info[:details][:total_calories] = recipe.total_calories
      info
    end
    output
  end
end
