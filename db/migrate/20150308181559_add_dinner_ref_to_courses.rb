class AddDinnerRefToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :dinner, index: true
    add_foreign_key :courses, :dinners
  end
end
