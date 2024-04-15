require "test_helper"

class FeaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get Features" do
    get features_Features_url
    assert_response :success
  end

  test "should get index" do
    get features_index_url
    assert_response :success
  end
end
