class AddAdminToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :boolean, default: false
    #Ex:- :default =>''
    add_column :users, :bio, :text
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
  end
end
