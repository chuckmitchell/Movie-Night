class Member < ActiveRecord::Base
  has_many_and_belongs_to :viewings
end
