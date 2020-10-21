require './app/models/concerns/slugifiable'
class CollectionsController < ApplicationController


    get '/collections' do
       if !logged_in?
        redirect '/index'
       end

        erb :'collections/collections'
    end


    get '/collections/:slug' do
        @collection = Collection.find_by_slug(params[:slug])
        erb :'/collections/show'
    end



end