require './app/models/concerns/slugifiable'
class SportsController < ApplicationController


    get '/sports' do
        erb :'sports/sports'
    end

    get '/sports/:slug' do
        @sport = Sport.find_by_slug(params[:slug])
        erb :'/sports/show'
    end

end