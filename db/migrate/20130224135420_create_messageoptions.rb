class CreateMessageoptions < ActiveRecord::Migration
  def change
    create_table :messageoptions do |t|
      t.integer :message_id
      t.integer :option_id
      
      t.timestamps
    end
  end
end
