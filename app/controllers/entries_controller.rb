class EntriesController < ApplicationController
  def index
    # find all Entry rows
    @entries = Entry.all
    # render companies/index view
  end
  def show
    # find a Entry
    @entries = Entry.find_by({"id" => params["id"]})
    @places = Place.where({"id" => @entries["place_id"]})
    # render companies/show view with details about Entry
  end


  def new
    # render view with new Entry form
  end

  def create
    # start with a new Entry
    @entries = Entry.new
    # assign user-entered form data to Entry's columns
    @entries["title"] = params["title"]
    @entries["description"] = params["description"]
    @entries["posted_on"] = params["posted_on"]
    @entries["place_id"] = params["place_id"]
    # save Entry row
    @entries.save
    # redirect user
    redirect_to "/places/#{params["place_id"]}"
  end

  def edit
    # find a Entry
      @entries = Entry.find_by({ "id" => params["id"] })
    # render view with edit Entry form
  end

  def update
    @entries = Entry.find_by({ "id" => params["id"] })
    @entries["title"] = params["title"]
    @entries["description"] = params["description"]
    @entries["posted_on"] = params["posted_on"]
    @entries.save
    redirect_to "/places/#{params["place_id"]}"
  end

  def destroy
    @entries = Entry.find_by({ "id" => params["id"] })
    @entries.destroy
    redirect_to "/places/#{params["place_id"]}"
  end

end
