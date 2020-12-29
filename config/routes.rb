Rails.application.routes.draw do
  root 'home#index'
  get 'home/about'
  get '/table1', to: 'home#table1'
  get '/table2', to: 'home#table2'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
