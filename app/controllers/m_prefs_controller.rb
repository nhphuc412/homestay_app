class MPrefsController < ApplicationController
  before_action :set_m_pref, only: [:show, :edit, :update, :destroy]

  # GET /m_prefs
  # GET /m_prefs.json
  def index
    @m_prefs = MPref.all
  end

  # GET /m_prefs/1
  # GET /m_prefs/1.json
  def show
  end

  # GET /m_prefs/new
  def new
    @m_pref = MPref.new
  end

  # GET /m_prefs/1/edit
  def edit
  end

  # POST /m_prefs
  # POST /m_prefs.json
  def create
    @m_pref = MPref.new(m_pref_params)

    respond_to do |format|
      if @m_pref.save
        format.html { redirect_to @m_pref, notice: 'M pref was successfully created.' }
        format.json { render :show, status: :created, location: @m_pref }
      else
        format.html { render :new }
        format.json { render json: @m_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_prefs/1
  # PATCH/PUT /m_prefs/1.json
  def update
    respond_to do |format|
      if @m_pref.update(m_pref_params)
        format.html { redirect_to @m_pref, notice: 'M pref was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_pref }
      else
        format.html { render :edit }
        format.json { render json: @m_pref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_prefs/1
  # DELETE /m_prefs/1.json
  def destroy
    @m_pref.destroy
    respond_to do |format|
      format.html { redirect_to m_prefs_url, notice: 'M pref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_pref
      @m_pref = MPref.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_pref_params
      params.require(:m_pref).permit(:pref_name)
    end
end
