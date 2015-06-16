class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
    end

    change_table :sightings do |t|
      t.references :regions
    end
  end
end
