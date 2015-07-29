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

  def destroy

    id = params["id"].to_i
    @list_of_photos = Photo.all
    @list_of_photos.find(id).destroy
    render("index.html.erb")

  end

   def new_form

    render("new_form.html.erb")

  end



end
