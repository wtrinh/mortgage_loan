class Mortgage < ActiveRecord::Base
	acts_as_paranoid
	has_one :property
	has_many :borrowers
	has_one :detail
	validates_presence_of :mortgage_type, :amount, :interest_rate, :number_of_months, :amortization_type
	accepts_nested_attributes_for :property
	accepts_nested_attributes_for :detail
end
