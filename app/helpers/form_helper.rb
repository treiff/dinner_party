module FormHelper
  def dinner_setup(dinner)
    dinner.guests.build
    dinner.courses.build
    dinner
  end
end
