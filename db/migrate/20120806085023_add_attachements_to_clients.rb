class AddAttachementsToClients < ActiveRecord::Migration
  def up
    remove_column :clients, :logo1
    remove_column :clients, :logo2
    add_attachment :clients, :logo1
    add_attachment :clients, :logo2
  end
 
  def down
    remove_attachment :clients, :logo1
    remove_attachment :clients, :logo2
    add_column :clients, :logo1, :string
    add_column :clients, :logo2, :string
  end
end