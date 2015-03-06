class AddColumnsToDinners < ActiveRecord::Migration
  def change
    add_column :dinners, :dinner_name, :string
    add_column :dinners, :date, :date
    add_column :dinners, :time, :time
    add_column :dinners, :location, :string
    add_column :dinners, :email, :string
  end
end
