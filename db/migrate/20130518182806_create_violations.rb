class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.integer :facility_id
      t.string :name
      t.string :risk
      t.string :address
      t.string :facility_type
      t.timestamp :inspected_on
      t.string :inspector
      t.string :site_type
      t.string :violation_code
      t.integer :violation_weight
      t.string :violation_comments
      t.timestamp :correct_by_date
      t.integer :score
    end
  end
end
