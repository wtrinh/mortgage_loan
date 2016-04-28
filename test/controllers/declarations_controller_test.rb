require 'test_helper'

class DeclarationsControllerTest < ActionController::TestCase
  setup do
    @declaration = declarations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:declarations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create declaration" do
    assert_difference('Declaration.count') do
      post :create, declaration: { borrower_id: @declaration.borrower_id, co_maker_endorser_flg: @declaration.co_maker_endorser_flg, declaration_id: @declaration.declaration_id, down_payment_borrowed_flg: @declaration.down_payment_borrowed_flg, federal_debt_default_flg: @declaration.federal_debt_default_flg, obligation_flg: @declaration.obligation_flg, occupy_as_primary_residence_flg: @declaration.occupy_as_primary_residence_flg, permanent_resident_alien_flg: @declaration.permanent_resident_alien_flg, title_holding_type: @declaration.title_holding_type, type_of_property_owned: @declaration.type_of_property_owned, us_citizen_flg: @declaration.us_citizen_flg }
    end

    assert_redirected_to declaration_path(assigns(:declaration))
  end

  test "should show declaration" do
    get :show, id: @declaration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @declaration
    assert_response :success
  end

  test "should update declaration" do
    patch :update, id: @declaration, declaration: { borrower_id: @declaration.borrower_id, co_maker_endorser_flg: @declaration.co_maker_endorser_flg, declaration_id: @declaration.declaration_id, down_payment_borrowed_flg: @declaration.down_payment_borrowed_flg, federal_debt_default_flg: @declaration.federal_debt_default_flg, obligation_flg: @declaration.obligation_flg, occupy_as_primary_residence_flg: @declaration.occupy_as_primary_residence_flg, permanent_resident_alien_flg: @declaration.permanent_resident_alien_flg, title_holding_type: @declaration.title_holding_type, type_of_property_owned: @declaration.type_of_property_owned, us_citizen_flg: @declaration.us_citizen_flg }
    assert_redirected_to declaration_path(assigns(:declaration))
  end

  test "should destroy declaration" do
    assert_difference('Declaration.count', -1) do
      delete :destroy, id: @declaration
    end

    assert_redirected_to declarations_path
  end
end
