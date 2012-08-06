class RemoveDescriptionFromClients < ActiveRecord::Migration
  def up
  	remove_column :clients, :description
  	add_column :clients, :point1, :string
  	add_column :clients, :point2, :string
  	add_column :clients, :point3, :string
  	add_column :clients, :point4, :string
  	add_column :clients, :point5, :string
  end

  def down
  	add_column :clients, :description
  	remove_column :clients, :point1, :string
  	remove_column :clients, :point2, :string
  	remove_column :clients, :point3, :string
  	remove_column :clients, :point4, :string
  	remove_column :clients, :point5, :string
  end
end
