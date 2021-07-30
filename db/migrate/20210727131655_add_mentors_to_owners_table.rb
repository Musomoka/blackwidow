class AddMentorsToOwnersTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :owners, :mentor, null: false, foreign_key: true
  end
end
