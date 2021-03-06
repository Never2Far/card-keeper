require './config/environment'
require 'sinatra/flash'

class ApplicationController < Sinatra::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods

  configure do
    enable :sessions
    set :session_secret, "secret"
    set :public_folder, 'public'
    set :views, 'app/views'
    register Sinatra::Flash
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
        redirect '/dashboard'
      end
  
      erb :index
      
    end
  
get '/search' do
  erb :search
end


  get '/signup' do
    if self.logged_in?
      redirect '/dashboard'
    end
  
    erb :'users/signup'
  end
  
  post '/signup' do
    if params.any? {|k,v| v == ""}
      flash[:message] = "All fields are required!"
      redirect '/signup'
    end

    User.all.each do |user|
      if user.username == params[:username]
        flash[:message] = "**That username is already taken, please try a different one**"
        redirect '/signup'
      end
    end
  
    user = User.new(
      name: params[:name],
      username: params[:username],
      email: params[:email],
      password: params[:password]
    )
    
    if user.save
      session[:user_id] = user.id
      redirect '/dashboard'
    else
      redirect '/signup'
    end
  end

  get '/dashboard' do
    @user = self.current_user
    erb :dashboard
  end

end