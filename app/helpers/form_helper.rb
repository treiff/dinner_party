module FormHelper
  def dinner_setup(dinner)
    dinner.rsvps.build
    dinner
  end
end
