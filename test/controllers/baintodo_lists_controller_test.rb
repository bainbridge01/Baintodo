require 'test_helper'

class BaintodoListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baintodo_list = baintodo_lists(:one)
  end

  test "should get index" do
    get baintodo_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_baintodo_list_url
    assert_response :success
  end

  test "should create baintodo_list" do
    assert_difference('BaintodoList.count') do
      post baintodo_lists_url, params: { baintodo_list: { descrption: @baintodo_list.descrption, title: @baintodo_list.title } }
    end

    assert_redirected_to baintodo_list_url(BaintodoList.last)
  end

  test "should show baintodo_list" do
    get baintodo_list_url(@baintodo_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_baintodo_list_url(@baintodo_list)
    assert_response :success
  end

  test "should update baintodo_list" do
    patch baintodo_list_url(@baintodo_list), params: { baintodo_list: { descrption: @baintodo_list.descrption, title: @baintodo_list.title } }
    assert_redirected_to baintodo_list_url(@baintodo_list)
  end

  test "should destroy baintodo_list" do
    assert_difference('BaintodoList.count', -1) do
      delete baintodo_list_url(@baintodo_list)
    end

    assert_redirected_to baintodo_lists_url
  end
end
