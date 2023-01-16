require "test_helper"

class GreetingControllerTest < ActionDispatch::IntegrationTest
  test "should get sayhello" do
    get greeting_sayhello_url
    assert_response :success
  end

  test "should get saygoodmorning" do
    get greeting_saygoodmorning_url
    assert_response :success
  end
end
