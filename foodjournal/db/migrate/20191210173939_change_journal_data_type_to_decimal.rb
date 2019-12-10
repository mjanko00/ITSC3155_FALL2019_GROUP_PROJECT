class ChangeJournalDataTypeToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :journals, :serving, :decimal
    change_column :journals, :cal, :decimal
    change_column :journals, :prot, :decimal
    change_column :journals, :carbs, :decimal
    change_column :journals, :fats, :decimal
  end
end
