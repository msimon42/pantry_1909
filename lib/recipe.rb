class Recipe
  attr_reader :name
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new
  end

end
