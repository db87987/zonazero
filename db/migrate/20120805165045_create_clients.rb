class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :title
      t.text :description
      t.string :logo1
      t.string :logo2

      t.timestamps
    end
  end
end
