require "test_helper"

class TechniciansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get technicians_new_url
    assert_response :success
  end

  test "should get create" do
    get technicians_create_url
    assert_response :success
  end

  test "should get show" do
    get technicians_show_url
    assert_response :success
  end

  test "should get index" do
    get technicians_index_url
    assert_response :success
  end
end
