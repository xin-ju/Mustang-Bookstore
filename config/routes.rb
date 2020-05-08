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
  delete 'books/:id', to: 'books#destroy' # destroy

  get 'books/:id/reviews/new', to: 'reviews#new', as: 'new_review' # new
  post 'books/:id/reviews/new', to: 'reviews#create' # create

  get '/tagged', to: "books#tagged", as: :tagged
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  

  resource :carts, only:[:show]
  resources :cart_items

  get 'wishlists/show'
  resource :wishlists, only:[:show]
  resources :wishlist_items
  
  get 'orders/', to: 'orders#index', as: 'orders' #index
  get 'orders/new', to: 'orders#new', as: 'new_order' #new - checkout to create order
  post 'orders', to: 'orders#create' # createS

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end