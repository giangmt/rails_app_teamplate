class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello_world
    # render plain: 'Hello, you!'
    # render({plain: 'Hello, you!'})
    # render inline: '<em>Hello, you!</em>'
    # render status: :forbidden
    name = params[:name] || 'World'
    render 'application/hello_world', locals: {name: name}
    # render inline: File.read('app/views/application/hello_world.html.erb')
    # binding.pry
  end
end