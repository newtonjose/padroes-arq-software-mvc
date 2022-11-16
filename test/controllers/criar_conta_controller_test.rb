require "test_helper"

class CriarContaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get criar_conta_index_url
    assert_response :success
  end
end
