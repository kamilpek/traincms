require 'test_helper'

class TagRefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_ref = tag_refs(:one)
  end

  test "should get index" do
    get tag_refs_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_ref_url
    assert_response :success
  end

  test "should create tag_ref" do
    assert_difference('TagRef.count') do
      post tag_refs_url, params: { tag_ref: { article_id: @tag_ref.article_id, tag_id: @tag_ref.tag_id } }
    end

    assert_redirected_to tag_ref_url(TagRef.last)
  end

  test "should show tag_ref" do
    get tag_ref_url(@tag_ref)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_ref_url(@tag_ref)
    assert_response :success
  end

  test "should update tag_ref" do
    patch tag_ref_url(@tag_ref), params: { tag_ref: { article_id: @tag_ref.article_id, tag_id: @tag_ref.tag_id } }
    assert_redirected_to tag_ref_url(@tag_ref)
  end

  test "should destroy tag_ref" do
    assert_difference('TagRef.count', -1) do
      delete tag_ref_url(@tag_ref)
    end

    assert_redirected_to tag_refs_url
  end
end
