Rails.application.routes.draw do
  root to: 'posts#index'
  get '/hello_world', to: 'application#hello_world'

  resources :posts do
    collection do
      get 'popular', action: :index, popular: true
    end

    get 'preview', on: :member
    resources :comments, only: [:create, :destroy]
  end

  match 'author/:id', to: 'authors#update', via: [:put, :patch], as: :authors_update

  get '/home', to: redirect('/')
end
