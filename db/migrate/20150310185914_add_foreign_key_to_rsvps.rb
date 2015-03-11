class AddForeignKeyToRsvps < ActiveRecord::Migration
  def change
    add_reference :rsvps, :dinner, index: true
    add_foreign_key :rsvps, :dinners
  end
end
