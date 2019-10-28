class ThumbnailsController < ApplicationController
  def new
  end

  def index
    @thumbnails = Thumbnail.all
  end

  def create
    @thumbnail = Thumbnail.create!(thumbnail_params)
    redirect_to root_url
  end

  private
  def thumbnail_params
    params.require(:thumbnail).permit(:picture)
  end
end
