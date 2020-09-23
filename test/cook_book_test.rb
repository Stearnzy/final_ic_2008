require "minitest/autorun"
require "minitest/pride"
require "./lib/recipe"
require "./lib/cook_book"

class CookBookTest < Minitest::Test
  def test_it_exists
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
  end

  def test_cookbook_starts_empty
    cookbook = CookBook.new
    assert_equal [], cookbook.recipes
  end
end