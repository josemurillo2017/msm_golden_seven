class DirectorsController < ApplicationController
  def index
    @model_list = Director.all
    render("show.html.erb")
  end

  def find
    @id = params[:id]
    @model = Director.find(@id)
    render("find.html.erb")
  end

  def delete
    @id = params[:id]
    @object = Director.find(@id)
    @object.delete
    redirect_to("/directors")
  end

  def create_form
    render("create_form.html.erb")
  end


  def save
    p = Director.new
    #Insert specific info
    p.name = params["the_name"]
    p.bio = params["the_bio"]
    p.dob = params["the_dob"]
    p.image_url = params["the_image_url"]
    p.save
    redirect_to("/Directors")
  end

  def edit_form
    @id = params[:id]
    @object = Director.find(@id)
    render("edit_form.html.erb")
  end

  def update
    @id = params[:id]
    p = Director.find(@id)
    #Insert specific info
    p.name = params["the_name"]
    p.bio = params["the_bio"]
    p.dob = params["the_dob"]
    p.image_url = params["the_image_url"]
    p.save
    redirect_to("/directors")
  end


end
