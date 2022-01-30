# frozen_string_literal: true

require "test_helper"

class UserTest < ActiveSupport::TestCase
  def resource
    @resource ||= build(:user)
  end

  test "must be a valid resource" do
    assert resource.valid?
  end

  test "must be citizen as default role" do
    assert resource.citizen?
  end
end
