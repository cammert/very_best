class VenueResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :venue, :string
  attribute :address, :string
  attribute :neighborhood, :string
  attribute :google_maps_url, :string

  # Direct associations

  # Indirect associations

end
