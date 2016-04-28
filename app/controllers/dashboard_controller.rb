class DashboardController < ApplicationController
	def index
		@mortgages = Mortgage.all
	end
end
