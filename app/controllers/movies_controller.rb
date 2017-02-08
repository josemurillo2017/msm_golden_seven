class MoviesController < ApplicationController
  def index
    @model_list = Movie.all
    render("show.html.erb")
  end

  def find
    @id = params[:id]
    @model = Movie.find(@id)
    render("find.html.erb")
  end

  def delete
    @id = params[:id]
    @object = Movie.find(@id)
    @object.delete
    redirect_to("/movies")
  end

  def create_form
    render("create_form.html.erb")
  end


  def save
    p = Movie.new
    #Insert specific info
    p.title = params["the_title"]
    p.year = params["the_year"]
    p.duration = params["the_duration"]
    p.description = params["the_description"]
    p.image_url = params["the_image_url"]
    p.save
    redirect_to("/movies")
  end

  def edit_form
    @id = params[:id]
    @object = Movie.find(@id)
    render("edit_form.html.erb")
  end

  def update
    @id = params[:id]
    p = Movie.find(@id)
    #Insert specific info
    p.title = params["the_title"]
    p.year = params["the_year"]
    p.duration = params["the_duration"]
    p.description = params["the_description"]
    p.image_url = params["the_image_url"]
    p.save
    redirect_to("/movies")
  end


end
