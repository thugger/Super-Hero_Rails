class SuperHeroesController < ApplicationController
  before_action :set_super_hero, only: [:show, :edit, :update, :destroy]

  # GET /super_heroes
  # GET /super_heroes.json
  def index
    @super_heroes = SuperHero.all
  end

  # GET /super_heroes/1
  # GET /super_heroes/1.json
  def show
  end

  # GET /super_heroes/new
  def new
    @super_hero = SuperHero.new
  end

  # GET /super_heroes/1/edit
  def edit
  end

  # POST /super_heroes
  # POST /super_heroes.json
  def create
    @super_hero = SuperHero.new(super_hero_params)

    respond_to do |format|
      if @super_hero.save
        format.html { redirect_to @super_hero, notice: 'Super hero was successfully created.' }
        format.json { render :show, status: :created, location: @super_hero }
      else
        format.html { render :new }
        format.json { render json: @super_hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_heroes/1
  # PATCH/PUT /super_heroes/1.json
  def update
    respond_to do |format|
      if @super_hero.update(super_hero_params)
        format.html { redirect_to @super_hero, notice: 'Super hero was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_hero }
      else
        format.html { render :edit }
        format.json { render json: @super_hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_heroes/1
  # DELETE /super_heroes/1.json
  def destroy
    @super_hero.destroy
    respond_to do |format|
      format.html { redirect_to super_heroes_url, notice: 'Super hero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_hero
      @super_hero = SuperHero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def super_hero_params
      params.require(:super_hero).permit(:real_name, :hero_name)
    end
end
