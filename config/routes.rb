Rails.application.routes.draw do
  devise_for :users
  
  resources :project do 
    collection do
       get 'team_lead_details'
       get 'task/show'
      end
  end
   



  root to: "home#index"
  get  '/project/new'
  get  '/assign_project/new'
  get  '/employee/new'
  post '/employee/create'
  post '/assign_project/create'
  post '/employee/edit'
  get  '/task/new'
  post '/task/create'



  resources :task do
    collection do
      get 'edit'
      end
    end
    resources :assign_project do
    collection do
      get 'edit'
      end
    end
     resources :employee do
    collection do
      get 'edit'
      end
    end
#get "/create_project/team_lead_details"
#post '/create_project/team_lead_details'
  #get 'create_project'=>'create_project#new'
 # get 'task/new'
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
    #resources :create_project do
     
#end
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
# blacklisting - these are not in your controller
# resource :users, exclude: [:show, :destroy], via: [:get, :post]

# whitelisting - these are in your controller
#resource :users#, only: [:index], via: [:get, :post]
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
  get ':controller(/:action(/:id))(.:format)'
end
