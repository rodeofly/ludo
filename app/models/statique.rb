class Statique < ActiveRecord::Base
  has_many :exercice_statiques
  has_many :exercices, :through => :exercice_statiques
  
  rails_admin do
    configure :exercice_statiques do
      visible false
    end
  end 
end
