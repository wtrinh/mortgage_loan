class Borrower < ActiveRecord::Base
	belongs_to :mortgage, dependent: :destroy
	has_many :addresses
	has_one :employment
	has_one :income_expense
	has_many :liabilities
	has_many :assets
	has_one :declaration
	accepts_nested_attributes_for :addresses
	accepts_nested_attributes_for :declaration
end
