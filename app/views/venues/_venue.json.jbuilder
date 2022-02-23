json.extract! venue, :id, :venue, :address, :neighborhood, :google_maps_url, :created_at, :updated_at
json.url venue_url(venue, format: :json)
