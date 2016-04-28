class DeclarationsController < ApplicationController
  before_action :set_mortgage, :set_borrower
  before_action :set_declaration, only: [:show, :edit, :update, :destroy]
  set_tab :declarations
  # GET /declarations
  # GET /declarations.json
  def index
  end

  # GET /declarations/1
  # GET /declarations/1.json
  def show
  end

  # GET /declarations/new
  def new
    @declaration = Declaration.new
  end

  # GET /declarations/1/edit
  def edit
  end

  # POST /declarations
  # POST /declarations.json
  def create
    @declaration = Declaration.new(declaration_params)
    @declaration.borrower = @borrower
    respond_to do |format|
      if @declaration.save
        format.html { redirect_to edit_borrower_declaration_path(@borrower, @declaration), notice: 'Declaration was successfully created.' }
        format.json { render :show, status: :created, location: @declaration }
      else
        format.html { render :new }
        format.json { render json: @declaration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /declarations/1
  # PATCH/PUT /declarations/1.json
  def update
    respond_to do |format|
      if @declaration.update(declaration_params)
        format.html { redirect_to @declaration, notice: 'Declaration was successfully updated.' }
        format.json { render :show, status: :ok, location: @declaration }
      else
        format.html { render :edit }
        format.json { render json: @declaration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /declarations/1
  # DELETE /declarations/1.json
  def destroy
    @declaration.destroy
    respond_to do |format|
      format.html { redirect_to declarations_url, notice: 'Declaration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_declaration
      @declaration = @borrower.declaration
    end

    def set_mortgage
      @mortgage = current_mortgage
    end
    
    def set_borrower
      @borrower = @mortgage.borrowers.first if @mortgage.present?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def declaration_params
      params.require(:declaration).permit(:declaration_id, :borrower_id, :federal_debt_default_flg, :obligation_flg, :down_payment_borrowed_flg, :co_maker_endorser_flg, :us_citizen_flg, :permanent_resident_alien_flg, :occupy_as_primary_residence_flg, :type_of_property_owned, :title_holding_type)
    end
end
