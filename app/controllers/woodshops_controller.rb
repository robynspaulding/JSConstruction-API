class WoodshopsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    woodshops = Woodshop.all
    render json: woodshops.as_json
  end

  def create
    woodshop = Woodshop.new(
      user_id: current_user.id,
      item: params[:item],
      description: params[:description],
      image_url: params[:image_url]
    )

    woodshop.save
    render json: woodshop.as_json
  end

  def show
    woodshop = Woodshop.find_by(id: params[:id])
    render json: woodshop.as_json
  end

  def update
    woodshop = Woodshop.find_by(id: params[:id])
    woodshop.item = params[:item] || woodshop.item
    woodshop.description =  params[:description] || woodshop.description
    woodshop.save
    woodshop.image_url =  params[:image_url] || woodshop.image_url
    woodshop.save
    render json: woodshop.as_json
  end

  def destroy
    woodshop = Woodshop.find_by(id: params[:id])
    woodshop.destroy
    render json: {message: "Selection successfully destoryed."}
  end
end
