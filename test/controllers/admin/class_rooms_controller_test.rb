require 'test_helper'

class Admin::ClassRoomsControllerTest < ActionController::TestCase
  setup do
    @admin_class_room = admin_class_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_class_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_class_room" do
    assert_difference('Admin::ClassRoom.count') do
      post :create, admin_class_room: { class_no: @admin_class_room.class_no }
    end

    assert_redirected_to admin_class_room_path(assigns(:admin_class_room))
  end

  test "should show admin_class_room" do
    get :show, id: @admin_class_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_class_room
    assert_response :success
  end

  test "should update admin_class_room" do
    patch :update, id: @admin_class_room, admin_class_room: { class_no: @admin_class_room.class_no }
    assert_redirected_to admin_class_room_path(assigns(:admin_class_room))
  end

  test "should destroy admin_class_room" do
    assert_difference('Admin::ClassRoom.count', -1) do
      delete :destroy, id: @admin_class_room
    end

    assert_redirected_to admin_class_rooms_path
  end
end
