json.array!(@income_expenses) do |income_expense|
  json.extract! income_expense, :id, :income_expense_id, :borrower_id, :base_income, :over_time, :bonuses, :commissions, :dividends_interest, :net_rental_income, :other_income, :rent, :first_mortgage, :other_financing, :harzard_insurance, :real_estate_taxes, :mortage_insurance, :home_owner_assn_dues
  json.url income_expense_url(income_expense, format: :json)
end
