Rails.application.routes.draw do
  resources :inputs, only: [:index, :show]
  resources :data_files, except: [:edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'data_files#index'
end
