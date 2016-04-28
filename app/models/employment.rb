class Employment < ActiveRecord::Base
	belongs_to :borrower, dependent: :destroy
end
