# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_banking2_session',
  :secret      => '075c2f96f1692498f9964e530c461522d68a6e506342e5b706679f55cb98e3b7f962b96fb2384d1027db06b81542adebcf0e34feb526da1fbf084a5017d7bd23'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
