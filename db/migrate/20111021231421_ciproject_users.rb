class CiprojectUsers < ActiveRecord::Migration
  def self.up
    add_column :ciprojects, :project_manager_id, :integer
    add_column :ciprojects, :project_designer_id, :integer
    add_column :ciprojects, :project_architect_id, :integer
    add_column :ciprojects, :project_engineer_id, :integer
    add_column :ciprojects, :bd_manager_id, :integer
    add_column :ciprojects, :field_tech1_id, :integer
    add_column :ciprojects, :field_tech2_id, :integer
    add_column :ciprojects, :programmer1_id, :integer
    add_column :ciprojects, :programmer2_id, :integer
  end

  def self.down
  end
end
