
require 'rest-client'
require 'json'

class UpdateFeaturesFromApiJob < ApplicationJob
  include RestClient
  queue_as :import_data_from_earthquake
 
  def get_data_from_earthquake
   data = RestClient.get("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.geojson").as_json
   return data
  end
  
  def perform(*args)
    data = JSON.parse(get_data_from_earthquake)
    data['features'].map do |el|
      f = Feature.new
      f.external_id = el['id']
      f.magnitude = el['properties']['mag']
      f.place = el['properties']['place']
      f.time = el['properties']['time']
      f.tsunami = el['properties']['tsunami']
      f.mag_type = el['properties']['magType']
      f.title = el['properties']['title']
      f.longitude = el['geometry']['coordinates'][0]
      f.latitude = el['geometry']['coordinates'][1]
      f.save
    end
  end
end
