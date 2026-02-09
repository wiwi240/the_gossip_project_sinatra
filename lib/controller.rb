class ApplicationController < Sinatra::Base

# 1. Page d'accueil
get '/' do
    erb :index
end

# 2. Route pour AFFICHER le formulaire (c'est ce qui te manquait !)
get '/gossips/new/' do
    erb :new_gossip
end

# 3. Route pour RECEVOIR les données du formulaire
post '/gossips/new/' do
    puts "Ce programme ne fait rien pour le moment, donc on va afficher un message dans le terminal"
    "C'est reçu ! Regarde ton terminal."
end

end # Le SEUL et UNIQUE 'end' qui ferme la classe doit être ici, à la toute fin