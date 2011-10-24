class CreateProjectRevenueEvents < ActiveRecord::Migration
  def self.up
    create_table :project_revenue_events do |t|
      t.integer :ciproject_id
      t.integer :revenue_event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project_revenue_events
  end
end
