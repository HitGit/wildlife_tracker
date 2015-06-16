class RenameRegionsIdToRegionIdOnSightings < ActiveRecord::Migration
  def change
    rename_column :sightings, :regions_id, :region_id
  end
end
