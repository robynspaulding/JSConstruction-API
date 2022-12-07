class PortfoliosController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    portfolios = Portfolio.all
    render json: portfolios.as_json
  end

  def create
    portfolio = Portfolio.new(
      user_id: current_user.id,
      job_name: params[:job_name],
      description: params[:description],
      image_url: params[:image_url]
    )

    portfolio.save
    render json: portfolio.as_json
  end

  def show
    portfolio = Portfolio.find_by(id: params[:id])
    render json: portfolio.as_json
  end

  def update
    portfolio = Portfolio.find_by(id: params[:id])
    portfolio.job_name = params[:job_name] || portfolio.job_name
    portfolio.description =  params[:description] || portfolio.description
    portfolio.save
    portfolio.image_url =  params[:image_url] || portfolio.image_url
    portfolio.save
    render json: portfolio.as_json
  end

  def destroy
    portfolio = Portfolio.find_by(id: params[:id])
    portfolio.destroy
    render json: {message: "Selection successfully destoryed."}
  end
end
