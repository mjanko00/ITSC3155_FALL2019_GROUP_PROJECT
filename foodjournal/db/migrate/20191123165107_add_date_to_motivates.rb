class AddDateToMotivates < ActiveRecord::Migration[5.2]
  def change
    add_column :motivates, :date, :date
  end
end
