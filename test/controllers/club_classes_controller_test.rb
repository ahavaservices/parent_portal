require 'test_helper'

class ClubClassesControllerTest < ActionController::TestCase
  setup do
    @club_class = club_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:club_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create club_class" do
    assert_difference('ClubClass.count') do
      post :create, club_class: { level_id: @club_class.level_id, max_age: @club_class.max_age, max_students: @club_class.max_students, min_age: @club_class.min_age, name: @club_class.name, program_id: @club_class.program_id, staff_id: @club_class.staff_id, status: @club_class.status }
    end

    assert_redirected_to club_class_path(assigns(:club_class))
  end

  test "should show club_class" do
    get :show, id: @club_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @club_class
    assert_response :success
  end

  test "should update club_class" do
    patch :update, id: @club_class, club_class: { level_id: @club_class.level_id, max_age: @club_class.max_age, max_students: @club_class.max_students, min_age: @club_class.min_age, name: @club_class.name, program_id: @club_class.program_id, staff_id: @club_class.staff_id, status: @club_class.status }
    assert_redirected_to club_class_path(assigns(:club_class))
  end

  test "should destroy club_class" do
    assert_difference('ClubClass.count', -1) do
      delete :destroy, id: @club_class
    end

    assert_redirected_to club_classes_path
  end
end
