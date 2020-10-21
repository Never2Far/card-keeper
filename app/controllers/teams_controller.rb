require './app/models/concerns/slugifiable'
class TeamsController < ApplicationController


    get '/teams' do
        erb :'teams/teams'
    end


    get '/teams/:slug' do
        @team = Team.find_by_slug(params[:slug])
        erb :'/teams/show'
    end



end