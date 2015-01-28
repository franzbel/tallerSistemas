Fogondemaria::Application.routes.draw do

  resources :ingredient_cs

  resources :recipe_cs

  resources :recipes do
    resources :ingredients
  end


  resources :drink_menus

  resources :food_menus

  get "managers/index"
  resources :tables

devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

get '/distributor_chef' => 'distributor_chefs#distributor_chef'
get '/distributor_barman' => 'distributor_chefs#distributor_barman'
get '/distributor_mesero' => 'distributor_chefs#distributor_mesero'
get '/distributor_ayudante' => 'distributor_chefs#distributor_ayudante'


  post '/user/save' => 'managers#save'
  get '/users/create_user' => 'managers#create_user'
  post '/user' => 'users#create'

  get '/users/show_user/:id' => 'managers#show_user'
  get '/users/edit_user/:id' => 'managers#edit_user'
get '/user/actualizar/:id' => 'managers#actualizar'


     delete '/users/destroy/:id' => 'managers#destroy', :as => 'destroy'

 
  root "welcome#index"
  get '/mostrar_menu' => "welcome#mostrar_menu"
  get '/contacto' => "welcome#contacto"

get '/recipes/destroy/:id' => 'recipes#destroy'  


  get "waiters/index"
  get "waiters/notificaciones"
  
  get "waiters/ayuda_index"


  get "waiters/opciones/:id" => 'waiters#opciones', as: :opciones  
  get "waiters/ocupar_mesa/:id" => 'waiters#ocupar_mesa', as: :ocupar_mesa 
  get "waiters/pedido_mesa/:id" => 'waiters#pedido_mesa', as: :pedido_mesa  
  get "waiters/edit/:id" => 'waiters#edit', as: :edit
  post "waiters/update/:id" => 'waiters#update', as: :update
  get "waiters/cancelar/:id" => 'waiters#cancelar', as: :cancelar  


  get "waiters/take_order/:id" => "waiters#take_order", :as => 'take_order'
  get "waiters/take_drink_order/:id" => "waiters#take_drink_order", :as => 'take_drink_order'
  get "waiters/set_table/:id" => "waiters#set_table", :as => 'set_table'
  get "waiters/serving_food/:id" => "waiters#serving_food", :as => 'serving_food'
  post "waiters/create_order"
  post "waiters/create_order_drink"

 post "recipe_cs/create_recipec"

  get "helpers/index"
  get "helpers/clean_table/:id" => "helpers#clean_table", :as => 'clean_tables'

  get "bartenders/index"

  get "bartenders/delivery/:id" => "bartenders#delivery", :as =>'drink_delivery'
  


get '/recetas' => 'recipes#index'



  get "chefs/index"
  get "chefs/delivery/:id" => "chefs#delivery", :as =>'delivery'

  get '/cuentas' => 'managers#cuentas'
  get '/mesas' => 'helpers#mesas'

  get '/cuentas/user/role_admi/:id' => 'managers#role_admi', :as => 'role_admi'
  get '/cuentas/user/role_asistente/:id' => 'managers#role_asistente', :as => 'role_asistente'
  get '/cuentas/user/role_barman/:id' => 'managers#role_barman', :as => 'role_barman'
  get '/cuentas/user/role_mesero/:id' => 'managers#role_mesero', :as => 'role_mesero'
  get '/cuentas/user/role_chef/:id' => 'managers#role_chef', :as => 'role_chef'

get '/cuentas/user/asignar/:id' => 'managers#asignar', :as => 'asignar'

  get '/asignar/:id' => 'managers#asignar'

  
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
