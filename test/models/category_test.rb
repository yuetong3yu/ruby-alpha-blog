require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup 
    @category = Category.new(name: 'Sports')
  end

  test "Category should be valid" do
    assert @category.valid?
  end

  test "Category name should be valid" do
    assert @category.name === 'Sports' 
  end

  test "Category should have valid name" do
    @category = Category.new(name: "    ")
    assert_not @category.valid?
  end

  test "Category name should be unique" do
    @category.save
    @category2 = Category.new(name: "Sports")
    assert_not @category2.valid? 
  end

end