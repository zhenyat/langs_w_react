Rails.application.routes.draw do
  root 'dashboard#index'
  get 'user/index'
  get 'user/create'
  get :search, controller: :dashboard
  get 'home/index'
  get  'demo/index'
  resources :entries
end
