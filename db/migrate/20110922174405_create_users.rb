class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.boolean :admin
      t.string :image
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
