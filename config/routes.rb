# == Route Map
#
#                 Prefix Verb   URI Pattern                                            Controller#Action
#                  login GET    /login(.:format)                                       session#new
#                        POST   /login(.:format)                                       session#create
#                        DELETE /login(.:format)                                       session#destroy
#                   root GET    /                                                      pages#home
#               cuisines GET    /cuisines(.:format)                                    cuisines#index
#                        POST   /cuisines(.:format)                                    cuisines#create
#            new_cuisine GET    /cuisines/new(.:format)                                cuisines#new
#           edit_cuisine GET    /cuisines/:id/edit(.:format)                           cuisines#edit
#                cuisine GET    /cuisines/:id(.:format)                                cuisines#show
#                        PATCH  /cuisines/:id(.:format)                                cuisines#update
#                        PUT    /cuisines/:id(.:format)                                cuisines#update
#                        DELETE /cuisines/:id(.:format)                                cuisines#destroy
#     restaurant_reviews GET    /restaurants/:restaurant_id/reviews(.:format)          reviews#index
#                        POST   /restaurants/:restaurant_id/reviews(.:format)          reviews#create
#  new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format)      reviews#new
# edit_restaurant_review GET    /restaurants/:restaurant_id/reviews/:id/edit(.:format) reviews#edit
#      restaurant_review GET    /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#show
#                        PATCH  /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#update
#                        PUT    /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#update
#                        DELETE /restaurants/:restaurant_id/reviews/:id(.:format)      reviews#destroy
#       restaurant_likes GET    /restaurants/:restaurant_id/likes(.:format)            likes#index
#                        POST   /restaurants/:restaurant_id/likes(.:format)            likes#create
#    new_restaurant_like GET    /restaurants/:restaurant_id/likes/new(.:format)        likes#new
#   edit_restaurant_like GET    /restaurants/:restaurant_id/likes/:id/edit(.:format)   likes#edit
#        restaurant_like GET    /restaurants/:restaurant_id/likes/:id(.:format)        likes#show
#                        PATCH  /restaurants/:restaurant_id/likes/:id(.:format)        likes#update
#                        PUT    /restaurants/:restaurant_id/likes/:id(.:format)        likes#update
#                        DELETE /restaurants/:restaurant_id/likes/:id(.:format)        likes#destroy
#            restaurants GET    /restaurants(.:format)                                 restaurants#index
#                        POST   /restaurants(.:format)                                 restaurants#create
#         new_restaurant GET    /restaurants/new(.:format)                             restaurants#new
#        edit_restaurant GET    /restaurants/:id/edit(.:format)                        restaurants#edit
#             restaurant GET    /restaurants/:id(.:format)                             restaurants#show
#                        PATCH  /restaurants/:id(.:format)                             restaurants#update
#                        PUT    /restaurants/:id(.:format)                             restaurants#update
#                        DELETE /restaurants/:id(.:format)                             restaurants#destroy
#                  users GET    /users(.:format)                                       users#index
#                        POST   /users(.:format)                                       users#create
#               new_user GET    /users/new(.:format)                                   users#new
#              edit_user GET    /users/:id/edit(.:format)                              users#edit
#                   user GET    /users/:id(.:format)                                   users#show
#                        PATCH  /users/:id(.:format)                                   users#update
#                        PUT    /users/:id(.:format)                                   users#update
#                        DELETE /users/:id(.:format)                                   users#destroy

Rails.application.routes.draw do
  # get 'session/new'
  # get 'users/new'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
delete '/login' => 'session#destroy'

  root :to => 'pages#home'

  resources :cuisines

  resources :restaurants do
    resources :reviews
    resources :likes
  end

  resources :users

end
