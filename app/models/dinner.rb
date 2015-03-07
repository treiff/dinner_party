class Dinner < ActiveRecord::Base
  validates :email, email: true, case_sensitive: false
  validates :email, :dinner_name, :date, :time, :location, presence: true

  before_save :generate_unique_url

  def custom_url
    "http://localhost:3000/dinners/#{self.unique_url}"
  end

  private

  def generate_unique_url
    self.unique_url = SecureRandom.hex
  end

  def to_param
    unique_url
  end
end
