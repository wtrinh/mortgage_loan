json.array!(@details) do |detail|
  json.extract! detail, :id, :detail_id, :mortgage_id, :purchase_price, :alteration_cost, :land_cost, :refinance_amount, :estimated_prepaid_items, :estimated_closing_costs, :pmi_mip_funding_fee, :discount_amount, :subordinate_financing, :closing_costs_paid_by_seller, :other_credits, :other_credits_note, :loan_amount, :pmi_mip_funding_fee_financed_amount
  json.url detail_url(detail, format: :json)
end
