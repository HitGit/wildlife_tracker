class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
    t.column :date, :string
    t.column :number, :integer
    t.column :latitude, :string
    t.column :longitude, :string

    end
  end
end


# t.references :species
# t.integer :number
# t.date :number?
# t.float :latitude
# t.float :longitude
#
# t.timestamps