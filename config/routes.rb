Fogondemaria::Application.routes.draw do

  resources :drink_menus

  resources :food_menus

  get "managers/index"
  resources :tables

devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end


  post '/user/save' => 'managers#save'
  get '/users/create_user' => 'managers#create_user'
  post '/user' => 'users#create'

  get '/users/show_user/:id' => 'managers#show_user'
  get '/users/edit_user/:id' => 'managers#edit_user'
 
  root "welcome#index"



  get "waiters/index"
  get "waiters/take_order/:id" => "waiters#take_order", :as => 'take_order'
  get "waiters/take_drink_order/:id" => "waiters#take_drink_order", :as => 'take_drink_order'
  get "waiters/set_table/:id" => "waiters#set_table", :as => 'set_table'
  get "waiters/serving_food/:id" => "waiters#serving_food", :as => 'serving_food'
  post "waiters/create_order"
  post "waiters/create_order_drink"


  get "helpers/index"
  get "helpers/clean_table/:id" => "helpers#clean_table", :as => 'clean_tables'

  get "bartenders/index"
  get "bartenders/delivery/:id" => "bartenders#delivery", :as =>'drink_delivery'
  
  get "chefs/index"
  get "chefs/delivery/:id" => "chefs#delivery", :as =>'delivery'

  get '/cuentas' => 'managers#cuentas'
  get '/mesas' => 'helpers#mesas'

  get '/cuentas/user/role_admi/:id' => 'managers#role_admi', :as => 'role_admi'
  get '/cuentas/user/role_asistente/:id' => 'managers#role_asistente', :as => 'role_asistente'
  get '/cuentas/user/role_barman/:id' => 'managers#role_barman', :as => 'role_barman'
  get '/cuentas/user/role_mesero/:id' => 'managers#role_mesero', :as => 'role_mesero'
  get '/cuentas/user/role_chef/:id' => 'managers#role_chef', :as => 'role_chef'


  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
