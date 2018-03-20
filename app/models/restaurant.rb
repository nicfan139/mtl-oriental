class Restaurant < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :type, presence: true, inclusion: { in: ["Chinese", "Japanese", "Korean", "Vietnamese", "Indian", "Other"] }
  validates :address, presence: true, length: { minimum: 10 }
  validates :district, presence: true, inclusion: { in: [
    "Ahuntsic-Cartierville",
    "Anjou",
    "Chinatown",
    "Concordia",
    "Côte-des-Neiges",
    "Côte-Vertu",
    "Downtown",
    "Griffintown",
    "Notre-Dame-de-Grce",
    "Lachine",
    "LaSalle",
    "Le Plateau-Mont-Royal",
    "Le Sud-Ouest",
    "Sainte-Genevive",
    "Mercier",
    "Hochelaga-Maisonneuve",
    "Mile-End",
    "Namur",
    "Outremont",
    "Parc-Extension",
    "Pierrefonds-Roxboro",
    "Rivire-des-Prairies",
    "Pointe-aux-Trembles",
    "Rosemont",
    "La Petite-Patrie",
    "Saint-Laurent",
    "Saint-Leonard",
    "Saint-Michel",
    "Verdun",
    "Villeray"] }
end
