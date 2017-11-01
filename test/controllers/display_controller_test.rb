require 'test_helper'

class DisplayControllerTest < ActionDispatch::IntegrationTest
  test "should get status" do
    get display_status_url
    assert_response :success
  end

end
