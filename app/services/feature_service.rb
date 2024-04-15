class FeatureService
  def initialize(params)
    @size = Feature.all.count
    @params = params
  end

  def mag_type_normalized
    return @params[:mag_type].gsub("'","").gsub('[', '').gsub(']', '').split(',')
  end

  def transform_response(features)
    new_data = []
    features.map do |el|
      new_data.push({
        id: el['id'],
        type: 'feature',
        attributes: {
          external_id: el['external_id'],
          magnitude: el['magnitude'],
          place: el['place'],
          time: el['time'],
          tsunami: el['tsunami'],
          mag_type: el['mag_type'],
          title: el['title'],
          coordinates: {
            longitude: el['longitude'],
            latitude: el['latitude']
          },
          links: {
            external_url: ''
          }
        },
        comments: el.comments
      })
    end
    return {
      data: new_data,
      pagination: {
        current_page: @params[:page],
        total: @size,
        per_page: @params[:per_page]
      }
    }
  end
end