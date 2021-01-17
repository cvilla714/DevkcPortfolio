class TechnologiesController < ApplicationController
  before_action :set_technology, only: %i[edit show update destroy]
  access all: %i[show index], user: { except: %i[destroy new edit update edit create] }, site_admin: :all
  def index
    @technologies = Technology.all
  end

  def new
    @techology = Technology.new
  end

  def create
    @ptechnology = Technolgoy.new(technology_params)

    respond_to do |format|
      if @technology.save
        format.html { redirect_to technologies_path, notice: 'Your technology has been added.' }
        format.json { render :show, status: :created, location: @technology }
      else
        format.html { render :new }
        format.json { render json: @technology.errors, status: :unprocessable_entity }
      end
    end
  end

  #   def udpate
  def edit; end

  def update
    respond_to do |format|
      # if @portfolios_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
      if @technology.update(technology_params)
        format.html { redirect_to technologies_path, notice: 'Technology was successfully updated.' }
        format.json { render :show, status: :ok, location: @technology_items }
      else
        format.html { render :edit }
        format.json { render json: @techology.errors, status: :unprocessable_entity }
      end
    end
  end

  def show; end

  def destroy
    @technology.destroy
    respond_to do |format|
      format.html { redirect_to technology_url, notice: 'Technology was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_technology
    @techology = Technology.find(params[:id])
  end

  def techology_params
    params.require(:technology).permit(:name, :portfolio_id)
  end
end
