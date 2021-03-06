Rails.application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})

  match('/', {:via => :get, :to => 'species#index'})

  match('species/:id/sightings/new', {:via => :get, :to => 'sightings#new'})
  match('species/:id/sightings', {:via => :post, :to => 'sightings#create'})
  match('sightings/:id', {:via => :get, :to => 'sightings#show'})
  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('species/:id/sightings/edit', {:via => :get, :to => 'sightings#edit'})


  match('regions', {:via => :get, :to => 'regions#index'})
  match('regions/new', {:via => :get, :to => 'regions#new'})
  match('regions/:id', {:via => :get, :to => 'regions#show'})
  # match('regions/')


end


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
# end
