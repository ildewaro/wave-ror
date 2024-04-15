class FeaturesController < ApplicationController

  # Permite consultar la data de features son o sin query param 'mag_type'
  def all
    service = FeatureService.new(params)
    
    if params[:mag_type].blank?
      features = Feature.all.then(&paginate)
      render json: service.transform_response(features)
      return
    end

    features = Feature.where('mag_type in (?)', service.mag_type_normalized).then(&paginate)
    render json: service.transform_response(features)
    
  end
  
end
