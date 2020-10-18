require 'test_helper'

class Public::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_users_index_url
    assert_response :success
  end

  test "should get show" do
    get public_users_show_url
    assert_response :success
  end

  test "should get new" do
    get public_users_new_url
    assert_response :success
  end

  test "should get create" do
    get public_users_create_url
    assert_response :success
  end

  test "should get edit" do
    get public_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_users_update_url
    assert_response :success
  end

  test "should get unsubscribe" do
    get public_users_unsubscribe_url
    assert_response :success
  end

  test "should get withdraw" do
    get public_users_withdraw_url
    assert_response :success
  end

end
