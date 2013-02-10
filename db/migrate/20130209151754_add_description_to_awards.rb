class AddDescriptionToAwards < ActiveRecord::Migration
  def change
    add_column :awards, :description3, :text
    add_column :awards, :year3, :decimal, precision: 4, scale: 0
  end
end
