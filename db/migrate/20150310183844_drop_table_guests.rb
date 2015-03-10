class DropTableGuests < ActiveRecord::Migration
  def change
    drop_table :guests
  end
end
