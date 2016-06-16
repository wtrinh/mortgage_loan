class BorrowersController < ApplicationController
  before_action :set_mortgage
  before_action :set_borrower, only: [:show, :edit, :update, :destroy]
  set_tab :borrowers
  # GET /borrowers
  # GET /borrowers.json
  def index
  end

  # GET /borrowers/1
  # GET /borrowers/1.json
  def show
  end

  # GET /borrowers/new
  def new
    redirect_to root_path if @mortgage.nil?
    @borrower = Borrower.new
  end

  # GET /borrowers/1/edit
  def edit
    @borrower = @mortgage.borrowers.first
  end

  # POST /borrowers
  # POST /borrowers.json
  def create
    @borrower = @mortgage.borrowers.new(borrower_params)

    respond_to do |format|
      if @borrower.save
        flash[:notice] = 'Borrower was successfully created.'
        format.html { redirect_to edit_borrower_path @borrower }
        format.json { render :show, status: :created, location: @borrower }
      else
        format.html { render :new }
        format.json { render json: @borrower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borrowers/1
  # PATCH/PUT /borrowers/1.json
  def update
    respond_to do |format|
      if @borrower.update(borrower_params)
        format.html { redirect_to @borrower, notice: 'Borrower was successfully updated.' }
        format.json { render :show, status: :ok, location: @borrower }
      else
        format.html { render :edit }
        format.json { render json: @borrower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borrowers/1
  # DELETE /borrowers/1.json
  def destroy
    @borrower.destroy
    respond_to do |format|
      format.html { redirect_to borrowers_url, notice: 'Borrower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borrower
      @borrower = @mortgage.borrowers.first
    end

    def set_mortgage
      @mortgage = current_mortgage
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def borrower_params
      params.require(:borrower).permit(:borrower_id, :borrower_type, :first_name, :last_name, :social_security_number, :home_phone, :dob, :years_school, :marriage_status, :number_of_dependents, :home_address_line_1, :home_address_line_2, :own_or_rent, :years_of_residence, :mailing_address_line_1, :mailing_address_line_2)
    end
end
