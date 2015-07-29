class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

    id = params["id"].to_i
    @photo = Photo.find(id).source
    @caption = Photo.find(id).caption
    render("show.html.erb")

  end


end
