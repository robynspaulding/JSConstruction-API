class AboutsController < ApplicationController
  def index
    abouts = About.all
    render json: abouts.as_json
  end

  def create
    about = About.new(
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
    photo.destroy
    render json: {message: "Selection successfully destoryed."}
  end
end
