class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    ingredient_list = @recipes.map do |recipe|
      recipe.ingredients
    end.flatten

    ingredient_list.map do |ingredient|
      ingredient.name
    end.uniq
  end
end