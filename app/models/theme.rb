class Theme < ActiveRecord::Base
has_many :exercices

  def name
      self.intitule
  end
end
