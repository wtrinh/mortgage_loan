json.array!(@properties) do |property|
  json.extract! property, :id, :property_id, :mortgage_id, :address_line_1, :address_line_2, :year_built, :purpose_of_loan, :property_use, :title_name, :source_of_down_payemnt
  json.url property_url(property, format: :json)
end
