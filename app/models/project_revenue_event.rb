class ProjectRevenueEvent < ActiveRecord::Base
  attr_accessible :ciproject_id, :revenue_event_id
  
  belongs_to :ciproject
end
