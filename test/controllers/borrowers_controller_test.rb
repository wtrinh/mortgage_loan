require 'test_helper'

class BorrowersControllerTest < ActionController::TestCase
  setup do
    @borrower = borrowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borrowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borrower" do
    assert_difference('Borrower.count') do
      post :create, borrower: { borrower_id: @borrower.borrower_id, borrower_type: @borrower.borrower_type, dob: @borrower.dob, first_name: @borrower.first_name, home_address_line_1: @borrower.home_address_line_1, home_address_line_2: @borrower.home_address_line_2, home_phone: @borrower.home_phone, last_name: @borrower.last_name, mailing_address_line_1: @borrower.mailing_address_line_1, mailing_address_line_2: @borrower.mailing_address_line_2, marriage_status: @borrower.marriage_status, mortgage_id: @borrower.mortgage_id, number_of_dependents: @borrower.number_of_dependents, own_or_rent: @borrower.own_or_rent, social_security_number: @borrower.social_security_number, years_of_residence: @borrower.years_of_residence, years_school: @borrower.years_school }
    end

    assert_redirected_to borrower_path(assigns(:borrower))
  end

  test "should show borrower" do
    get :show, id: @borrower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @borrower
    assert_response :success
  end

  test "should update borrower" do
    patch :update, id: @borrower, borrower: { borrower_id: @borrower.borrower_id, borrower_type: @borrower.borrower_type, dob: @borrower.dob, first_name: @borrower.first_name, home_address_line_1: @borrower.home_address_line_1, home_address_line_2: @borrower.home_address_line_2, home_phone: @borrower.home_phone, last_name: @borrower.last_name, mailing_address_line_1: @borrower.mailing_address_line_1, mailing_address_line_2: @borrower.mailing_address_line_2, marriage_status: @borrower.marriage_status, mortgage_id: @borrower.mortgage_id, number_of_dependents: @borrower.number_of_dependents, own_or_rent: @borrower.own_or_rent, social_security_number: @borrower.social_security_number, years_of_residence: @borrower.years_of_residence, years_school: @borrower.years_school }
    assert_redirected_to borrower_path(assigns(:borrower))
  end

  test "should destroy borrower" do
    assert_difference('Borrower.count', -1) do
      delete :destroy, id: @borrower
    end

    assert_redirected_to borrowers_path
  end
end
