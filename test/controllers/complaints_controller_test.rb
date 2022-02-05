# frozen_string_literal: true

require "test_helper"

class ComplaintsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    @user = FactoryBot.create(:user)
    sign_in @user
    @complaint = FactoryBot.create(:complaint, user: @user)
  end

  test "should get show" do
    skip
    get complaint_url(@complaint)
    assert_response :success
  end

  test "should get new" do
    skip
    get new_complaint_url
    assert_response :success
  end

  # test 'should get edit' do
  #   get complaint_edit_url
  #   assert_response :success
  # end

  # test 'should get update' do
  #   get complaint_update_url
  #   assert_response :success
  # end

  # test 'should get destroy' do
  #   get complaint_destroy_url
  #   assert_response :success
  # end
end
