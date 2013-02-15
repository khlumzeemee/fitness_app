class ModifyUsers < ActiveRecord::Migration
  def up
    #drop old table create new one
    drop_table :users
    
    create_table :users do |t|
      t.column :login, :string
      t.column :hashed_password, :string
      t.column :email, :string
      t.column :salt, :string
      t.column :created_at, :datetime
    end    
    
  end
  def down
    #drop new  table create old one
    drop_table :users
    
    create_table :users do |t|
      t.string :user_name
      t.string :password
    end
  end
end
