Rails.application.routes.draw do
    post "/loginClient" , to:"clients#login"
    post "/registerClient", to: "clients#create"
    post "/registerArtist", to: "employees#create"
    post "/loginArtist" , to:"employees#login"
    get "/allArtist", to: "employees#index"
    post "/createAdmin", to: "employees#create_admin"
end
