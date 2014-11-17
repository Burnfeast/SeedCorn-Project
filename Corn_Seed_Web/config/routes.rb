Rails.application.routes.draw do
  root 'start_pages#login'



  get 'homet'        =>  'teacher_pages#Home'

  get 'create'      =>  'teacher_pages#Create'

  get 'studentlist' =>  'teacher_pages#StudentList'

  get 'studentinfo' =>  'teacher_pages#StudentInfo'

  get 'homes'      =>  'student_pages#Home'

  get 'weather'   =>  'student_pages#Weather'

  get 'timeline'  =>  'student_pages#Timeline'

  get 'history'   =>  'student_pages#History'

  get 'extraresources' => 'student_pages#ExtraResources'

  get    'login'   => 'start_pages#new'
  post   'login'   => 'start_pages#create'
  delete 'logout'  => 'start_pages#destroy'

  resources :users

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
