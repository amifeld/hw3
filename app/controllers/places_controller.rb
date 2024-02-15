class PlacesController < ApplicationController
  def index
    # find all Place rows
    @places = Place.all
    # render companies/index view
  end
  def show
    # find a Place
    @places = Place.find_by({"id" => params["id"]})
    # render companies/show view with details about Place
  end

  def new
    # render view with new Place form
  end

  def create
    # start with a new Place
    @places = Place.new
    # assign user-entered form data to Place's columns
    @places["name"] = params["name"]
    # save Place row
    @places.save
    # redirect user
    redirect_to "/places"
  end

  def edit
    # find a Place
    # render view with edit Place form
  end
end
