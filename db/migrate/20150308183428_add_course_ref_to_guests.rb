class AddCourseRefToGuests < ActiveRecord::Migration
  def change
    add_reference :guests, :course, index: true
    add_foreign_key :guests, :courses
  end
end
