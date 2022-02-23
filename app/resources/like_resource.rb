class LikeResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :dish_id, :integer

  # Direct associations

  belongs_to :user

  belongs_to :dish

  # Indirect associations

  has_one    :restaurant,
             resource: VenueResource

  filter :venue_id, :integer do
    eq do |scope, value|
      scope.eager_load(:restaurant).where(dishes: { venue_id: value })
    end
  end
end
