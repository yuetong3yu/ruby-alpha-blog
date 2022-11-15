require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test "Category should be valid" do
    @category = Category.new(name: 'hi')
    assert @category.valid?
  end

end