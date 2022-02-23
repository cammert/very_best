class Dish < ApplicationRecord
  # Direct associations

  has_many   :fans,
             :class_name => "Like",
             :dependent => :nullify

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dish
  end

end
