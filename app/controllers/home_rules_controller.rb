class HomeRulesController < ApplicationController
  before_action :set_home_rule, only: [:show, :edit, :update, :destroy]

  # GET /home_rules
  # GET /home_rules.json
  def index
    @home_rules = HomeRule.all
  end

  # GET /home_rules/1
  # GET /home_rules/1.json
  def show
  end

  # GET /home_rules/new
  def new
    @home_rule = HomeRule.new
  end

  # GET /home_rules/1/edit
  def edit
  end

  # POST /home_rules
  # POST /home_rules.json
  def create
    @home_rule = HomeRule.new(home_rule_params)

    respond_to do |format|
      if @home_rule.save
        format.html { redirect_to @home_rule, notice: 'Home rule was successfully created.' }
        format.json { render :show, status: :created, location: @home_rule }
      else
        format.html { render :new }
        format.json { render json: @home_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_rules/1
  # PATCH/PUT /home_rules/1.json
  def update
    respond_to do |format|
      if @home_rule.update(home_rule_params)
        format.html { redirect_to @home_rule, notice: 'Home rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_rule }
      else
        format.html { render :edit }
        format.json { render json: @home_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_rules/1
  # DELETE /home_rules/1.json
  def destroy
    @home_rule.destroy
    respond_to do |format|
      format.html { redirect_to home_rules_url, notice: 'Home rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_rule
      @home_rule = HomeRule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_rule_params
      params.require(:home_rule).permit(:rule_id, :home_id)
    end
end
