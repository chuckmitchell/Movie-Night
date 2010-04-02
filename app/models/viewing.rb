class Viewing < ActiveRecord::Base
  has_and_belongs_to_many :members
  belongs_to :film
end
