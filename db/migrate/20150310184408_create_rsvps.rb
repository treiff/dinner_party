class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name, null: false
      t.string :dish, null: false

      t.timestamps null: false
    end
  end
end
