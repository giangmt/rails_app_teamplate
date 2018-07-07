Rails.application.routes.draw do
  get '/hello_world', to: 'application#hello_world'

  get '/list_posts', to: 'application#list_posts'

  get '/show_post/:id', to: 'application#show_post'

  get '/new_post', to: 'application#new_post'
  post '/create_post', to: 'application#create_post'

  get '/edit_post/:id', to: 'application#edit_post'
  post '/update_post/:id', to: 'application#update_post'

  post '/delete_post/:id', to: 'application#delete_post'

  post '/create_comment_for_post/:post_id' => 'application#create_comment'
  
  post '/list_posts/:post_id/delete_comment/:comment_id' => 'application#delete_comment'
end
