class Inspection < ActiveRecord::Base
  belongs_to :client
  validates :mail, :front_door, :security_system, :water_main, :water_heater,
  :garage_access_door, :garage_overhead_door, :outdoor_trash, :indoor_trash,
  :breaker_box, :smoke_detectors, :ceiling_fans, :humidistat,
  :thermostat, :cabinets_drawers, :refrigerator, :freezer, :garbage_disposal,
  :dishwasher, :faucets, :toilets, :doors_windows, :ceilings_walls, :screen_doors,
  :pool, :exterior, :pests, :general_cleanliness, :carpet_cleanliness, :window_cleanliness,
  :patio_cleanliness, presence: true
end
