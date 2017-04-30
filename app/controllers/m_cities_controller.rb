class MCitiesController < ApplicationController
  before_action :set_m_city, only: [:show, :edit, :update, :destroy]

  # GET /m_cities
  # GET /m_cities.json
  def index
    @m_cities = MCity.all
  end

  # GET /m_cities/1
  # GET /m_cities/1.json
  def show
  end

  # GET /m_cities/new
  def new
    @m_city = MCity.new
  end

  # GET /m_cities/1/edit
  def edit
  end

  # POST /m_cities
  # POST /m_cities.json
  def create
    @m_city = MCity.new(m_city_params)

    respond_to do |format|
      if @m_city.save
        format.html { redirect_to @m_city, notice: 'M city was successfully created.' }
        format.json { render :show, status: :created, location: @m_city }
      else
        format.html { render :new }
        format.json { render json: @m_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_cities/1
  # PATCH/PUT /m_cities/1.json
  def update
    respond_to do |format|
      if @m_city.update(m_city_params)
        format.html { redirect_to @m_city, notice: 'M city was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_city }
      else
        format.html { render :edit }
        format.json { render json: @m_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_cities/1
  # DELETE /m_cities/1.json
  def destroy
    @m_city.destroy
    respond_to do |format|
      format.html { redirect_to m_cities_url, notice: 'M city was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_city
      @m_city = MCity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_city_params
      params.require(:m_city).permit(:pref_id, :city_name)
    end
end
