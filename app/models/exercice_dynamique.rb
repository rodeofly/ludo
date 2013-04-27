class ExerciceDynamique < ActiveRecord::Base
  belongs_to :dynamique
  belongs_to :exercice
  
  rails_admin do
    visible false
  end 
end
