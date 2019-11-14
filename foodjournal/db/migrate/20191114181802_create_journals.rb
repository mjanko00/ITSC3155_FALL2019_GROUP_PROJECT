class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :food_item
      t.string :meal_type
      t.integer :serving
      t.integer :cal
      t.integer :prot
      t.integer :carbs
      t.integer :fats

      t.timestamps
    end
  end
end
