class StationSearch
  def initialize(zip_code)
    @zip_code = zip_code
  end

  def closest_stations(limit = 10)
    format_station_data(NrelService.new(@zip_code).closest_stations(limit))
  end

  def format_station_data(station_data)
    station_data.map do |raw_station|
      Station.new(raw_station)
    end
  end
end
