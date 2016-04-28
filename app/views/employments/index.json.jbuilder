json.array!(@employments) do |employment|
  json.extract! employment, :id, :employment_id, :borrower_id, :employer_name, :address_line_1, :address_line_2, :state, :zip_code, :employed_date_from, :employed_date_to, :self_employed_flg, :position, :business_phone, :monthly_income
  json.url employment_url(employment, format: :json)
end
