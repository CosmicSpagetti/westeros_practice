class WesterosService
  def initialize(house)
    @house = house
  end

  def parse_house_response 
    JSON.parse(get_house_response.body, symbolize_names: true)[:data].first[:attributes][:members]
  end


  private

  def get_house_response
    Faraday.get("http://westerosapi.herokuapp.com/api/v1/house/#{@house}") do |req|
      req.params['api_key'] = ENV['SUPER_SECRET_KEY'] 
    end
  end
end