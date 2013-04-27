class Dynamique < ActiveRecord::Base
  has_many :exercice_dynamiques
  has_many :exercices, :through => :exercice_dynamiques
end
