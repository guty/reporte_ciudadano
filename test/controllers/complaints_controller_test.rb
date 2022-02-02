# frozen_string_literal: true

require 'test_helper'

class ComplaintsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in FactoryBot.create(:user)
    @complaint = create(:complaint)
  end

  test 'should get show' do
    get complaint_url(@complaint.id)
    assert_response :success
  end

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
