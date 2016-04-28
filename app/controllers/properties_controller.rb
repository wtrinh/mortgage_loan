class PropertiesController < ApplicationController
  before_action :set_mortgage
  set_tab :properties
  # GET /properties
  # GET /properties.json
  def index
    if @mortgage && @mortgage.property.present?
     redirect_to action: "edit", id: @mortgage.property.id
    elsif @mortgage.present?
     redirect_to action: "new"   
    else
      redirect_to new_mortgage_url
    end 
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
    @property = @mortgage.property
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)
    @property.mortgage = @mortgage
    
    respond_to do |format|
      if @property.save
        flash[:notice] = 'Property was successfully created.'
        format.html { redirect_to edit_property_path @property }
        format.json { render json: [@mortgage, @property], status: :created, location: [@mortgage, @property] }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    @property = @mortgage.property
    respond_to do |format|
      if @property.update(property_params)
        flash[:notice] = 'Property was successfully updated.'
        format.html { redirect_to edit_property_path @property }
        format.json { render json: [@mortgage, @property], status: :ok, location: [@mortgage, @property] }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_mortgage
      @mortgage = current_mortgage
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:address_line_1, :address_line_2, :year_built, :purpose_of_loan, :property_use, :title_name, :source_of_down_payemnt)
    end
end
