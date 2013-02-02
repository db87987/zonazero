class ChangeAwards < ActiveRecord::Migration
  def up
    remove_column :awards, :description1
    remove_column :awards, :description2
    add_column :awards, :description1, :text
    add_column :awards, :description2, :text
  end

  def down
    remove_column :awards, :description1
    remove_column :awards, :description2
    add_column :awards, :description1, :string
    add_column :awards, :description2, :string
  end
end
