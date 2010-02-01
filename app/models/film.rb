class Film < ActiveRecord::Base
  has_one :viewing
  has_many :viewers
  
  
end
