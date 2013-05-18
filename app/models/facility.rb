class Facility < ActiveRecord::Base
  def self.add_geocodes

  end
end

# == Schema Information
#
# Table name: facilities
#
#  id             :integer          not null, primary key
#  account_id     :integer
#  name           :string(255)
#  street_address :string(255)
#  street_name    :string(255)
#  city           :string(255)
#  state          :string(255)
#  zip            :integer
#  phone          :string(255)
#  permit_type    :string(255)
#  expiration     :datetime
#  facility_type  :string(255)
#  district       :string(255)
#  risk           :string(255)
#  employees      :string(255)
#  score          :integer
#  inspected_on   :datetime
#  activity_type  :string(255)
#  inspector_id   :string(255)
#  inspector_name :string(255)
#  no_sites       :integer
#  lat            :float
#  lng            :float
#

