Rails.application.routes.draw do

  devise_for :users
  root to: redirect('/home', status: 302)
  get 'home', to: 'static_pages#home', as: 'home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
