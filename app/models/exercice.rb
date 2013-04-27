class Exercice < ActiveRecord::Base
  belongs_to :correction
  belongs_to :theme

  has_many :exercice_statiques
  has_many :statiques, :through => :exercice_statiques
  
  has_many :exercice_dynamiques
  has_many :dynamiques, :through => :exercice_dynamiques
  
  rails_admin do
    configure :statiques do
      visible false
    end
    configure :exercice_statiques do
      visible false
    end
    configure :dynamiques do
      visible false
    end
    configure :exercice_dynamiques do
      visible false
    end
  end
end
