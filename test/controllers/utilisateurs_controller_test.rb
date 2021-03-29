require "test_helper"

class UtilisateursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get utilisateurs_index_url
    assert_response :success
  end
end
