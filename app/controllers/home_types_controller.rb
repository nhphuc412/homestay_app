class HomeTypesController < ApplicationController
  before_action :set_home_type, only: [:show, :edit, :update, :destroy]

  # GET /home_types
  # GET /home_types.json
  def index
    @home_types = HomeType.all
  end

  # GET /home_types/1
  # GET /home_types/1.json
  def show
  end

  # GET /home_types/new
  def new
    @home_type = HomeType.new
  end

  # GET /home_types/1/edit
  def edit
  end

  # POST /home_types
  # POST /home_types.json
  def create
    @home_type = HomeType.new(home_type_params)

    respond_to do |format|
      if @home_type.save
        format.html { redirect_to @home_type, notice: 'Home type was successfully created.' }
        format.json { render :show, status: :created, location: @home_type }
      else
        format.html { render :new }
        format.json { render json: @home_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_types/1
  # PATCH/PUT /home_types/1.json
  def update
    respond_to do |format|
      if @home_type.update(home_type_params)
        format.html { redirect_to @home_type, notice: 'Home type was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_type }
      else
        format.html { render :edit }
        format.json { render json: @home_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_types/1
  # DELETE /home_types/1.json
  def destroy
    @home_type.destroy
    respond_to do |format|
      format.html { redirect_to home_types_url, notice: 'Home type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_type
      @home_type = HomeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_type_params
      params.require(:home_type).permit(:home_type_name, :image)
    end
end
