class MoviesController < ApplicationController
  def index
    render("/show.html.erb")
  end

  def find
    render("/find.html.erb")
  end

  def delete
    render("/delete.html.erb")
  end

  def create_form
    render("/create_form.html.erb")
  end


  def save
    render("/save.html.erb")
  end

  def edit_form
    render("/edit_form.html.erb")
  end

  def update
    render("/update.html.erb")
  end

end
