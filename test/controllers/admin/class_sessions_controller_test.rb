require 'test_helper'

class Admin::ClassSessionsControllerTest < ActionController::TestCase
  setup do
    @admin_class_session = admin_class_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_class_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_class_session" do
    assert_difference('Admin::ClassSession.count') do
      post :create, admin_class_session: { end_date: @admin_class_session.end_date, start_date: @admin_class_session.start_date, title: @admin_class_session.title }
    end

    assert_redirected_to admin_class_session_path(assigns(:admin_class_session))
  end

  test "should show admin_class_session" do
    get :show, id: @admin_class_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_class_session
    assert_response :success
  end

  test "should update admin_class_session" do
    patch :update, id: @admin_class_session, admin_class_session: { end_date: @admin_class_session.end_date, start_date: @admin_class_session.start_date, title: @admin_class_session.title }
    assert_redirected_to admin_class_session_path(assigns(:admin_class_session))
  end

  test "should destroy admin_class_session" do
    assert_difference('Admin::ClassSession.count', -1) do
      delete :destroy, id: @admin_class_session
    end

    assert_redirected_to admin_class_sessions_path
  end
end
