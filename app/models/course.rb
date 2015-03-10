# Generates course objects
class Course < ActiveRecord::Base
  validates_uniqueness_of :name, scope: :dinner_id
  validates :name, presence: true

  belongs_to :dinner
  belongs_to :guest
end
