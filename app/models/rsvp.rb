class Rsvp < ActiveRecord::Base
  validates :name, presence: true
  validates :dish, presence: true

  belongs_to :dinner
end
