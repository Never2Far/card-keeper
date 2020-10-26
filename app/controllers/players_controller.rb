require './app/models/concerns/slugifiable'
class PlayersController < ApplicationController


    get '/players' do
        erb :'players/players'
    end


    get '/players/:id' do
        @player = Player.find(params[:id])
        erb :'/players/show'
    end



end