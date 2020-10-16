Rails.application.routes.draw do

get("/square/new", { :controller => "application", :action => "blank_square_form" })

#devise_for : admin_users, ActiveAdmin:

end
