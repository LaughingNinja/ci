class CiprojectRelations < ActiveRecord::Migration
  def self.up
    add_column :ciprojects, :site_city_id, :integer
    add_column :ciprojects, :ship_city_id, :integer
    add_column :ciprojects, :site_province_id, :integer
    add_column :ciprojects, :ship_province_id, :integer
    add_column :ciprojects, :site_country_id, :integer
    add_column :ciprojects, :ship_country_id, :integer
  end

  def self.down
  end
end
