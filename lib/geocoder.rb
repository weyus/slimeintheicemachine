module Geocoder
  def geocode(address)
    loc = Geokit::Geocoders::GoogleGeocoder3.geocode(address)
    loc.success ? [loc.lat, loc.lng] : [nil, nil]
  end
end