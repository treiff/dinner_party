class Rsvp < ActiveRecord::Base
  validates :name, presence: true
  validates :dish, presence: true, uniqueness: { scope: :dinner, message: "Someone is already bringing that dish!" }

  belongs_to :dinner
end
