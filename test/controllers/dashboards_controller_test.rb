# frozen_string_literal: true

require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    sign_in FactoryBot.create(:user)
  end

  test "should get index" do
    skip
    get dashboards_url
    assert_response :success
  end
end
