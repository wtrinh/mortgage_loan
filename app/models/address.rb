class Address < ActiveRecord::Base
	belongs_to :borrower
	scope :home_address, -> { where(address_type: MortgageLoanConstants::AddressType['HomeAddress']) }
end
