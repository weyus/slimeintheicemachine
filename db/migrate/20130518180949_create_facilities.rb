class CreateFacilities < ActiveRecord::Migration
  def change
    create_table (:facilities, :id => false) do |t|
      t.integer :id, :options => 'PRIMARY KEY'
      t.string :name
      t.string :street_address
      t.string :street_name
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :permit_type
      t.timestamp :expiration
      t.string :facility_type
      t.string :district
      t.string :risk
      t.string :employees
      t.integer :score
      t.timestamp :inspected_on
      t.string :activity_type
      t.string :inspector_id
      t.string :inspector_name
      t.integer :no_sites
    end
  end
end
