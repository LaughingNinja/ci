class ProjectAddFields < ActiveRecord::Migration
  def self.up
    add_column :ciprojects, :project_id, :string, :limit=>4,:null =>false
    add_column :ciprojects, :site_addr1, :string
    add_column :ciprojects, :site_addr2, :string
    add_column :ciprojects, :site_city, :string
    add_column :ciprojects, :site_state, :string
    add_column :ciprojects, :site_country, :string
    add_column :ciprojects, :ship_addr1, :string
    add_column :ciprojects, :ship_addr2, :string
    add_column :ciprojects, :ship_city, :string
    add_column :ciprojects, :ship_state, :string
    add_column :ciprojects, :ship_country, :string
    add_column :ciprojects, :dte_design_present, :date
    add_column :ciprojects, :dte_schematic_rel, :date
    add_column :ciprojects, :dte_mock_up, :date
    add_column :ciprojects, :dte_10dd_rel, :date
    add_column :ciprojects, :dte_100cd_rel, :date
    add_column :ciprojects, :dte_ero_rel, :date
    add_column :ciprojects, :dte_1st_ship, :date
    add_column :ciprojects, :dte_next_ship, :date
    add_column :ciprojects, :dte_last_ship, :date
    add_column :ciprojects, :dte_inst_observ, :date
    add_column :ciprojects, :dte_ta_start, :date
    add_column :ciprojects, :dte_program, :date
    add_column :ciprojects, :dte_om_manual, :date
    add_column :ciprojects, :dte_warranty_start, :date
    add_column :ciprojects, :dte_warranty_end, :date
    add_column :ciprojects, :dte_close_out, :date
    add_column :ciprojects, :dte_procure_start, :date
    add_column :ciprojects, :dte_procure_end, :date
    add_column :ciprojects, :dte_complete, :date
    add_column :ciprojects, :dte_opening, :date
    add_column :ciprojects, :comments, :text
  end

  def self.down
  end
end
