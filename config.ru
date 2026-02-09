# On ajoute le dossier 'lib' au chemin de recherche des fichiers (LOAD_PATH)
# Cela permet de faire 'require gossip' ou 'require controller' sans chemin complexe
$:.unshift File.expand_path("./../lib", __FILE__)

require 'bundler' # On appelle le gestionnaire de gems
Bundler.require   # On demande de charger toutes les gems du Gemfile (Sinatra, CSV, etc.)

# On charge spécifiquement notre contrôleur
require 'controller'

# On dit au serveur de lancer l'application définie dans la classe ApplicationController
run ApplicationController