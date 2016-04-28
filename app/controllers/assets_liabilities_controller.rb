class AssetsLiabilitiesController < ApplicationController
	before_action :set_mortgage
  set_tab :assets_liabilities

  def index
  end

  def new

  end

  def edit
  end

  private
  	def set_mortgage
  		@mortgage = current_mortgage
  	end
end
