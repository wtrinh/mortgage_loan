class DetailsController < ApplicationController
  before_action :set_mortgage, :set_borrower
  before_action :set_detail, only: [:show, :edit, :update, :destroy]
  set_tab :details
  # GET /details
  # GET /details.json
  def index
  end

  # GET /details/1
  # GET /details/1.json
  def show
  end

  # GET /details/new
  def new
    @detail = Detail.new
  end

  # GET /details/1/edit
  def edit
  end

  # POST /details
  # POST /details.json
  def create
    @detail = Detail.new(detail_params)
    @detail.mortgage = @mortgage

    respond_to do |format|
      if @detail.save
        format.html { redirect_to edit_mortgage_detail_path(@mortgage, @detail), notice: 'Detail was successfully created.' }
        format.json { render :show, status: :created, location: @detail }
      else
        format.html { render :new }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details/1
  # PATCH/PUT /details/1.json
  def update
    respond_to do |format|
      if @detail.update(detail_params)
        format.html { redirect_to edit_mortgage_detail_path(@mortgage, @detail), notice: 'Detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail }
      else
        format.html { render :edit }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details/1
  # DELETE /details/1.json
  def destroy
    @detail.destroy
    respond_to do |format|
      format.html { redirect_to details_url, notice: 'Detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail
      @detail = @mortgage.detail
    end

    def set_mortgage
      @mortgage = current_mortgage
    end

    def set_borrower
      @borrower = @mortgage.borrowers.first if @mortgage.present?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_params
      params.require(:detail).permit(:detail_id, :purchase_price, :alteration_cost, :land_cost, :refinance_amount, :estimated_prepaid_items, :estimated_closing_costs, :pmi_mip_funding_fee, :discount_amount, :subordinate_financing, :closing_costs_paid_by_seller, :other_credits, :other_credits_note, :loan_amount, :pmi_mip_funding_fee_financed_amount)
    end
end
