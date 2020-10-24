require './app/models/concerns/slugifiable'
class CollectionsController < ApplicationController


    get '/collections' do
       if !self.logged_in?
        redirect '/index'
       end

        erb :'collections/collections'
    end


get '/collections/new' do
    @user = User.find(session[:user_id])
    erb :'collections/new'
end

    get '/collections/:slug' do
        @collection = Collection.find_by_slug(params[:slug])
        # session[:current_collection_id] = @collection.id
        erb :'collections/show'
    end

    get '/collections/:slug/edit' do
        @collection = Collection.find_by_slug(params[:slug])
        erb :'collections/edit'
    end



end