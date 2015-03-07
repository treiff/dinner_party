class AddUniqueUrlToDinners < ActiveRecord::Migration
  def change
    add_column :dinners, :unique_url, :string
  end
end
