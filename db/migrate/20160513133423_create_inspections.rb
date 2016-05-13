class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.string :mail
      t.string :front_door
      t.string :security_system
      t.string :water_main
      t.string :water_heater
      t.string :garage_access_door
      t.string :garage_overhead_door
      t.string :outdoor_trash
      t.string :indoor_trash
      t.string :breaker_box
      t.string :washer
      t.string :dryer
      t.string :smoke_detectors
      t.string :ceiling_fans
      t.string :humidistat
      t.string :thermostat
      t.string :cabinets_drawers
      t.string :refrigerator
      t.string :freezer
      t.string :garbage_disposal
      t.string :dishwasher
      t.string :faucets
      t.string :toilets
      t.string :doors_windows
      t.string :ceilings_walls
      t.string :screen_doors
      t.string :pool
      t.string :exterior
      t.string :pests
      t.string :general_cleanliness
      t.string :carpet_cleanliness
      t.string :window_cleanliness
      t.string :patio_cleanliness
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
