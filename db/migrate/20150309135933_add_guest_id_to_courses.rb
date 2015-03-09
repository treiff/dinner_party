class AddGuestIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :guest_id, :integer
  end
end
