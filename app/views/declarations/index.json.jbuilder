json.array!(@declarations) do |declaration|
  json.extract! declaration, :id, :declaration_id, :borrower_id, :federal_debt_default_flg, :obligation_flg, :down_payment_borrowed_flg, :co_maker_endorser_flg, :us_citizen_flg, :permanent_resident_alien_flg, :occupy_as_primary_residence_flg, :type_of_property_owned, :title_holding_type
  json.url declaration_url(declaration, format: :json)
end
