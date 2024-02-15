class EntriesController < ApplicationController
  def index
    # find all Entry rows
    @entries = Entry.all
    # render companies/index view
  end
  def show
    # find a Entry
    @entries = Entry.find_by({"id" => params["id"]})
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
    # save Entry row
    @entries.save
    # redirect user
    redirect_to "/entries"
  end

  def edit
    # find a Entry
    # render view with edit Entry form
  end

end
