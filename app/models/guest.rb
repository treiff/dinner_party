# Generates guest objects
class Guest < ActiveRecord::Base
  validates_uniqueness_of :name, scope: :dinner_id
  validates :name, presence: true

  has_many :courses
  belongs_to :dinner
end
