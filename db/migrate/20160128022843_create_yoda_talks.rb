class CreateYodaTalks < ActiveRecord::Migration
  def change
    create_table :yoda_talks do |t|
      t.string :sentence

      t.timestamps null: false
    end
  end
end
