Rails.application.routes.draw do
	#clients
    post "/loginClient" , to:"clients#login"
    post "/registerClient", to: "clients#create"
  #employees
    post "/registerArtist", to: "employees#create"
    post "/loginArtist" , to:"employees#login"
  #admin
    get "/allArtist", to: "employees#index"
    post "/createAdmin", to: "employees#create_admin"

end
