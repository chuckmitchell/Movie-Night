class Member < ActiveRecord::Base
  has_many_and_belongs_to :viewings
  has_many :films :through=>:viewings
end
