require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end
  end
  
    get '/' do
      if self.logged_in?
        redirect '/collections'
      end
  
      erb :index
      
    end
  
  get '/signup' do
    if self.logged_in?
      redirect '/collections'
    end
  
    erb :'users/signup'
  end
  
  post '/signup' do
    if params.any? {|k,v| v == ""}
      redirect '/signup'
    end
  
    user = User.new(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      password: params[:password]
    )
    
    if user.save
      session[:user_id] = user.id
      redirect '/collections'
    else
      redirect '/signup'
    end
  end

end