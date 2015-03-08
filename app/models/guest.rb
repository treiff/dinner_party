class Guest < ActiveRecord::Base
  has_many :courses
  belongs_to :dinner
end
