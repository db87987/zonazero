class AddTelsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :pre1, :string
    add_column :messages, :pre2, :string
    add_column :messages, :tel1, :string
    add_column :messages, :tel2, :string
    
    add_column :messages, :price, :boolean, :default => false
    add_column :messages, :presentation, :boolean, :default => false
    add_column :messages, :reference, :boolean, :default => false
    add_column :messages, :spravka, :boolean, :default => false
    
    add_column :messages, :recomendation, :boolean, :default => false
    add_column :messages, :publication, :boolean, :default => false
    add_column :messages, :spravotchnik, :boolean, :default => false
    add_column :messages, :internet, :boolean, :default => false
    add_column :messages, :event, :boolean, :default => false
  end
end
