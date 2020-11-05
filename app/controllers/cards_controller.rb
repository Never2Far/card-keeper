class CardsController < ApplicationController




get '/cards/new' do

    @user = User.find(session[:user_id])

    erb :'cards/new'
end

post '/cards' do


    player_id = params[:player]
    if params[:player] == "newPlayer"
        player_id = Player.create(name: params[:newPlayer]).id
    end

    @card = Card.create(
        user_id: session[:user_id],
        collection_id: params[:collection],
        sport_id: Collection.find(params[:collection]).sport_id,
        player_id: player_id,
        condition: params[:condition],
        special_attribute: params[:special_attribute],
        estimated_value: params[:estimated_value]
    )

    
    erb :'cards/new2'
end

post '/cards/new' do
    @card = Card.find(params[:card])

#    if @card.player.name == "Team Card"
#     position_id = Position.find_by(sport_id: @card.sport_id)
#    else
#    position_id = params[:position]
#    end
    



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

    player_id = params[:player]
    if params[:player] == "newPlayer"
        player_id = Player.create(name: params[:newPlayer]).id
    end

    @card.contract.update(
        player_id: player_id,
        team_id: params[:team],
        position_id: params[:position]
    )

    @card.update(
        collection_id: params[:collection],
        sport_id: Collection.find(params[:collection]).sport_id,
        player_id: player_id,
        condition: params[:condition],
        special_attribute: params[:special_attribute],
        estimated_value: params[:estimated_value],
        team_id: params[:team],
        position_id: params[:position]
    )

    
    redirect "/cards/#{@card.id}"
end

delete '/cards/:id' do
    @card = Card.find(params[:id])
    @player = @card.player
    @collection = @card.collection
    if self.logged_in? && (self.current_user.id == @card.user_id)
        @card.destroy
        if @player.cards.count == 0 || @player.cards.count == nil
            @player.destroy
        end
    end
        redirect "/collections/#{@collection.id}"
end



end