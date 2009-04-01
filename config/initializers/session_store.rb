# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hotels_session',
  :secret      => 'c9c1a5837d3ca1068a200ce538dbfdc791d38e1011f7889984689315dc370986efe128a6edcc4587d8971eed25088bd30e45edb875d33f4cfa55e0a17bc7a47b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
