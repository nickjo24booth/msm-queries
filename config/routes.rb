Rails.application.routes.draw do
  get("/directors/eldest", { :controller => "directors", :action => "eldest"})
  get("/directors/youngest", { :controller => "directors", :action => "youngest"})
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index"})
  get("/directors/:id", { :controller => "directors", :action => "director_details"})
  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:id", { :controller => "movies", :action => "movie_details"})
  get("/actors", { :controller => "actors", :action => "index"})
  get("/actors/:id", { :controller => "actors", :action => "actor_details"})
  
end
