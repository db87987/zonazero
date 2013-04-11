class AddSnToWorks < ActiveRecord::Migration
  def change
    add_column :works, :sn, :integer
  end
end
