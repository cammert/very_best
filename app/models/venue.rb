class Venue < ApplicationRecord
  # Direct associations

  has_many   :menu_items,
             :class_name => "Dish",
             :dependent => :destroy

  # Indirect associations

  has_many   :fans,
             :through => :menu_items,
             :source => :fans

  # Validations

  # Scopes

  def to_s
    venue
  end

end
