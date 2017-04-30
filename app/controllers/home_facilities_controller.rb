class HomeFacilitiesController < ApplicationController
  before_action :set_home_facility, only: [:show, :edit, :update, :destroy]

  # GET /home_facilities
  # GET /home_facilities.json
  def index
    @home_facilities = HomeFacility.all
  end

  # GET /home_facilities/1
  # GET /home_facilities/1.json
  def show
  end

  # GET /home_facilities/new
  def new
    @home_facility = HomeFacility.new
  end

  # GET /home_facilities/1/edit
  def edit
  end

  # POST /home_facilities
  # POST /home_facilities.json
  def create
    @home_facility = HomeFacility.new(home_facility_params)

    respond_to do |format|
      if @home_facility.save
        format.html { redirect_to @home_facility, notice: 'Home facility was successfully created.' }
        format.json { render :show, status: :created, location: @home_facility }
      else
        format.html { render :new }
        format.json { render json: @home_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_facilities/1
  # PATCH/PUT /home_facilities/1.json
  def update
    respond_to do |format|
      if @home_facility.update(home_facility_params)
        format.html { redirect_to @home_facility, notice: 'Home facility was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_facility }
      else
        format.html { render :edit }
        format.json { render json: @home_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_facilities/1
  # DELETE /home_facilities/1.json
  def destroy
    @home_facility.destroy
    respond_to do |format|
      format.html { redirect_to home_facilities_url, notice: 'Home facility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_facility
      @home_facility = HomeFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_facility_params
      params.require(:home_facility).permit(:home_id, :facility_id)
    end
end
