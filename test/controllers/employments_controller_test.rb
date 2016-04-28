require 'test_helper'

class EmploymentsControllerTest < ActionController::TestCase
  setup do
    @employment = employments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employment" do
    assert_difference('Employment.count') do
      post :create, employment: { address_line_1: @employment.address_line_1, address_line_2: @employment.address_line_2, borrower_id: @employment.borrower_id, business_phone: @employment.business_phone, employed_date_from: @employment.employed_date_from, employed_date_to: @employment.employed_date_to, employer_name: @employment.employer_name, employment_id: @employment.employment_id, monthly_income: @employment.monthly_income, position: @employment.position, self_employed_flg: @employment.self_employed_flg, state: @employment.state, zip_code: @employment.zip_code }
    end

    assert_redirected_to employment_path(assigns(:employment))
  end

  test "should show employment" do
    get :show, id: @employment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employment
    assert_response :success
  end

  test "should update employment" do
    patch :update, id: @employment, employment: { address_line_1: @employment.address_line_1, address_line_2: @employment.address_line_2, borrower_id: @employment.borrower_id, business_phone: @employment.business_phone, employed_date_from: @employment.employed_date_from, employed_date_to: @employment.employed_date_to, employer_name: @employment.employer_name, employment_id: @employment.employment_id, monthly_income: @employment.monthly_income, position: @employment.position, self_employed_flg: @employment.self_employed_flg, state: @employment.state, zip_code: @employment.zip_code }
    assert_redirected_to employment_path(assigns(:employment))
  end

  test "should destroy employment" do
    assert_difference('Employment.count', -1) do
      delete :destroy, id: @employment
    end

    assert_redirected_to employments_path
  end
end
