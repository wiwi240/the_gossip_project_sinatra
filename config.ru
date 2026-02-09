require 'bundler'
Bundler.require

# Cette ligne est MAGIQUE : elle dit à Ruby d'aller chercher dans le dossier lib
$:.unshift File.expand_path("./../lib", __FILE__)

require 'controller' # Ruby va chercher lib/controller.rb grâce à la ligne du dessus
run ApplicationController