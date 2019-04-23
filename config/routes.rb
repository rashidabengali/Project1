# == Route Map
#
#          Prefix Verb   URI Pattern                     Controller#Action
#            root GET    /                               pages#home
#        cuisines GET    /cuisines(.:format)             cuisines#index
#                 POST   /cuisines(.:format)             cuisines#create
#     new_cuisine GET    /cuisines/new(.:format)         cuisines#new
#    edit_cuisine GET    /cuisines/:id/edit(.:format)    cuisines#edit
#         cuisine GET    /cuisines/:id(.:format)         cuisines#show
#                 PATCH  /cuisines/:id(.:format)         cuisines#update
#                 PUT    /cuisines/:id(.:format)         cuisines#update
#                 DELETE /cuisines/:id(.:format)         cuisines#destroy
#     restaurants GET    /restaurants(.:format)          restaurants#index
#                 POST   /restaurants(.:format)          restaurants#create
#  new_restaurant GET    /restaurants/new(.:format)      restaurants#new
# edit_restaurant GET    /restaurants/:id/edit(.:format) restaurants#edit
#      restaurant GET    /restaurants/:id(.:format)      restaurants#show
#                 PATCH  /restaurants/:id(.:format)      restaurants#update
#                 PUT    /restaurants/:id(.:format)      restaurants#update
#                 DELETE /restaurants/:id(.:format)      restaurants#destroy
#         reviews GET    /reviews(.:format)              reviews#index
#                 POST   /reviews(.:format)              reviews#create
#      new_review GET    /reviews/new(.:format)          reviews#new
#     edit_review GET    /reviews/:id/edit(.:format)     reviews#edit
#          review GET    /reviews/:id(.:format)          reviews#show
#                 PATCH  /reviews/:id(.:format)          reviews#update
#                 PUT    /reviews/:id(.:format)          reviews#update
#                 DELETE /reviews/:id(.:format)          reviews#destroy
#           users GET    /users(.:format)                users#index
#                 POST   /users(.:format)                users#create
#        new_user GET    /users/new(.:format)            users#new

Rails.application.routes.draw do
  # get 'session/new'
  # get 'users/new'
  root :to => 'pages#home'

  resources :cuisines

  resources :restaurants do
    resources :reviews
  end

  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  get '/login' => 'session#create'
  get '/login' => 'session#destroy'
end
