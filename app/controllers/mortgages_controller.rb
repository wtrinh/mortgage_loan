class MortgagesController < ApplicationController
  before_action :set_mortgage, :set_property, only: [:edit, :update, :destroy] 
  

  # GET /mortgages
  # GET /mortgages.json
  def index
    set_tab :mortgages
    @mortgages = Mortgage.all
  end

  # GET /mortgages/1
  # GET /mortgages/1.json
  def show
    session[:mortgage_id] = @mortgage.id
  end

  # GET /mortgages/new
  def new
    session[:mortgage_id] = nil
    current_mortgage = nil
    @mortgage = Mortgage.new
    @property = @mortgage.build_property
  end

  # GET /mortgages/1/edit
  def edit
    set_tab :mortgage_info
  end

  # POST /mortgages
  # POST /mortgages.json
  def create
    @mortgage = Mortgage.new(mortgage_params)

    respond_to do |format|
      if @mortgage.save
        session[:mortgage_id] = @mortgage.id
        flash[:notice] = 'Mortgage was successfully created.'
        format.html { redirect_to edit_mortgage_path @mortgage }
        format.json { render :show, status: :created, location: @mortgage }
      else
        format.html { render :new }
        format.json { render json: @mortgage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mortgages/1
  # PATCH/PUT /mortgages/1.json
  def update
    respond_to do |format|
      if @mortgage.update(mortgage_params)
        flash[:notice] = 'Mortgage was successfully updated.'
        format.html { redirect_to edit_mortgage_path @mortgage }
        format.json { render :show, status: :ok, location: @mortgage }
      else
        format.html { render :edit }
        format.json { render json: @mortgage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mortgages/1
  # DELETE /mortgages/1.json
  def destroy
    @mortgage.destroy
    respond_to do |format|
      format.html { redirect_to mortgages_url, notice: 'Mortgage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mortgage
      @mortgage = current_mortgage = Mortgage.find(params[:id])
      session[:mortgage_id] = @mortgage.id
    end

    def set_property
      @property = @mortgage.property
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mortgage_params
      params.require(:mortgage).permit(:mortgage_type, :amount, :interest_rate, :number_of_months, :amortization_type, property_attributes: [:id, :address_line_1, :address_line_2, :city, :state, :zip_code, :year_built, :purpose_of_loan, :property_use, :title_name, :source_of_down_payment])
    end
end
