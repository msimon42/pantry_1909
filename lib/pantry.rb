class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, amt)
    @stock[ingredient] += amt
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.each do |ing, amt|
      return false if self.stock_check(ing) < amt
    end
    true
  end

end
