require 'test_helper'

class Public::LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_login_index_url
    assert_response :success
  end

end
