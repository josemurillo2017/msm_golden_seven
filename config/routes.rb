Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/",{ :controller => "actors", :action => "index" } )

  #Update form
  get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })
  get("/actors/:id/edit", { :controller => "actors", :action => "edit_form" })
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })

  get("/update_movie", { :controller => "movies", :action => "update" })
  get("/update_actor", { :controller => "actors", :action => "update" })
  get("/update_director", { :controller => "directors", :action => "update"})

  get("/movies", { :controller => "movies", :action => "index" })
  get("/actors", { :controller => "actors", :action => "index" })
  get("/directors", { :controller => "directors", :action => "index" })

  #Create specific person
  get("/movies/new_form", { :controller => "movies", :action => "create_form" })
  get("/actors/new_form", { :controller => "actors", :action => "create_form" })
  get("/directors/new_form", { :controller => "directors", :action => "create_form"})

  #Save specific person
  get("/save_movie", { :controller => "movies", :action => "save" })
  get("/save_actor", { :controller => "actors", :action => "save" })
  get("/save_director", { :controller => "directors", :action => "save"})

  # Search specific person
  get("/movies/:id", { :controller => "movies", :action => "find" })
  get("/actors/:id", { :controller => "actors", :action => "find" })
  get("/directors/:id", { :controller => "directors", :action => "find" })

  #Delete specific person
  get("/delete_movie/:id", { :controller => "movies", :action => "delete" })
  get("/delete_actor/:id", { :controller => "actors", :action => "delete" })
  get("/delete_director/:id", { :controller => "directors", :action => "delete" })



end
