class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :businessName
      t.string :description
      t.string :location
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
