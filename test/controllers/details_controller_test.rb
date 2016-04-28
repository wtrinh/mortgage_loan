require 'test_helper'

class DetailsControllerTest < ActionController::TestCase
  setup do
    @detail = details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail" do
    assert_difference('Detail.count') do
      post :create, detail: { alteration_cost: @detail.alteration_cost, closing_costs_paid_by_seller: @detail.closing_costs_paid_by_seller, detail_id: @detail.detail_id, discount_amount: @detail.discount_amount, estimated_closing_costs: @detail.estimated_closing_costs, estimated_prepaid_items: @detail.estimated_prepaid_items, land_cost: @detail.land_cost, loan_amount: @detail.loan_amount, mortgage_id: @detail.mortgage_id, other_credits: @detail.other_credits, other_credits_note: @detail.other_credits_note, pmi_mip_funding_fee: @detail.pmi_mip_funding_fee, pmi_mip_funding_fee_financed_amount: @detail.pmi_mip_funding_fee_financed_amount, purchase_price: @detail.purchase_price, refinance_amount: @detail.refinance_amount, subordinate_financing: @detail.subordinate_financing }
    end

    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should show detail" do
    get :show, id: @detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail
    assert_response :success
  end

  test "should update detail" do
    patch :update, id: @detail, detail: { alteration_cost: @detail.alteration_cost, closing_costs_paid_by_seller: @detail.closing_costs_paid_by_seller, detail_id: @detail.detail_id, discount_amount: @detail.discount_amount, estimated_closing_costs: @detail.estimated_closing_costs, estimated_prepaid_items: @detail.estimated_prepaid_items, land_cost: @detail.land_cost, loan_amount: @detail.loan_amount, mortgage_id: @detail.mortgage_id, other_credits: @detail.other_credits, other_credits_note: @detail.other_credits_note, pmi_mip_funding_fee: @detail.pmi_mip_funding_fee, pmi_mip_funding_fee_financed_amount: @detail.pmi_mip_funding_fee_financed_amount, purchase_price: @detail.purchase_price, refinance_amount: @detail.refinance_amount, subordinate_financing: @detail.subordinate_financing }
    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should destroy detail" do
    assert_difference('Detail.count', -1) do
      delete :destroy, id: @detail
    end

    assert_redirected_to details_path
  end
end
