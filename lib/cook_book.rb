require 'date'

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

  def highest_calorie_meal
    @recipes.max_by do |recipe|
      recipe.total_calories
    end
  end

  def date
    Date.today.strftime("%m-%d-%Y")
  end

  def summary
    @recipes.map do |recipe|
      {:name => recipe.name, :details=> }
  end
end