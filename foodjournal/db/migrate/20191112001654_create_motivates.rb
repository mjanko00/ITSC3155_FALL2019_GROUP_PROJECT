class CreateMotivates < ActiveRecord::Migration[5.2]
  def change
    create_table :motivates do |t|
      t.string :motivator
      t.text :message
      t.references :journal, foreign_key: true

      t.timestamps
    end
  end
end
