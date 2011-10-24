class CreateRevenueEvents < ActiveRecord::Migration
  def self.up
    create_table :revenue_events do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :revenue_events
  end
end
