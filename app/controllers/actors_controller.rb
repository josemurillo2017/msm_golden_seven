class ActorsController < ApplicationController
  def index
    @model_list = Actor.all
    render("/show.html.erb")
  end

  def find
    @id = params[:id]
    @object = Actors.find(@id)
    render("/find.html.erb")
  end

  def delete
    @id = params[:id]
    @object = Actors.find(@id)
    @object.delete
    redirect_to("/index.html.erb")
  end

  def create_form
    render("/create_form.html.erb")
  end


  def save
    p = Actors.new
    #Insert specific info
    p.save
    render("/save.html.erb")
  end

  def edit_form
    @id = params[:id]
    @object = Actors.find(@id)
    render("/edit_form.html.erb")
  end

  def update
    @id = params[:id]
    @object = Actors.find(@id)
    #Insert specific info


    @object.save
    render("/update.html.erb")
  end
end
