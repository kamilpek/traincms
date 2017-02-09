require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get admin_main_url
    assert_response :success
  end

  test "should get articles" do
    get admin_articles_url
    assert_response :success
  end

  test "should get categories" do
    get admin_categories_url
    assert_response :success
  end

  test "should get tags" do
    get admin_tags_url
    assert_response :success
  end

  test "should get menus" do
    get admin_menus_url
    assert_response :success
  end

  test "should get comments" do
    get admin_comments_url
    assert_response :success
  end

  test "should get statistics" do
    get admin_statistics_url
    assert_response :success
  end

end
