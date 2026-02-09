require 'gossip'

class ApplicationController < Sinatra::Base
  # Page d'accueil : affiche tous les potins
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  # Page du formulaire
  get '/gossips/new/' do
    erb :new_gossip
  end

  # Réception du formulaire
  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/' # Retour à l'accueil après l'envoi
  end
end