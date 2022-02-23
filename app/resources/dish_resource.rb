class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dish, :string
  attribute :venue_id, :integer
  attribute :dish_type, :string

  # Direct associations

  has_many   :fans,
             resource: LikeResource

  # Indirect associations

end
