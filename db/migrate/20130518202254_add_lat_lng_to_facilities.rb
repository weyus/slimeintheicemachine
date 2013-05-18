class AddLatLngToFacilities < ActiveRecord::Migration
  def change
    change_table :facilities do |t|
      t.float :lat, :lng
    end
  end
end
