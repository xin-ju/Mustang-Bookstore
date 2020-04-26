Rails.application.routes.draw do

  devise_for :users
  root to: redirect('/home', status: 302)
  get 'home', to: 'static_pages#home', as: 'home'
  get 'books', to: 'books#index', as: 'books' # index
  get 'books/new', to: 'books#new', as: 'new_book' # new
  post 'books', to: 'books#create' # create
  get 'books/:id', to: 'books#show', as: 'book' # show
  get 'books/:id/edit', to: 'books#edit', as: 'edit_book' # edit
  patch 'books/:id', to: 'books#update' # update (as needed)
  put 'books/:id', to: 'books#update' # update (full replacement)
  post 'review', to: 'books#leave_feedback', as: 'leave_feedback'
  get 'search', to: "books#search"

  get 'carts/show'
  resources :books do
  end
  resource :carts, only:[:show]
  resources :cart_items


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end