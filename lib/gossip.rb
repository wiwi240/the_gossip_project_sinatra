require 'csv' # On charge la bibliothèque CSV pour lire/écrire des fichiers

class Gossip
  attr_accessor :author, :content # Permet de lire et modifier l'auteur et le contenu d'un objet Gossip

  def initialize(author, content)
    @author = author # On assigne l'auteur lors de la création d'une instance
    @content = content # On assigne le message lors de la création d'une instance
  end

  def save
    # On ouvre le fichier en mode "ab" (ajout à la fin, binaire)
    CSV.open("./db/gossip.csv", "ab") do |csv|
      # On injecte l'auteur et le contenu de l'objet actuel dans une nouvelle ligne
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = [] # On prépare un tableau vide pour stocker nos objets
    
    # Sécurité : on ne lit le fichier que s'il existe vraiment
    if File.exist?("./db/gossip.csv")
      # CSV.read transforme le fichier en un tableau de tableaux (une ligne = un tableau)
      CSV.read("./db/gossip.csv").each do |line|
        # Pour chaque ligne, on crée un nouvel objet Gossip et on le range dans notre tableau
        all_gossips << Gossip.new(line[0], line[1])
      end
    end
    all_gossips # On retourne le tableau final pour qu'il soit utilisable ailleurs
  end

  def self.find(id)
    # On appelle la méthode 'all' pour avoir la liste complète
    # On utilise l'ID (converti en entier avec .to_i) pour piocher le bon élément
    self.all[id.to_i]
  end
end