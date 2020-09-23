class Recipe
  attr_reader :name, :ingredients_required, :ingredients

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
    @ingredients = []
  end

  def add_ingredient(ingredient, quantity)
    @ingredients_required[ingredient] += quantity
    if !@ingredients.include?(ingredient)
      @ingredients << ingredient
    end
  end
end