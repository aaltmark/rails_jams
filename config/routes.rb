Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :artists, only: [:index, :show, :new, :edit]

  patch '/artists/:id', to: 'artists#update'
  
  post '/artists', to: 'artists#create'
end
