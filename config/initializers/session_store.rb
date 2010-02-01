# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_movie_night_session',
  :secret      => '6af6b0e8981d012abddc99d60b8472072e212b0b5c048a43d3b89f97b374767f773510d8d4e6d750fbc1087c043c73d400d4d3ad814c79a27e0f04843bbb75fe'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
