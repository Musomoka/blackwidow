class CreateUserTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tasks, null: false, foreign_key: true

      t.timestamps
    end
  end
end
