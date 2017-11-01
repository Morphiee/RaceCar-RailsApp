require 'test_helper'

class CarControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get car_create_url
    assert_response :success
  end

end
