Rails.application.routes.draw do
  get("/directors/eldest", { :controller => "directors", :action => "eldest"})
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index"})
  get("/directors/:id", { :controller => "directors", :action => "director_details"})
end
