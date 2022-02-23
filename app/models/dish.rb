class Dish < ApplicationRecord
  # Direct associations

  belongs_to :restaurant,
             class_name: "Venue",
             foreign_key: "venue_id"

  has_many   :fans,
             class_name: "Like",
             dependent: :nullify

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dish
  end
end
