class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def enough_ingredients_for?(recipe)
    ing_list_complete =recipe.ingredients.map do |ing|
      if self.stock_check(ing) < recipe.ingredients_required[ing]
        false
      elsif self.stock_check(ing) >= recipe.ingredients_required[ing]
        true
      end
    end
    if ing_list_complete.all?
      true
    else
      false
    end
  end
end