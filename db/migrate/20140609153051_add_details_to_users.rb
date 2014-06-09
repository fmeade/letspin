class AddDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :phone, :decimal
  	add_column :users, :nickname, :string
  	add_column :users, :birthday, :date
    add_column :users, :admin, :boolean, default: false
  end
end
