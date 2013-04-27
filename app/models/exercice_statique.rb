class ExerciceStatique < ActiveRecord::Base
  belongs_to :statique
  belongs_to :exercice
  
  rails_admin do
    visible false
  end 
end
