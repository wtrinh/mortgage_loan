require 'test_helper'

class MortgagesControllerTest < ActionController::TestCase
  setup do
    @mortgage = mortgages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mortgages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mortgage" do
    assert_difference('Mortgage.count') do
      post :create, mortgage: { amount: @mortgage.amount, amrotization_type: @mortgage.amrotization_type, interest_rate: @mortgage.interest_rate, mortgage_id: @mortgage.mortgage_id, mortgage_type: @mortgage.mortgage_type, number_of_months: @mortgage.number_of_months }
    end

    assert_redirected_to mortgage_path(assigns(:mortgage))
  end

  test "should show mortgage" do
    get :show, id: @mortgage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mortgage
    assert_response :success
  end

  test "should update mortgage" do
    patch :update, id: @mortgage, mortgage: { amount: @mortgage.amount, amrotization_type: @mortgage.amrotization_type, interest_rate: @mortgage.interest_rate, mortgage_id: @mortgage.mortgage_id, mortgage_type: @mortgage.mortgage_type, number_of_months: @mortgage.number_of_months }
    assert_redirected_to mortgage_path(assigns(:mortgage))
  end

  test "should destroy mortgage" do
    assert_difference('Mortgage.count', -1) do
      delete :destroy, id: @mortgage
    end

    assert_redirected_to mortgages_path
  end
end
