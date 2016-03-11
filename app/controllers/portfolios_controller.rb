class PortfoliosController < ApplicationController
  before_action :authorize, only: [:index, :show]

  def index
    @portfolio = Portfolio.all
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    # binding.pry
    @portfolio = Portfolio.create(portfolio_params)
    redirect_to portfolios_path 
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])
    @portfolio.update(portfolio_params)
    redirect_to portfolios_path
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
    redirect_to portfolios_path
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:name, :description, :portfolio_tags, :image_upload, :user_id)
  end

end
