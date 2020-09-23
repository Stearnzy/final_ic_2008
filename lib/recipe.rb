class Recipe
  attr_reader :name,
              :ingredients_required,
              :ingredients,
              :total_calories

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
    @ingredients = []
    @total_calories = 0
  end

  def add_ingredient(ingredient, quantity)
    @ingredients_required[ingredient] += quantity

    if !@ingredients.include?(ingredient)
      @ingredients << ingredient
    end

    @total_calories += (ingredient.calories * quantity)
  end
end