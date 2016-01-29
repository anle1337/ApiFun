class Changeyelpsort < ActiveRecord::Migration
  def change
  	remove_column :yelpers, :sort
  	add_column :yelpers, :sort, :integer
  end
end
