require 'geocoder'

class Facility < ActiveRecord::Base
  acts_as_mappable :default_units   => :miles,
                   :default_formula => :flat,
                   :lat_column_name => :lat,
                   :lng_column_name => :lng

  include Geocoder

  scope :not_geocoded, -> {where(lat: nil).where(lng: nil)}

  def self.add_geocodes
    Facility.not_geocoded.each {|f| f.add_geocode}
  end

  def add_geocode
    begin
      address = "#{street_address} #{street_name} #{city} #{state} #{zip}"
      coords = geocode(address)
      update_attributes(lat: coords[0], lng: coords[1])
    rescue Exception => e
      logger.error("Error geocoding address #{address} for facility #{name} (#{id}): #{e.message}")
    end
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

