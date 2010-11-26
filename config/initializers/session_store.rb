# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nuit_session',
  :secret      => '914134be1cbe5ee4fef13353bca6961c77eef0b83dbc5b6bfcd39a4c30d9b11916df661aee05785a6ac63267db1073a04c0c4230b19f8e98dbf592b67323347f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
