class HouseFacade 
  def initialize(house)
    @house = house
  end

  def count 
    service.first[:attributes][:members].count
  end

  def members
    service.first[:attributes][:members].map do |member|
      HouseMember.new(member)
    end
  end

  private 

  def service 
    @_service ||= WesterosService.new(@house).parse_house_response
  end
end