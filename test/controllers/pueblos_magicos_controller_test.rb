require 'test_helper'

class PueblosMagicosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pueblos_magicos_index_url
    assert_response :success
  end

end
