class Request < ActiveRecord::Base

  validates_presence_of     :requester_name, :requester_email, :title

end
