require 'gossip' # On lie le modèle Gossip pour pouvoir l'utiliser ici

class ApplicationController < Sinatra::Base
  # Route : Page d'accueil (GET /)
  get '/' do
    # On demande au modèle TOUS les potins, et on les envoie à la vue index.erb
    erb :index, locals: {gossips: Gossip.all}
  end

  # Route : Page du formulaire (GET /gossips/new/)
  get '/gossips/new/' do
    erb :new_gossip # On affiche simplement le fichier new_gossip.erb
  end

  # Route : Action de création (POST /gossips/new/)
  post '/gossips/new/' do
    # 1. On crée un objet Gossip avec les données saisies par l'utilisateur (params)
    # 2. On appelle .save pour l'enregistrer dans le CSV
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    # 3. On redirige l'utilisateur vers l'accueil pour qu'il voie son potin
    redirect '/'
  end

  # Route : Affichage d'un seul potin (GET /gossips/:id/)
  get '/gossips/:id/' do
    # On utilise params['id'] capturé dans l'URL pour trouver le bon potin
    # On passe l'objet gossip et son id à la vue show.erb
    erb :show, locals: {gossip: Gossip.find(params['id']), id: params['id']}
  end
end