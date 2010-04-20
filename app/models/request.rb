class Request < ActiveRecord::Base

  url_regex = /http:\/\/www.imdb.com\/title\/.{9}\//ix
  email_regex = /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i
  
  belongs_to :film  
  validates_presence_of :requester_name, :requester_email, :imdb_permalink
  validates_format_of :imdb_permalink, :with=>url_regex
  validates_format_of :requester_email, :with=>email_regex
  
  
  
  
end
