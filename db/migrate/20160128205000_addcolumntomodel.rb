class Addcolumntomodel < ActiveRecord::Migration
  def change
  	add_column :employees, :address, :string
  	add_column :employees, :city, :string
  	add_column :employees, :state, :string
  	add_column :employees, :workEmail, :string
  	add_column :employees, :workPhone, :string
  end
end
