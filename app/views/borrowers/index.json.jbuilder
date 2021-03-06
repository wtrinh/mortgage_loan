json.array!(@borrowers) do |borrower|
  json.extract! borrower, :id, :borrower_id, :mortgage_id, :borrower_type, :first_name, :last_name, :social_security_number, :home_phone, :dob, :years_school, :marriage_status, :number_of_dependents, :home_address_line_1, :home_address_line_2, :own_or_rent, :years_of_residence, :mailing_address_line_1, :mailing_address_line_2
  json.url borrower_url(borrower, format: :json)
end
