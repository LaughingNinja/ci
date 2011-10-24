# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111021231421) do

  create_table "ciprojects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "site_addr1"
    t.string   "site_addr2"
    t.string   "site_city"
    t.string   "site_state"
    t.string   "site_country"
    t.string   "ship_addr1"
    t.string   "ship_addr2"
    t.string   "ship_city"
    t.string   "ship_state"
    t.string   "ship_country"
    t.string   "dte_design_present"
    t.string   "dte_schematic_rel"
    t.string   "dte_mock_up"
    t.string   "dte_10dd_rel"
    t.string   "dte_100cd_rel"
    t.string   "dte_ero_rel"
    t.string   "dte_1st_ship"
    t.string   "dte_next_ship"
    t.string   "dte_last_ship"
    t.string   "dte_inst_observ"
    t.string   "dte_ta_start"
    t.string   "dte_program"
    t.string   "dte_om_manual"
    t.string   "dte_warranty_start"
    t.string   "dte_warranty_end"
    t.string   "dte_close_out"
    t.string   "dte_procure_start"
    t.string   "dte_procure_end"
    t.string   "dte_complete"
    t.string   "dte_opening"
    t.text     "comments"
    t.string   "ciproject_id",        :limit => 4, :null => false
    t.string   "site_zip"
    t.string   "ship_zip"
    t.integer  "site_city_id"
    t.integer  "ship_city_id"
    t.integer  "site_province_id"
    t.integer  "ship_province_id"
    t.integer  "site_country_id"
    t.integer  "ship_country_id"
    t.integer  "project_manager_id"
    t.integer  "project_designer_id"
    t.integer  "project_architect_id"
    t.integer  "project_engineer_id"
    t.integer  "bd_manager_id"
    t.integer  "field_tech1_id"
    t.integer  "field_tech2_id"
    t.integer  "programmer1_id"
    t.integer  "programmer2_id"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_revenue_events", :force => true do |t|
    t.integer  "ciproject_id"
    t.integer  "revenue_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provinces", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "revenue_events", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "display_name"
  end

end
