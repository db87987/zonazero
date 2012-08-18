class AddFrontToWorks < ActiveRecord::Migration
  def up
  	add_column :works, :front_show, :boolean, default: false  
  	add_column :works, :front_title, :string
  end

  def down
  	remove_column :works, :front_show, :boolean, default: false  
  	remove_column :works, :front_title, :string
  end
end