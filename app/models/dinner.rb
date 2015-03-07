class Dinner < ActiveRecord::Base
  validates :email, email: true, case_sensitive: false
  validates :email, :dinner_name, :date, :time, :location, presence: true
end
