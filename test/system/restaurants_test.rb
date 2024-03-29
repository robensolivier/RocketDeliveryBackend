require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "visiting the index" do
    visit restaurants_url
    assert_selector "h1", text: "Restaurants"
  end

  test "should create restaurant" do
    visit restaurants_url
    click_on "New restaurant"

    fill_in "Active", with: @restaurant.active
    fill_in "Address", with: @restaurant.address_id
    fill_in "Boolean", with: @restaurant.boolean
    fill_in "Email", with: @restaurant.email
    fill_in "Phone", with: @restaurant.phone
    fill_in "Price range", with: @restaurant.price_range
    fill_in "User", with: @restaurant.user_id
    click_on "Create Restaurant"

    assert_text "Restaurant was successfully created"
    click_on "Back"
  end

  test "should update Restaurant" do
    visit restaurant_url(@restaurant)
    click_on "Edit this restaurant", match: :first

    fill_in "Active", with: @restaurant.active
    fill_in "Address", with: @restaurant.address_id
    fill_in "Boolean", with: @restaurant.boolean
    fill_in "Email", with: @restaurant.email
    fill_in "Phone", with: @restaurant.phone
    fill_in "Price range", with: @restaurant.price_range
    fill_in "User", with: @restaurant.user_id
    click_on "Update Restaurant"

    assert_text "Restaurant was successfully updated"
    click_on "Back"
  end

  test "should destroy Restaurant" do
    visit restaurant_url(@restaurant)
    click_on "Destroy this restaurant", match: :first

    assert_text "Restaurant was successfully destroyed"
  end
end
