Rails.application.routes.draw do
  resources :inputs, only: [:index, :show]
  resources :data_files
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
