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

post '/collections' do
    @collection = Collection.create(
        name: params[:name],
        sport_id: params[:sport],
        user_id: session[:user_id]
    )

    redirect "/collections/#{@collection.id}"
end

    get '/collections/:id' do
        @collection = Collection.find(params[:id])
        @value = @collection.getValue
        # session[:current_collection_id] = @collection.id
        erb :'collections/show'
    end

    get '/collections/:id/edit' do
        @collection = Collection.find(params[:id])
        erb :'collections/edit'
    end

    patch '/collections/:id' do
        @collection = Collection.find(params[:id])

        @collection.update(
            name: params[:name],
            sport_id: params[:sport]
        )

        
        if params[:cards]
        params[:cards].each do |card_id|
            Card.find(card_id).destroy
        end
     end
        redirect "/collections/#{@collection.id}"
    end

    delete '/collections/:id' do
        @collection = Collection.find(params[:id])
        if self.logged_in? && (self.current_user.id == @collection.user_id)

            @collection.cards.each do |card|
                card.destroy
            end



            @collection.destroy





        end
            redirect "/dashboard"
    end





end