class CreateCiprojects < ActiveRecord::Migration
  def self.up
    create_table :ciprojects do |t|
      t.string :name
      t.string :location
      t.string :launch_date
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :ciprojects
  end
end
