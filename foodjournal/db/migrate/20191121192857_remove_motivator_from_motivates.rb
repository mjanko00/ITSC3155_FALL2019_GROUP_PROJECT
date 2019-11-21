class RemoveMotivatorFromMotivates < ActiveRecord::Migration[5.2]
  def change
    remove_column :motivates, :motivator, :string
  end
end
