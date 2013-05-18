json.array!(@facilities) do |facility|
  json.extract! facility, 
  json.url facility_url(facility, format: :json)
end