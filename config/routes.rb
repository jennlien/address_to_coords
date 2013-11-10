AddressToCoords::Application.routes.draw do
  get("/coords", { :controller => "addresses", :action => "fetch_coordinates" })
  get("/new", { :controller => "addresses", :action => "new_location" })
end
