Rails.application.routes.draw do

  devise_for :users
  root to: redirect('/home', status: 302)
  get 'home', to: 'static_pages#home', as: 'home'
  get 'books', to: 'books#index', as: 'books' # index
  get 'books/:id', to: 'books#show', as: 'books' # show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
