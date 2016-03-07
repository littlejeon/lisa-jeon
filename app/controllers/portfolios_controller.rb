class PortfoliosController < ApplicationController

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

  def delete
    @portfolio = Portfolio.find(params[:id])
    @portfolio.delete
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:name, :description, :tags, :image_upload)
  end

end
