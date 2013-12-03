# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|

config.currency = 'INR'

# Sets default country to UK
config.default_country_id = 3
  # Example:
  # Uncomment to override the default site name.
  # config.site_name = "Spree Demo Site"
config.site_name = "Jhola"
config.allow_ssl_in_production = false
config.override_actionmailer_config = false
end

Spree.user_class = "Spree::User"