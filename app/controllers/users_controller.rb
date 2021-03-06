class UsersController < ApplicationController

    get '/login' do
        if self.logged_in?
            redirect '/dashboard'
        else
            erb :index
        end
    end

    post '/login' do
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect '/dashboard'
        else
            flash[:message] = "The username/password you entered is incorrect."
        redirect '/'
        end
    end

    get '/logout' do
        if !self.logged_in?
            redirect '/'
        else
            session.clear
            redirect '/'
        end
    end

    get '/users' do
        erb :'users/users'
    end


    get '/users/:slug' do
        @user = User.find_by_slug(params[:slug])

        if @user == self.current_user
            redirect '/dashboard'
        end

        erb :'/users/show'
    end
end