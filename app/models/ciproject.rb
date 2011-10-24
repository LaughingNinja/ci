class Ciproject < ActiveRecord::Base
  attr_accessible :name,:ciproject_id,:site_addr1,:site_addr2,:site_city,:site_state,:site_country,:site_zip,:ship_addr1,:ship_addr2,:ship_city,:ship_state,:ship_country,:ship_zip,:comments,:dte_opening
  attr_accessible :dte_design_present, :dte_schematic_rel, :dte_mock_up, :dte_10dd_rel, :dte_100cd_rel, :dte_ero_rel, :dte_1st_ship, :dte_next_ship, :dte_last_ship, :dte_inst_observ, :dte_ta_start
  attr_accessible :dte_program, :dte_om_manual, :dte_warranty_start, :dte_warranty_end, :dte_close_out, :dte_procure_start, :dte_procure_end, :dte_complete, :dte_opening, :site_country_id, :ship_country_id
  attr_accessible :site_city_id, :ship_city_id, :site_province_id, :ship_province_id, :project_manager_id, :project_designer_id, :project_architect_id, :project_engineer_id, :bd_manager_id, :field_tech1_id
  attr_accessible :field_tech2_id, :programmer1_id, :programmer2_id
  has_many :revenue_events
  has_many :revenue_events, :through => :project_revenue_events
  has_one :city, :foreign_key => "site_city_id"
  has_one :city, :foreign_key => "ship_city_id"
  has_one :country, :foreign_key => "site_country_id"
  has_one :country, :foreign_key => "ship_country_id"
  has_one :province, :foreign_key => "ship_province_id"
  has_one :province, :foreign_key => "site_province_id"
  has_one :user, :foreign_key => "project_manager_id"
  has_one :user, :foreign_key => "project_designer_id"
  has_one :user, :foreign_key => "project_architect_id"
  has_one :user, :foreign_key => "project_engineer_id"
  has_one :user, :foreign_key => "bd_manager_id"
  has_one :user, :foreign_key => "field_tech1_id"
  has_one :user, :foreign_key => "field_tech2_id"
  has_one :user, :foreign_key => "programmer1_id"
  has_one :user, :foreign_key => "programmer2_id"
end
