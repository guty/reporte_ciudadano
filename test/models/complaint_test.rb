require 'test_helper'

class ComplaintTest < ActiveSupport::TestCase
  def resource
    @resource ||= build(:complaint)
  end

  test 'must be a valid resource' do
    assert resource.valid?
  end
end
