class Viewing < ActiveRecord::Base
  has_many_and_belongs_to :members
  has_many :films
end
