class EmploymentsController < ApplicationController
  before_action :set_mortgage, :set_borrower
  before_action :set_employment, only: [:show, :edit, :update, :destroy]
  set_tab :employments
  # GET /employments
  # GET /employments.json
  def index
  end

  # GET /employments/1
  # GET /employments/1.json
  def show
  end

  # GET /employments/new
  def new
    @employment = Employment.new
  end

  # GET /employments/1/edit
  def edit

  end

  # POST /employments
  # POST /employments.json
  def create
    @employment = Employment.new(employment_params)

    respond_to do |format|
      if @employment.save
        format.html { redirect_to @employment, notice: 'Employment was successfully created.' }
        format.json { render :show, status: :created, location: @employment }
      else
        format.html { render :new }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employments/1
  # PATCH/PUT /employments/1.json
  def update
    respond_to do |format|
      if @employment.update(employment_params)
        format.html { redirect_to @employment, notice: 'Employment was successfully updated.' }
        format.json { render :show, status: :ok, location: @employment }
      else
        format.html { render :edit }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employments/1
  # DELETE /employments/1.json
  def destroy
    @employment.destroy
    respond_to do |format|
      format.html { redirect_to employments_url, notice: 'Employment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment
      @employment = Employment.find(params[:id])
    end

    def set_mortgage
      @set_mortgage = current_mortgage
    end

    def set_borrower
      @borrower = @set_mortgage.borrowers.first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_params
      params.require(:employment).permit(:employment_id, :borrower_id, :employer_name, :address_line_1, :address_line_2, :state, :zip_code, :employed_date_from, :employed_date_to, :self_employed_flg, :position, :business_phone, :monthly_income)
    end
end
