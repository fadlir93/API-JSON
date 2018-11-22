Rails.application.routes.draw do
  #home controller routes.
  root  'home#index'
  get   'auth'            => 'home#auth'
  #get login token from knock
  post 'user_token' => 'user_token#create'

  #User actions
  get     '/users'          => 'users#index'
  get     '/users/current'  => 'users#current'
  post    '/users/create'   => 'users#create'
  patch   '/user/:id'       => 'users#update'
  delete  '/user/:id'       => 'users#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
