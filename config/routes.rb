Rails.application.routes.draw do
  resources :mycontacts
  root 'mycontacts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
