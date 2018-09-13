Rails.application.routes.draw do
  root to: 'pages#home'
  get 'blog/:id', to: 'blog#show', as: 'post'
  get 'blog', to: 'blog#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
