module FormHelper
  def dinner_setup(dinner)
    dinner.guests.build
    dinner
  end
end
