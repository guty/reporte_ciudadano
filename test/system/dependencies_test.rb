require "application_system_test_case"

class DependenciesTest < ApplicationSystemTestCase
  setup do
    @dependency = dependencies(:one)
  end

  test "visiting the index" do
    visit dependencies_url
    assert_selector "h1", text: "Dependencies"
  end

  test "should create dependency" do
    visit dependencies_url
    click_on "New dependency"

    check "Active" if @dependency.active
    fill_in "Name", with: @dependency.name
    click_on "Create Dependency"

    assert_text "Dependency was successfully created"
    click_on "Back"
  end

  test "should update Dependency" do
    visit dependency_url(@dependency)
    click_on "Edit this dependency", match: :first

    check "Active" if @dependency.active
    fill_in "Name", with: @dependency.name
    click_on "Update Dependency"

    assert_text "Dependency was successfully updated"
    click_on "Back"
  end

  test "should destroy Dependency" do
    visit dependency_url(@dependency)
    click_on "Destroy this dependency", match: :first

    assert_text "Dependency was successfully destroyed"
  end
end
