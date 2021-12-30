json.location do
  json.(@location, :id, :name)
  json.recordings @recordings, :id, :temp, :status
end
