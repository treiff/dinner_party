class ChangeNameColumn < ActiveRecord::Migration
  change_table :dinners do |t|
    t.rename :dinner_name, :name
  end
end
