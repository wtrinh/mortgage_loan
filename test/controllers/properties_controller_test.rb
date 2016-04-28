require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { address_line_1: @property.address_line_1, address_line_2: @property.address_line_2, mortgage_id: @property.mortgage_id, property_id: @property.property_id, property_use: @property.property_use, purpose_of_loan: @property.purpose_of_loan, source_of_down_payemnt: @property.source_of_down_payemnt, title_name: @property.title_name, year_built: @property.year_built }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    patch :update, id: @property, property: { address_line_1: @property.address_line_1, address_line_2: @property.address_line_2, mortgage_id: @property.mortgage_id, property_id: @property.property_id, property_use: @property.property_use, purpose_of_loan: @property.purpose_of_loan, source_of_down_payemnt: @property.source_of_down_payemnt, title_name: @property.title_name, year_built: @property.year_built }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
