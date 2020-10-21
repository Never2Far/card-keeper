require './app/models/concerns/slugifiable'
class PlayersController < ApplicationController


    get '/players' do
        erb :'players/players'
    end


    get '/players/:slug' do
        @player = Player.find_by_slug(params[:slug])
        erb :'/players/show'
    end



end