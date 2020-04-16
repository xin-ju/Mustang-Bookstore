Rails.application.routes.draw do
  root to: redirect('/home', status: 302)
  get 'home', to: 'static_pages#home', as: 'home'
  get 'sign_up', to: 'static_pages#sign_up', as: 'sign_up'
  post 'sign_up', to: 'static_pages#new_sign_up', as: 'new_sign_up'
  get 'log_in', to: 'static_pages#log_in', as: 'log_in'
  post 'log_in', to: 'static_pages#new_log_in', as: 'new_log_in'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
