class ChangeDataTypesToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :journals, :serving, :integer
    change_column :journals, :cal, :integer
    change_column :journals, :prot, :integer
    change_column :journals, :carbs, :integer
    change_column :journals, :fats, :integer
  end
end
