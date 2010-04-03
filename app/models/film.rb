class Film < ActiveRecord::Base
  has_many :viewings  
  
  has_attached_file :poster, :styles=>{:large=>"300x300>",:thumb=>"100x100>"}
  
end
