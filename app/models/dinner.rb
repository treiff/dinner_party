# Generates dinner objects
class Dinner < ActiveRecord::Base
  validates :email, email: true, case_sensitive: false, presence: true
  validates :name, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true

  has_many :rsvps

  accepts_nested_attributes_for :rsvps, reject_if: ->(a) { a[:name].blank? }

  attr_readonly :email, :name, :date, :time, :location

  before_create :generate_unique_url

  def custom_url
    "http://majormunch.herokuapp.com/dinners/#{unique_url}/edit"
  end

  # Overides rails default to_param
  # When params called on a dinner object unique_url
  # replaces :id
  def to_param
    unique_url
  end

  private

  def generate_unique_url
    self.unique_url = SecureRandom.hex
  end
end
