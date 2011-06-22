# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mmatrix_session',
  :secret      => 'ebd884068b91d570afe5de8acab5c72df2431b6c0d5a232e3ebc77dc206ed4dc49f20507a30feea62ce076d8224a2b9a990d0133506bfcc4509f1ac5854d44c2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
