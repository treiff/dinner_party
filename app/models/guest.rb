class Guest < ActiveRecord::Base
  validates_uniqueness_of :name, scope: :dinner_id

  has_many :courses
  belongs_to :dinner
end
