class CreateYelpers < ActiveRecord::Migration
  def change
    create_table :yelpers do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :term
      t.integer :limit
      t.string :sort

      t.timestamps null: false
    end
  end
end
