# frozen_string_literal: true

require "test_helper"

class LandingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    skip
    get root_url
    assert_response :success
  end
end
