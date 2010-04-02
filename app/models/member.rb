class Member < ActiveRecord::Base
  has_and_belongs_to_many :viewings
  
  def films
    films = []
    viewings.each {|v| films << v.film}
    return films
  end
  
  
end
