class CreateMentors < ActiveRecord::Migration[6.1]
  def change
    create_table :mentors do |t|
      t.references :user, null: false, foreign_key: true
      t.text :descritpion

      t.timestamps
    end
  end
end
