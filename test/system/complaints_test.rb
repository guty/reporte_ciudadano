# frozen_string_literal: true

require "application_system_test_case"

class ComplaintsTest < ApplicationSystemTestCase
  setup do
    @complaint = complaints(:one)
  end

  test "visiting the index" do
    visit complaints_url
    assert_selector "h1", text: "Complaints"
  end

  test "should create complaint" do
    visit complaints_url
    click_on "New complaint"

    fill_in "Address", with: @complaint.address
    fill_in "Category", with: @complaint.category_id
    fill_in "Description", with: @complaint.description
    fill_in "Latitude", with: @complaint.latitude
    fill_in "Longitude", with: @complaint.longitude
    fill_in "Neighbourhood", with: @complaint.neighbourhood
    fill_in "Street", with: @complaint.street
    fill_in "Subject", with: @complaint.subject
    fill_in "Town", with: @complaint.town
    fill_in "User", with: @complaint.user_id
    click_on "Create Complaint"

    assert_text "Complaint was successfully created"
    click_on "Back"
  end

  test "should update Complaint" do
    visit complaint_url(@complaint)
    click_on "Edit this complaint", match: :first

    fill_in "Address", with: @complaint.address
    fill_in "Category", with: @complaint.category_id
    fill_in "Description", with: @complaint.description
    fill_in "Latitude", with: @complaint.latitude
    fill_in "Longitude", with: @complaint.longitude
    fill_in "Neighbourhood", with: @complaint.neighbourhood
    fill_in "Street", with: @complaint.street
    fill_in "Subject", with: @complaint.subject
    fill_in "Town", with: @complaint.town
    fill_in "User", with: @complaint.user_id
    click_on "Update Complaint"

    assert_text "Complaint was successfully updated"
    click_on "Back"
  end

  test "should destroy Complaint" do
    visit complaint_url(@complaint)
    click_on "Destroy this complaint", match: :first

    assert_text "Complaint was successfully destroyed"
  end
end
