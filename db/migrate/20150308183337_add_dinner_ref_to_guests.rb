class AddDinnerRefToGuests < ActiveRecord::Migration
  def change
    add_reference :guests, :dinner, index: true
    add_foreign_key :guests, :dinners
  end
end
