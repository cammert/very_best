class Like < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :dish,
             :required => false,
             :counter_cache => :fans_count

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    user.to_s
  end

end
