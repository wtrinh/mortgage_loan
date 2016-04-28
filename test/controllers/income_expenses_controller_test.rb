require 'test_helper'

class IncomeExpensesControllerTest < ActionController::TestCase
  setup do
    @income_expense = income_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:income_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create income_expense" do
    assert_difference('IncomeExpense.count') do
      post :create, income_expense: { base_income: @income_expense.base_income, bonuses: @income_expense.bonuses, borrower_id: @income_expense.borrower_id, commissions: @income_expense.commissions, dividends_interest: @income_expense.dividends_interest, first_mortgage: @income_expense.first_mortgage, harzard_insurance: @income_expense.harzard_insurance, home_owner_assn_dues: @income_expense.home_owner_assn_dues, income_expense_id: @income_expense.income_expense_id, mortage_insurance: @income_expense.mortage_insurance, net_rental_income: @income_expense.net_rental_income, other_financing: @income_expense.other_financing, other_income: @income_expense.other_income, over_time: @income_expense.over_time, real_estate_taxes: @income_expense.real_estate_taxes, rent: @income_expense.rent }
    end

    assert_redirected_to income_expense_path(assigns(:income_expense))
  end

  test "should show income_expense" do
    get :show, id: @income_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @income_expense
    assert_response :success
  end

  test "should update income_expense" do
    patch :update, id: @income_expense, income_expense: { base_income: @income_expense.base_income, bonuses: @income_expense.bonuses, borrower_id: @income_expense.borrower_id, commissions: @income_expense.commissions, dividends_interest: @income_expense.dividends_interest, first_mortgage: @income_expense.first_mortgage, harzard_insurance: @income_expense.harzard_insurance, home_owner_assn_dues: @income_expense.home_owner_assn_dues, income_expense_id: @income_expense.income_expense_id, mortage_insurance: @income_expense.mortage_insurance, net_rental_income: @income_expense.net_rental_income, other_financing: @income_expense.other_financing, other_income: @income_expense.other_income, over_time: @income_expense.over_time, real_estate_taxes: @income_expense.real_estate_taxes, rent: @income_expense.rent }
    assert_redirected_to income_expense_path(assigns(:income_expense))
  end

  test "should destroy income_expense" do
    assert_difference('IncomeExpense.count', -1) do
      delete :destroy, id: @income_expense
    end

    assert_redirected_to income_expenses_path
  end
end
