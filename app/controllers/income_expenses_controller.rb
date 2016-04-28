class IncomeExpensesController < ApplicationController
  before_action :set_mortgage, :set_borrower
  before_action :set_income_expense, only: [:show, :edit, :update, :destroy]
  set_tab :income_expenses
  # GET /income_expenses
  # GET /income_expenses.json
  def index
    if @income_expense.present?
     redirect_to action: "edit"
    elsif @mortgage && @mortgage.borrowers.present?
      redirect_to action :new  
    else
      redirect_to new_mortgage_url
    end
  end

  # GET /income_expenses/1
  # GET /income_expenses/1.json
  def show
  end

  # GET /income_expenses/new
  def new
    @income_expense = IncomeExpense.new
  end

  # GET /income_expenses/1/edit
  def edit
  end

  # POST /income_expenses
  # POST /income_expenses.json
  def create
    @income_expense = IncomeExpense.new(income_expense_params)

    respond_to do |format|
      if @income_expense.save
        format.html { redirect_to @income_expense, notice: 'Income expense was successfully created.' }
        format.json { render :show, status: :created, location: @income_expense }
      else
        format.html { render :new }
        format.json { render json: @income_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /income_expenses/1
  # PATCH/PUT /income_expenses/1.json
  def update
    respond_to do |format|
      if @income_expense.update(income_expense_params)
        format.html { redirect_to @income_expense, notice: 'Income expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @income_expense }
      else
        format.html { render :edit }
        format.json { render json: @income_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_expenses/1
  # DELETE /income_expenses/1.json
  def destroy
    @income_expense.destroy
    respond_to do |format|
      format.html { redirect_to income_expenses_url, notice: 'Income expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income_expense
      @income_expense = @borrower.income_expense
    end

    def set_mortgage
      @mortgage = current_mortgage
    end

    def set_borrower
      @borrower = @mortgage.borrowers.first if @mortgage.present?
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def income_expense_params
      params.require(:income_expense).permit(:income_expense_id, :borrower_id, :base_income, :over_time, :bonuses, :commissions, :dividends_interest, :net_rental_income, :other_income, :rent, :first_mortgage, :other_financing, :harzard_insurance, :real_estate_taxes, :mortage_insurance, :home_owner_assn_dues)
    end
end
