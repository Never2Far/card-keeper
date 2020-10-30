class CardsController < ApplicationController


get '/cards' do
    erb :'cards/cards'
end

get '/cards/new' do
    # @collection = Collection.find(session[:current_collection_id])
    # @sport = @collection.sport
    @user = User.find(session[:user_id])

    erb :'cards/new'
end

post '/cards' do

    @card = Card.create(
        user_id: session[:user_id],
        collection_id: params[:collection],
        sport_id: Collection.find(params[:collection]).sport_id,
        player_id: params[:player],
        condition: params[:condition],
        special_attribute: params[:special_attribute],
        estimated_value: params[:estimated_value]
    )

    # @card.collection.estimated_value += @card.estimated_value
    
    erb :'cards/new2'
end

post '/cards/new' do
    @card = Card.find(params[:card])

    contract = Contract.create(
        player_id: @card.player_id,
        team_id: params[:team],
        position_id: params[:position]
    )

    @card.update(
        contract_id: contract.id,
        team_id: params[:team],
        position_id: params[:position]
    )

   @card.save

   redirect "/cards/#{@card.id}"


end

get '/cards/:id' do
    @card = Card.find(params[:id])
    erb :'cards/show'
end

get '/cards/:id/edit' do
    
    if !self.logged_in?
        redirect '/'
    end
    @card = Card.find(params[:id])
    @user = @card.user
    if self.current_user.id != @card.user_id
        redirect "/cards/#{@card.id}"
    end
        erb :'cards/edit'
    
end

patch '/cards/:id' do
    @card = Card.find(params[:id])

    @card.contract.update(
        player_id: params[:player],
        team_id: params[:team],
        position_id: params[:position]
    )

    @card.update(
        collection_id: params[:collection],
        sport_id: Collection.find(params[:collection]).sport_id,
        player_id: params[:player],
        condition: params[:condition],
        special_attribute: params[:special_attribute],
        estimated_value: params[:estimated_value],
        team_id: params[:team],
        position_id: params[:position]
    )

    # if (params[:content] == "") || (params[:content] == nil)
    #     redirect "/cards/#{@card.id}/edit"
    # end
    
    # @card.update(content: params[:content])
    redirect "/cards/#{@card.id}"
end

delete '/cards/:id' do
    @card = Card.find(params[:id])
    @collection = @card.collection
    if self.logged_in? && (self.current_user.id == @card.user_id)
        # @collection.estimated_value -= @card.estimated_value
        @card.destroy
    end
        redirect "/collections/#{@collection.id}"
end



end