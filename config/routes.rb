Rails.application.routes.draw do
  get '/hello_world', to: 'application#hello_world'

  get '/posts', to: 'posts#index'
  get '/posts/:id', to: 'posts#show'
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
  get 'posts/:id/edit', to: 'posts#edit'
  patch 'posts/:id', to: 'posts#update'
  put 'posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#destroy'

  post 'posts/:id/comments', to: 'comments#create'
  delete 'posts/:post_id/comments/:id', to: 'comments#destroy'
end
