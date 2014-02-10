class VideosController < ApplicationController
  before_filter do
    redirect_to :root if Rails.env.production?
  end

  layout "application"

  def index
  end

  def home
    @categories = Category.all
  end

  def show
    @video = Video.find(params[:id])
  end
end
