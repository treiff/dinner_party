class AddNullFalseToDinners < ActiveRecord::Migration
  def change
    change_column_null :dinners, :name, false
    change_column_null :dinners, :date, false
    change_column_null :dinners, :time, false
    change_column_null :dinners, :location, false
    change_column_null :dinners, :email, false
    change_column_null :dinners, :unique_url, false
  end
end
