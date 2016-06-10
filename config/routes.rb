Rails.application.routes.draw do

  get "/foods/new", :controller => "foods", :action => "ingredient_form"
  get "/foods/result", :controller => "foods", :action => "ingredient_link"


  # CREATE
  get "/plans/new", :controller => "plans", :action => "new"
  post "/create_plan", :controller => "plans", :action => "create"

  # READ
  get "/plans", :controller => "plans", :action => "index"
  get "/plans/:id", :controller => "plans", :action => "show"

  # UPDATE
  get "/plans/:id/edit", :controller => "plans", :action => "edit"
  post "/update_plan/:id", :controller => "plans", :action => "update"

  # DELETE
  get "/delete_plan/:id", :controller => "plans", :action => "destroy"
  #------------------------------

  # CREATE
  get "/options/new", :controller => "options", :action => "new"
  post "/create_option", :controller => "options", :action => "create"

  # READ
  get "/options", :controller => "options", :action => "index"
  get "/options/:id", :controller => "options", :action => "show"

  # UPDATE
  get "/options/:id/edit", :controller => "options", :action => "edit"
  post "/update_option/:id", :controller => "options", :action => "update"

  # DELETE
  get "/delete_option/:id", :controller => "options", :action => "destroy"
  #------------------------------

  root 'plans#index'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
