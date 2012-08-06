class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.text :description
      t.attachment :logo1
      t.attachment :logo2

      t.timestamps
    end
  end
end
