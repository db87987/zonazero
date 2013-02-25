class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :company
      t.string :position
      t.string :pre
      t.string :tel
      t.string :mail
      t.text :comment

      t.timestamps
    end
  end
end
