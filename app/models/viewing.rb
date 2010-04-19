class Viewing < ActiveRecord::Base
  has_and_belongs_to_many :members
  has_and_belongs_to_many :films
  
  def film_ids
      films.map(&:id)
  end
  
end
