class AddUsersToJournals < ActiveRecord::Migration[5.2]
  def change
    add_reference :journals, :user, foreign_key: true
  end
end
