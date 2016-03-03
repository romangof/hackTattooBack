Rails.application.routes.draw do
    post "/login" , to:"clients#login"
    post "/register"  => "clients#create"
    post "/registerArtist", to: "employees#create"
    post "/loginArtist" , to:"employees#login"

end
