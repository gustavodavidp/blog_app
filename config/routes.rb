Rails.application.routes.draw do
<<<<<<< HEAD
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles do
  	resources :comments
  end
  root 'welcome#index'
=======
  devise_for :users
  get 'welcome/index'
  resources :articles do
    resources :comments
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
>>>>>>> actualizacion
end
