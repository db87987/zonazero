class ChangeAwardsTable < ActiveRecord::Migration
    def up
    	add_column :awards, :year, :decimal, precision: 4, scale: 0
    	add_column :awards, :year1, :decimal, precision: 4, scale: 0
    	add_column :awards, :description1, :string
    	add_column :awards, :year2, :decimal, precision: 4, scale: 0
    	add_column :awards, :description2, :string
    end

    def down
    	remove_column :awards, :year, :decimal, precision: 4, scale: 0
    	remove_column :awards, :year1, :decimal, precision: 4, scale: 0
    	remove_column :awards, :description1, :string
    	remove_column :awards, :year2, :decimal, precision: 4, scale: 0
    	remove_column :awards, :description2, :string
    end
  end

