require 'test_helper'

class Public::RegistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_registration_index_url
    assert_response :success
  end

  test "should get confirm" do
    get public_registration_confirm_url
    assert_response :success
  end

end
