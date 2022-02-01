require 'test_helper'

class ComplaintsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in FactoryBot.create(:user)
  end
  # test 'should get index' do
  #   get complaint_index_url
  #   assert_response :success
  # end

  # test 'should get show' do
  #   get complaint_show_url
  #   assert_response :success
  # end

  test 'should get new' do
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
