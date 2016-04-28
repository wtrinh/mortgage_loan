class Property < ActiveRecord::Base
	belongs_to :mortgage, dependent: :destroy
end
