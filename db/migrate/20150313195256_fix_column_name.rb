class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :dinners, :unique_url, :slug
  end
end
