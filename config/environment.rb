# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!


#Programa tarrea de importacion de features
UpdateFeaturesFromApiJob.set(wait: 10.minute).perform_later  

