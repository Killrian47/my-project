require "test_helper"

class CatTest < ActiveSupport::TestCase
  test "should save cat with empty fields" do
    cat = Cat.new(name: "Kitty", picture: "kitty.jpg", origin: "France", temperament: "Energetic", description: "It's a kitty")
    assert cat.save, "Did not save the cat with empty fields"
  end

  # Test for cat name #
  test "should not save cat without name" do
    cat = Cat.new
    assert_not cat.save, "Saved the cat without a name"
  end

  test "should not save cat with empty name" do
    cat = Cat.new(name: "")
    assert_not cat.save, "Saved the cat with an empty name"
  end

  test "should not save cat with nil nae" do
    cat = Cat.new(name: nil)
    assert_not cat.save, "Saved the cat with a nil name"
  end
  # End of test for cat name #

  # Test for cat picture #
  test "should not save cat whithout picture" do
    cat = Cat.new(name: "Kitty")
    assert_not cat.save, "Saved the cat without a picture"
  end

  test "should not save cat with empty picture" do
    cat = Cat.new(name: "Kitty", picture: "")
    assert_not cat.save, "Saved the cat with an empty picture"
  end

  test "should not cat with nil picture" do
    cat = Cat.new(name: "Kitty", picture: nil)
    assert_not cat.save, "Saved cat with a nil picture"
  end
  # End of test for cat picture #

  # Test for cat origin #
  test "should not save cat without origin" do
    cat = Cat.new(name: "Kitty", picture: "kitty.jpg")
    assert_not cat.save, "Saved the cat without an origin"
  end

  test "should not save cat with empty origin" do
    cat = Cat.new(name: "Kitty", picture: "kitty.jpg", origin: "")
    assert_not cat.save, "Saved the cat with an epmpty origin"
  end

  test "should not save cat with nil origin" do
    cat = Cat.new(name: "Kitty", picture: "kitty.jpg", origin: nil)
    assert_not cat.save, "Saved the cat with a nil origin"
  end
  # End of test for cat origin #

  # Test for cat temperament #
  test "should not save cat without temperament" do
    cat = Cat.new(name: "Kitty", picture: "kitty.jpg", origin: "France")
    assert_not cat.save, "Saved the cat without a temperament"
  end

  test "should not save cat with empty temperament" do
    cat = Cat.new(name: "Kitty", picture: "kitty.jpg", origin: "France", temperament: "")
    assert_not cat.save, "Saved the cat with an empty temperament"
  end

  test "should not save cat with nil temperament" do
    cat = Cat.new(name: "Kitty", picture: "kitty.jpg", origin: "France", temperament: nil)
    assert_not cat.save, "Saved the cat with a nil temperament"
  end
  # End of test for cat temperament #

  # Test for cat description #
  test "should not save cat without description" do
    cat = Cat.new(name: "Kitty", picture: "kitty.jpg", origin: "France", temperament: "Energetic")
    assert_not cat.save, "Saved the cat without a description"
  end

  test "should not save cat with empty description" do
    cat = Cat.new(name: "Kitty", picture: "kitty.jpg", origin: "France", temperament: "Energetic", description: "")
    assert_not cat.save, "Saved the cat with an empty description"
  end

  test "should not save cat with nil description" do
    cat = Cat.new(name: "Kitty", picture: "kitty.jpg", origin: "France", temperament: "Energetic", description: nil)
    assert_not cat.save, "Saved the cat with a nil description"
  end
  # End of test for cat description #
end
