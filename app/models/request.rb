class Request < ActiveRecord::Base

  belongs_to :film  
  validates_presence_of     :requester_name, :requester_email, :imdb_permalink
  
  
end
