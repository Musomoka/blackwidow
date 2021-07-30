class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :taskName
      t.string :description
      t.date :startDate
      t.date :endDate
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
