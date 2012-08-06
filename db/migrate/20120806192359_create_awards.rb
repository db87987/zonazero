class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :title
      t.text :description
      t.attachment :logo1

      t.timestamps
    end
  end
end
