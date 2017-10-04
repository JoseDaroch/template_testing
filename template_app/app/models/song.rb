class Song < ApplicationRecord
  belongs_to :user
  belongs_to :artist

  validates :user_id, presence: true

end
