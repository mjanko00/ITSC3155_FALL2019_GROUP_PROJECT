class ChangeJournalDataTypes < ActiveRecord::Migration[5.2]
  def change
  def up
    change_column :journals, :serving, :integer
    change_column :journals, :cal, :integer
    change_column :journals, :prot, :integer
    change_column :journals, :carbs, :integer
    change_column :journals, :fats, :integer
  end

  def down
    change_column :journals, :serving, :string
    change_column :journals, :cal, :string
    change_column :journals, :prot, :string
    change_column :journals, :carbs, :string
    change_column :journals, :fats, :string
  end
  end
end
