class PortfoliosController < ApplicationController
  before_action :set_portfolios_items, only: %i[edit show update destroy]
  access all: %i[show index], user: { except: %i[destroy new edit update edit create] }, site_admin: :all
  def index
    @portfolios_items = Portfolio.by_position
    @page_title = 'DevkcPorfolios'
  end

  def angular
    @angular_portfolios_items = Portfolio.angular
  end

  def rails
    @rails_portfolios_items = Portfolio.ruby_on_rails_portfolio_items
  end

  def service
    @service_portfolios_items = Portfolio.service
  end

  def new
    @portfolios_items = Portfolio.new
    3.times { @portfolios_items.technologies.build }
  end

  def create
    @portfolios_items = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolios_items.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio has been added.' }
        format.json { render :show, status: :created, location: @portfolios_items }
      else
        format.html { render :new }
        format.json { render json: @portfolios_items.errors, status: :unprocessable_entity }
      end
    end
  end

  #   def udpate
  def edit; end

  def update
    respond_to do |format|
      # if @portfolios_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
      if @portfolios_items.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolios_items }
      else
        format.html { render :edit }
        format.json { render json: @portfolios_items.errors, status: :unprocessable_entity }
      end
    end
  end

  def show; end

  def destroy
    @portfolios_items.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_portfolios_items
    @portfolios_items = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      :portfolio_image,
                                      # portfolio_image:[],
                                      technologies_attributes: [:name,:destroy])
  end
end
