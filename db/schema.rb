# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160301055929) do

  create_table "addresses", force: true do |t|
    t.integer  "borrower_id"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "rent_or_own"
    t.string   "address_type"
    t.integer  "years_of_residence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", force: true do |t|
    t.integer  "borrower_id"
    t.float    "stocks_bonds_value"
    t.float    "life_insurance_net_value"
    t.float    "life_insurance_face_value"
    t.float    "real_estate_owned"
    t.float    "retirement_fund"
    t.float    "business_owned"
    t.float    "automobiles_owned"
    t.float    "other_assets"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bank_accounts", force: true do |t|
    t.integer  "borrower_id"
    t.string   "account_type"
    t.string   "account_number"
    t.string   "bank_name"
    t.string   "bank_address_line_1"
    t.string   "bank_address_line_2"
    t.string   "bank_city"
    t.string   "bank_state"
    t.string   "bank_zip_code"
    t.float    "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "borrowers", force: true do |t|
    t.integer  "mortgage_id"
    t.string   "borrower_type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "social_security_number"
    t.string   "home_phone"
    t.date     "dob"
    t.integer  "years_school"
    t.string   "marriage_status"
    t.integer  "number_of_dependents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cash_holdings", force: true do |t|
    t.integer  "borrower_id"
    t.float    "value"
    t.boolean  "filed_jointly_flg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "declarations", force: true do |t|
    t.integer  "borrower_id"
    t.boolean  "federal_debt_default_flg"
    t.boolean  "obligation_flg"
    t.boolean  "down_payment_borrowed_flg"
    t.boolean  "co_maker_endorser_flg"
    t.boolean  "us_citizen_flg"
    t.boolean  "permanent_resident_alien_flg"
    t.boolean  "occupy_as_primary_residence_flg"
    t.string   "type_of_property_owned"
    t.string   "title_holding_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details", force: true do |t|
    t.integer  "mortgage_id"
    t.float    "purchase_price"
    t.float    "alteration_cost"
    t.float    "land_cost"
    t.float    "refinance_amount"
    t.float    "estimated_prepaid_items"
    t.float    "estimated_closing_costs"
    t.float    "pmi_mip_funding_fee"
    t.float    "discount_amount"
    t.float    "subordinate_financing"
    t.float    "closing_costs_paid_by_seller"
    t.float    "other_credits"
    t.text     "other_credits_note"
    t.float    "loan_amount"
    t.float    "pmi_mip_funding_fee_financed_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employments", force: true do |t|
    t.integer  "borrower_id"
    t.string   "employer_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.date     "employed_date_from"
    t.date     "employed_date_to"
    t.boolean  "self_employed_flg"
    t.string   "position"
    t.string   "business_phone"
    t.float    "monthly_income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "income_expenses", force: true do |t|
    t.integer  "borrower_id"
    t.float    "base_income"
    t.float    "over_time"
    t.float    "bonuses"
    t.float    "commissions"
    t.float    "dividends_interest"
    t.float    "net_rental_income"
    t.float    "other_income"
    t.float    "rent"
    t.float    "first_mortgage"
    t.float    "other_financing"
    t.float    "harzard_insurance"
    t.float    "real_estate_taxes"
    t.float    "mortage_insurance"
    t.float    "home_owner_assn_dues"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liabilities", force: true do |t|
    t.integer  "borrower_id"
    t.string   "company_name"
    t.string   "company_address_line_1"
    t.string   "company_address_line_2"
    t.string   "company_city"
    t.string   "company_state"
    t.string   "company_zip_code"
    t.string   "account_number"
    t.float    "monthly_payment"
    t.integer  "months_left_to_pay"
    t.float    "unpaid_blance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mortgages", force: true do |t|
    t.string   "mortgage_type"
    t.float    "amount"
    t.float    "interest_rate"
    t.integer  "number_of_months"
    t.string   "amortization_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  add_index "mortgages", ["deleted_at"], name: "index_mortgages_on_deleted_at"

  create_table "other_liabilities", force: true do |t|
    t.integer  "borrower_id"
    t.string   "liability_type"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.integer  "mortgage_id"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.integer  "year_built"
    t.string   "purpose_of_loan"
    t.string   "property_use"
    t.string   "title_name"
    t.string   "source_of_down_payment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "real_estate_owns", force: true do |t|
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "property_type"
    t.float    "present_market_value"
    t.float    "amount_of_mortgage"
    t.float    "gross_rental_income"
    t.float    "mortgage_payment"
    t.float    "insurance_maintenance_taxes"
    t.float    "net_rental_income"
    t.string   "property_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
