class BathTypesController < ApplicationController
  before_action :set_bath_type, only: [:show, :edit, :update, :destroy]

  # GET /bath_types
  # GET /bath_types.json
  def index
    @bath_types = BathType.all
  end

  # GET /bath_types/1
  # GET /bath_types/1.json
  def show
  end

  # GET /bath_types/new
  def new
    @bath_type = BathType.new
  end

  # GET /bath_types/1/edit
  def edit
  end

  # POST /bath_types
  # POST /bath_types.json
  def create
    @bath_type = BathType.new(bath_type_params)

    respond_to do |format|
      if @bath_type.save
        format.html { redirect_to @bath_type, notice: 'Bath type was successfully created.' }
        format.json { render :show, status: :created, location: @bath_type }
      else
        format.html { render :new }
        format.json { render json: @bath_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bath_types/1
  # PATCH/PUT /bath_types/1.json
  def update
    respond_to do |format|
      if @bath_type.update(bath_type_params)
        format.html { redirect_to @bath_type, notice: 'Bath type was successfully updated.' }
        format.json { render :show, status: :ok, location: @bath_type }
      else
        format.html { render :edit }
        format.json { render json: @bath_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bath_types/1
  # DELETE /bath_types/1.json
  def destroy
    @bath_type.destroy
    respond_to do |format|
      format.html { redirect_to bath_types_url, notice: 'Bath type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bath_type
      @bath_type = BathType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bath_type_params
      params.require(:bath_type).permit(:bath_type_name)
    end
end
