class PlacesController < ApplicationController
  def index
    # find all Place rows
    @places = Place.all
    # render companies/index view
  end
  def show
    # find a Place
    @places = Place.find_by({"id" => params["id"]})
    @entries = Entry.where({"place_id" => @places["id"]})
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
        @places = Place.find_by({ "id" => params["id"] })
    def update
      @places = Place.find_by({ "id" => params["id"] })
      @places["name"] = params["name"]
      @places.save
      redirect_to "/places/"
    end
  
    def destroy
      @places = Place.find_by({ "id" => params["id"] })
      @places.destroy
      redirect_to "/places/"
    end
    # render view with edit Place form
  end
end
