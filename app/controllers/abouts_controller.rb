class AboutsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    abouts = About.all
    render json: abouts.as_json
  end

  def create
    about = About.new(
      user_id: current_user.id,
      summary: params[:summary],
      image_url: params[:image_url]
    )

    about.save
    render json: about.as_json
  end

  def show
    about = About.find_by(id: params[:id])
    render json: about.as_json
  end

  def update
    about = About.find_by(id: params[:id])
    about.summary = params[:summary] || about.summary
    about.image_url =  params[:image_url] || about.image_url
    about.save
    render json: about.as_json
  end

  def destroy
    about = About.find_by(id: params[:id])
    about.destroy
    render json: {message: "Selection successfully destoryed."}
  end
end
