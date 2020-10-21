class CardsController < ApplicationController


get '/cards/:id' do
    @card = Card.find(params[:id])
    erb :'cards/show'
end



end