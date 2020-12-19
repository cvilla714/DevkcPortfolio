# frozen_string_literal: true

class PortfoliosController < ApplicationController
  def index
    @portfolios_items = Portfolio.all
    @page_title = 'DevkcPortolios'

    # @portfolios_items = Portfolio.angular
    # @portfolios_items = Portfolio.ruby_on_rails_portfolio_items
    # @portfolios_items = Portfolio.where(subtitle: 'Angular')
    # @portfolios_items = Portfolio.where(subtitle: 'Ruby on Rails')
    # @portfolios_items = Portfolio.where(subtitle: "My Great Service")
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
    # @portfolios_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name]))
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
  def edit
    @portfolios_items = Portfolio.find(params[:id])
  end

  def update
    @portfolios_items = Portfolio.find(params[:id])

    respond_to do |format|
      # if @portfolios_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
      if @portfolios_items.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolios_items }
      else
        format.html { render :edit }
        format.json { render json: @portfolios_items.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @portfolios_items = Portfolio.find(params[:id])
  end

  def destroy
    # this will perform the lookup in the database table to destroy the elment selected
    @portfolios_items = Portfolio.find(params[:id])
    # this will destroy the elemlent
    @portfolios_items.destroy
    # this will reditect the user to the page we want
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    private

  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name])
    end
  end
