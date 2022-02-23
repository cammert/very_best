class Like < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :dish,
             optional: true,
             counter_cache: :fans_count

  # Indirect associations

  has_one    :restaurant,
             through: :dish,
             source: :restaurant

  # Validations

  # Scopes

  def to_s
    user.to_s
  end
end
