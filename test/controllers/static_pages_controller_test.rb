require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get our_team" do
    get :our_team
    assert_response :success
  end

  test "should get our_work" do
    get :our_work
    assert_response :success
  end

end
