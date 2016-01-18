require 'test_helper'

class StaffsControllerTest < ActionController::TestCase
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff" do
    assert_difference('Staff.count') do
      post :create, staff: { address_id: @staff.address_id, first_name: @staff.first_name, hire_date: @staff.hire_date, last_name: @staff.last_name, phone_no1: @staff.phone_no1, phone_no2: @staff.phone_no2, release_date: @staff.release_date, status: @staff.status, title: @staff.title, user_id: @staff.user_id }
    end

    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should show staff" do
    get :show, id: @staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff
    assert_response :success
  end

  test "should update staff" do
    patch :update, id: @staff, staff: { address_id: @staff.address_id, first_name: @staff.first_name, hire_date: @staff.hire_date, last_name: @staff.last_name, phone_no1: @staff.phone_no1, phone_no2: @staff.phone_no2, release_date: @staff.release_date, status: @staff.status, title: @staff.title, user_id: @staff.user_id }
    assert_redirected_to staff_path(assigns(:staff))
  end

  test "should destroy staff" do
    assert_difference('Staff.count', -1) do
      delete :destroy, id: @staff
    end

    assert_redirected_to staffs_path
  end
end
