require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_index_url
    assert_response :success
  end

  test "should get new" do
    get posts_new_url
    assert_response :success
  end

  test "should get confirm" do
    get posts_confirm_url
    assert_response :success
  end

  test "should get detail" do
    get posts_detail_url
    assert_response :success
  end
end
