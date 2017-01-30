require 'test_helper'

class MenuTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menu_type = menu_types(:one)
  end

  test "should get index" do
    get menu_types_url
    assert_response :success
  end

  test "should get new" do
    get new_menu_type_url
    assert_response :success
  end

  test "should create menu_type" do
    assert_difference('MenuType.count') do
      post menu_types_url, params: { menu_type: { content: @menu_type.content, order: @menu_type.order, title: @menu_type.title } }
    end

    assert_redirected_to menu_type_url(MenuType.last)
  end

  test "should show menu_type" do
    get menu_type_url(@menu_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_menu_type_url(@menu_type)
    assert_response :success
  end

  test "should update menu_type" do
    patch menu_type_url(@menu_type), params: { menu_type: { content: @menu_type.content, order: @menu_type.order, title: @menu_type.title } }
    assert_redirected_to menu_type_url(@menu_type)
  end

  test "should destroy menu_type" do
    assert_difference('MenuType.count', -1) do
      delete menu_type_url(@menu_type)
    end

    assert_redirected_to menu_types_url
  end
end
