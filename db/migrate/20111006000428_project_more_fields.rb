class ProjectMoreFields < ActiveRecord::Migration
  def self.up
    remove_column :ciprojects, :location
    remove_column :ciprojects, :launch_date
    remove_column :ciprojects, :description
    remove_column :ciprojects, :project_id
    add_column    :ciprojects, :ciproject_id, :string, :limit=>4,:null =>false
    add_column    :ciprojects, :site_zip, :string
    add_column    :ciprojects, :ship_zip, :string
  end

  def self.down
  end
end
