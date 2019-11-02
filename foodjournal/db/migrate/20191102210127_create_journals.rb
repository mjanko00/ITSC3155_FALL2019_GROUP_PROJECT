class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :food_item
      t.string :meal_type
      t.string :serving
      t.string :cal
      t.string :prot
      t.string :carbs
      t.string :fats

      t.timestamps
    end
  end
end
