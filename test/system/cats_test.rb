require "application_system_test_case"

class CatsTest < ApplicationSystemTestCase
  test "visiting the index and see the title" do
    visit cats_url
    assert_selector "h1", text: "All cats"
  end

  test "visiting the index with cards of cat" do
    visit cats_url
    assert_selector ".card", count: Cat.all.count
  end

  test "visiting the index and check the numbers of names" do
    visit cats_url
    assert_selector ".card-title", count: Cat.all.count
  end

  test "visiting the index and check the number of images" do
    visit cats_url
    assert_selector ".card-img-top", count: Cat.all.count
  end
end
