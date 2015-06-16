class ChangeLatitudeAndLongitudeToFloat < ActiveRecord::Migration
  def change
    change_table :sightings do |t|
      t.change :latitude, 'FLOAT USING CAST(latitude AS FLOAT)'
      t.change :longitude, 'FLOAT USING CAST(longitude AS FLOAT)'
    end
  end
end
