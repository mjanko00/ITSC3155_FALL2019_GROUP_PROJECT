class CreateMotivations < ActiveRecord::Migration[5.2]
  def change
    create_table :motivations do |t|
      t.string :motivater
      t.text :message
      t.references :journals, foreign_key: true

      t.timestamps
    end
  end
end
