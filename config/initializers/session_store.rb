# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_testgen_session',
  :secret      => 'c69846dbbb1f4748bbbc5208e474a938d9d9e77b78c8695f625e38a5555a1303c52e030db3fd97db9a468e2a09e95eeb903c7d0d8e120ecd9cf6f64964442f4c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
