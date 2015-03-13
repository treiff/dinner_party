module Url
  def custom_url
    "http://majormunch.herokuapp.com/dinners/#{unique_url}"
  end

  def generate_unique_url
    self.unique_url = SecureRandom.hex
  end
end
